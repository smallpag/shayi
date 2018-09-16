<?php
$n=$_REQUEST["uname"];
if($n==""){die(0);}
$p=$_REQUEST["upwd"];
require("init.php");
header("Content-Type:application/json;charset=utf-8");
$sql="insert into yw_user(uname,upwd) values('$n','$p');";
$res=mysqli_query($conn,$sql);
if($res==true){
	$sql="select * from yw_user where uname=$n";
	$rs=mysqli_query($conn,$sql);
	$res=mysqli_fetch_all($rs,1);
	$output=["can"=>1,"data"=>$res[0]["uid"]];
	echo json_encode($output);
}