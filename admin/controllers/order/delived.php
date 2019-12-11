
<?php
/*
require_once('admin/models/orders.php');

$options = array(
    'where' => 'Status = 3',
    'order_by' => 'Id DESC'
);
$order_complete  = get_all('orders', $options);

$title = 'Đơn hàng đã giao';
$user = $_SESSION['user'];
$status = array(
    0 => 'Chưa xử lý',
    1 => 'Đã xử lý',
    2 => 'Đã từ chối',
    3 => 'Đã giao hàng'
);
require('admin/views/order/order_delived.php');
*/




if (!empty($_GET)) {
	$sqlUpdate = 'update orders set Status = 3, accepter = '.$_SESSION['user']['Id'];
	$sqlUpdate = $sqlUpdate.', ProcessingTime = now()';
	$sqlUpdate = $sqlUpdate.' where Id = '.$_GET['orderid'];
	// print("<pre>".print_r($sqlUpdate,true)."</pre>");die();
	mysql_query($sqlUpdate) or die(mysql_error());
	// cap nhat so luong trong bang product
	$options = array(
		'where' => 'OrderId = '.$_GET['orderid']
	);
	$results = get_all('order_detail', $options);
	foreach ($results as $result) {
		$sqlUpdateQuantity = 'update product set quantity = quantity - '.$result['Quantity'];
		$sqlUpdateQuantity = $sqlUpdateQuantity.', sold = sold + '.$result['Quantity'];
		$sqlUpdateQuantity = $sqlUpdateQuantity.' where Id = '.$result['ProductId'];
		// print("<pre>".print_r($sqlUpdateQuantity,true)."</pre>");	
		mysql_query($sqlUpdateQuantity) or die(mysql_error());
	}
	// print("<pre>".print_r($results,true)."</pre>");die();
}
header('location:admin.php?controller=order&action=order_complete');
?>

