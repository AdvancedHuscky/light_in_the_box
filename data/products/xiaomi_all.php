<?php
$conn = mysqli_connect('127.0.0.1',"root","","lightinthebox",3306);
$sql = 'SET NAMES UTF8';
mysqli_query($conn,$sql);
header("Content-Type:application/json");
$sql = " SELECT tid,pid,title,price,salescount,favorite,img FROM light_xiaomi_acessories union ";
$sql .= " SELECT tid,pid,title,price,salescount,favorite,img FROM light_xiaomi_cameras union ";
$sql .= " SELECT tid,pid,title,price,salescount,favorite,img FROM light_xiaomi_cellphones union ";
$sql .= " SELECT tid,pid,title,price,salescount,favorite,img FROM light_xiaomi_laptop union ";
$sql .= " SELECT tid,pid,title,price,salescount,favorite,img FROM light_xiaomi_smartDevices";
$result = mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));