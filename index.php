<?php

//set session
session_start('itjen');

require_once 'config/class.php';
//call main
$main = new Main();
$device = $main->isMobile();


//cek compatible device
if ($device) {
    //is mobile
    header('location: mobile/index.php');
    exit;
} else {
    //is desktop
    include 'model/main.php';
}