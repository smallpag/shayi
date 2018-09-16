<?php
require_once("../00init.php");
@$u=$_REQUEST["uid"];
if($u!=null){
$sql="select * from yw_shoppingcart inner join yw_products on yw_products.id=yw_shoppingcart.id where uid=$u order by cid desc";
$rs=mysqli_query($conn,$sql);
$all=mysqli_fetch_all($rs,1);
echo json_encode($all);
}