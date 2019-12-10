<?php
require_once('admin/models/orders.php');


function deleteOrder() {
	$sql = 'update orders set Status = 2 where Id = '.$_GET['oid'];
	mysql_query($sql) or die(mysql_error());
}

deleteOrder();
// print("<pre>".print_r($_GET['org'],true)."</pre>");
if ($_GET['org']=='process') {
	header('location:admin.php?controller=order&action=order_inprocess');
	// print("<pre>".print_r($_GET['oid'],true)."</pre>");
} else if ($_GET['org']=='complete') {
	header('location:admin.php?controller=order&action=order_complete');
}