<?php

require '../../../config/class.php';

$db = new dbObj();
$connString = $db->getConstring();
$golonganClass = new Golongan($connString);

$requestData = $_REQUEST;

$columns = array(    
    0 => 'id',    
    1 => 'golongan'
);

$golonganClass->getData($requestData, $columns);
