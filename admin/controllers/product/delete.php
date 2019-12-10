<?php
//load model
require_once('admin/models/products.php');
$pid = intval($_GET['pid']);
products_delete($pid);
$org = $_GET["org"];
header('location:admin.php?controller=product&action='.$org);