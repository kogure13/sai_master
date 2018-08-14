<?php

require '../../../config/class.php';

$db = new dbObj();
$connString = $db->getConstring();
$peranClass = new Peran($connString);

$requestData = $_REQUEST;

$columns = array(    
    0 => 'id',    
    1 => 'peran'
);

$peranClass->getData($requestData, $columns);
