<?php
require_once("../init.php");
@$uid=$_REQUEST["uid"];
if($uid!=null){
    $sql="delete from yw_shoppingcart where uid=$uid";
    mysqli_query($conn,$sql);
    echo 1;
}