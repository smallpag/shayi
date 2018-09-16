<?php
$n=$_REQUEST["uname"];
require("init.php");
$sql="select * from yw_user where uname='$n'";
$res=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($res);
if($row==null){
	echo "0";
}else{
	echo "1";
}
?>