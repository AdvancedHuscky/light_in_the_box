<?php
header("Content-Type:application/json");
require_once("../init.php");
$sql = "SELECT * FROM light_index_flash_sales order by page";
$result = mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));