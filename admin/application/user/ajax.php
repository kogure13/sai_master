<?php

require '../../../config/class.php';

$db = new dbObj();
$connString = $db->getConstring();
$userClass = new User($connString);

$requestData = $_REQUEST;

$columns = array(    
    0 => 'username',
    1 => 'nama',    
    2 => 'role',
    3 => 'status_pegawai',
    3 => 'status_active',
    4 => 'id'
);

$userClass->getData($requestData, $columns);
