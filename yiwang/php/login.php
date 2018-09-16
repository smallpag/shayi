<?php
$n=$_REQUEST["uname"];
$p=$_REQUEST["upwd"];
require("init.php");
$output=[];
$sql="select * from yw_user where uname='$n' and upwd='$p'";
$res=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($res);
if($row==null){
	echo "0";
}else{
	$sql="select uid from yw_user where uname='$n' and upwd='$p'";
	$rs=mysqli_query($conn,$sql);
	$uid=mysqli_fetch_all($rs,1);
	echo $uid[0]["uid"];
}
?>