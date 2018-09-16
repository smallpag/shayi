<?php
require_once("init.php");
$sql="select * from yw_lunbo order by lbsx";
$res=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($res,1));