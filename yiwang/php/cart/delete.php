<?php
require_once('../init.php');
@$cid=$_REQUEST['cid'];
if($cid!=null){
    $sql="delete from yw_shoppingcart where cid=$cid";
    mysqli_query($conn,$sql);
}