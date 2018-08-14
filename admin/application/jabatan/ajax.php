<?php

require '../../../config/class.php';

$db = new dbObj();
$connString = $db->getConstring();
$jabatanClass = new Jabatan($connString);

$requestData = $_REQUEST;

$columns = array(    
    0 => 'id',    
    1 => 'jabatan'
);

$jabatanClass->getData($requestData, $columns);
