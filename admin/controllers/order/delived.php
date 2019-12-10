<?php
//load model
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
//load view
require('admin/views/order/order_delived.php');