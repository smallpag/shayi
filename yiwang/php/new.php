<?php
require_once("init.php");
@$s=$_REQUEST["start"];
if($s==null){
    $s=0;
}
$sql="select * from yw_new limit $s,10";
$res=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($res,1));
