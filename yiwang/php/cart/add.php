<?php
require_once("../init.php");
@$id=$_REQUEST['id'];
@$uid=$_REQUEST['uid'];
if($id!=null&&$uid!=null){
    $sql="select * from yw_shoppingcart where id=$id and uid=$uid";
    $rs=mysqli_query($conn,$sql);
    $row=mysqli_fetch_row($rs);
    if($row==null){
        $sql="insert into yw_shoppingcart values(null,$uid,$id,0)";
        mysqli_query($conn,$sql);
    }
}