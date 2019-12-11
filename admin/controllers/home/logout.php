<?php
if ($_SESSION['user']['RoleId'] == 2) {
	$sqlUpdateIsLogin = "update user set isLogin = 0 where RoleId = 2";
	mysql_query($sqlUpdateIsLogin) or die(mysql_error());
}
unset($_SESSION['user']);
header('location:admin.php');
