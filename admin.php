<!-- trang giao dien cua admin -->
<?php
session_start();
require_once('lib/model.php');
if(isset($_GET['controller'])) $controller = $_GET['controller'];
else $controller = 'home';
if(isset($_GET['action'])) $action = $_GET['action'];
else $action = 'index';
if(!isset($_SESSION['user'])) {
    $controller = 'home';
    $action = 'login';
}

$file = 'admin/controllers/'.$controller.'/'.$action.'.php';
if (file_exists($file)) {
    require($file);
} else {
    show_404();
}
// print("<pre>".print_r($_SESSION,true)."</pre>");
// die();


