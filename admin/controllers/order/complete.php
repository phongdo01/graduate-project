<?php
//if form submit 

if (!empty($_POST)) {
	echo "come into this";
	die();
    $order = array(
        'Id' => intval($_POST['oid']),
        'Status' => 1
    );
    save('orders', $order);
    // updateQuantityProduct();
}
if (!empty($_GET)) {
	$sqlUpdate = 'update orders set Status = 1, accepter = '.$_SESSION['user']['Id'];
    $sqlUpdate = $sqlUpdate.' ,ProcessingTime = now()';
    $sqlUpdate = $sqlUpdate.' where Id = '.$_GET['orderid'];
	// print("<pre>".print_r($sqlUpdate,true)."</pre>");die();
	mysql_query($sqlUpdate) or die(mysql_error());
}
header('location:admin.php?controller=order&action=order_inprocess');