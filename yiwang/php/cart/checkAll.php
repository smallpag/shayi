<?php
require_once("../init.php");
@$uid=$_REQUEST["uid"];
@$checked=$_REQUEST["checked"];
if($uid!=null&&$checked!=null){
    $sql="update yw_shoppingcart set is_check=$checked where uid=$uid";
    mysqli_query($conn,$sql);
}