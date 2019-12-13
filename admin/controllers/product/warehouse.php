<?php
//load model
require_once('admin/models/products.php');
if (isset($_POST['pid'])) {
	foreach ($_POST['pid'] as $pid) {
		$pid = intval($pid);
		products_delete($pid);
	}
}

// tinh toan lay ra danh sach san pham va so luong dang yeu cau

$data = getWareHouse();

$title = 'Sản phẩm trong kho';
$user = $_SESSION['user'];
//load view
require('admin/views/product/warehouse.php');
