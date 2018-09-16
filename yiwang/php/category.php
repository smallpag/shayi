<?php
@$n=$_REQUEST["num"];
require_once("init.php");
$sql="select * from yw_category_products where type like '%".$n."'";
$res=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($res,1));