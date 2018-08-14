<?php

require '../../../config/class.php';

$db = new dbObj();
$connString = $db->getConstring();
$karyawanClass = new Karyawan($connString);

$requestData = $_REQUEST;

$columns = array(    
    0 => 'id',    
    1 => 'nip',
    2 => 'nama_karyawan',
    3 => 'jabatan',
    4 => 'golongan',
    5 => 'alamat',
    6 => 'tlp'

);

$karyawanClass->getData($requestData, $columns);
