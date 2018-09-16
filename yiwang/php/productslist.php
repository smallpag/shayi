<?php
require_once("00init.php");
@$kw=$_REQUEST["kw"];
@$art=$_REQUEST["art"];
$sql="select * from yw_products";
if($kw!=null){
    $sql .= " where title like '%$kw%'";
}
if($art!=null){
    $sql .= " where artist like '%$art%'";
}
$rs=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($rs,1));
