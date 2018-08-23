<?php
session_start();
include_once '../config/class.php';
$main = new Main();

// if(!isset($_SESSION['audit_user'])){
// 	include 'model/login/index.php';
// }else{
	include 'model/main.php';
// }
?>