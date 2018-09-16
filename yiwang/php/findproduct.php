<?php
require_once("init.php");
@$id=$_REQUEST["id"];
$sql="select * from yw_products where id=$id";
$rs=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($rs,1));