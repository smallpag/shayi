<?php
require_once("../init.php");
@$cid=$_REQUEST["cid"];
@$checked=$_REQUEST["checked"];
if($cid!=null&&$checked!==null){
    $sql="update yw_shoppingcart set is_check=$checked where cid=$cid";
    mysqli_query($conn,$sql);
}