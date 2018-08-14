<?php
session_start('audit_user');

require '../config/class.php';
$main = new Main();

// if(!isset($_SESSION['audit_user'])){
// 	include 'model/login/index.php';
// }else{
	include 'model/main.php';
// }
?>