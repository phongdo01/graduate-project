<?php
$pid = intval($_GET['id']);
// print("<pre>".print_r($_GET['id'],true)."</pre>");die();
cart_add($pid);
echo $pid;
header('location:http://localhost:8080/ShopOnline/cart');
/*
header( "refresh:5;url=cart" );
echo 'You\'ll be redirected in about 5 secs. If not, click <a href="cart">here</a>.';*/
