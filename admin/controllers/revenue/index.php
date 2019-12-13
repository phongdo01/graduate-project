<?php
//load model
require_once('admin/models/counters.php');
if ($_SESSION['user']['RoleId']==1) {
	// $options = array(
	// 	'where'=>'Status=3',
	// 	'order_by' => 'ProcessingTime DESC'
	// );
	$query = "select o.*, u.Name from orders o inner join user u on o.accepter = u.Id order by o.ProcessingTime DESC";
} else {
	// $options = array(
	// 	'where' => 'Status=3',
	// 	'order_by'=> 'ProcessingTime DESC',
	// 	'accepter'=> $_SESSION['user']['RoleId']
	// );
	$query = "select o.*, u.Name from orders o inner join user u on o.accepter = u.Id where o.accepter = ".$_SESSION['user']['Id']." order by o.ProcessingTime DESC ";
}

$datas = array();
$results = mysql_query($query) or die(mysql_error());
if (mysql_num_rows($results) > 0) {
	while ($row = mysql_fetch_assoc($results)) {
		$datas[] = $row;
	}
	mysql_free_result($results);
}
// $orders = get_all('orders', $options);


$title = 'Thống kê doanh thu';
$user = $_SESSION['user'];
// print("<pre>".print_r($_SESSION,true)."</pre>");die();
//load view
require('admin/views/revenue/index.php');
// print("<pre>".print_r($_GET,true)."</pre>");