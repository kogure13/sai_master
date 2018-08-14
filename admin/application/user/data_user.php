<?php

include_once '../../../config/class.php';
$db = new dbObj();
$connString = $db->getConstring();

$params = $_REQUEST;
$tb_name = "master_user";

$action = isset($params['action']) != '' ? $params['action'] : '';
$crudClass = new CRUD($connString);

switch ($action) {
    case 'add' : $crudClass->insertData($params, $tb_name); break;
    case 'edit' : $crudClass->updateData($params, $tb_name); break;
    case 'delete' : $crudClass->deleteData($params, $tb_name); break;
    default : break;
}

class CRUD {

    protected $conn;

    function __construct($connString) {
        $this->conn = $connString;
    }
    
    function insertData($params, $tb_name) {
            
        $sql = "INSERT INTO ".$tb_name;
        $sql .= " (username, password, status_pegawai, status, aktivasi, id_role_user)";
        $sql .= " VALUES('".addslashes($params['fname'])."', "
                . "'".addslashes($params['username']). "', '" .addslashes($params['password']). "', "
                . "'".$params['role']."', '".$params['keterangan']."', '".$params['status']."', "
                . "'".$params['division']."')";

        echo $result = mysqli_query($this->conn, $sql) or die("error to insert data");
    }

    function updateData($params) {
        
        $sql = "UPDATE pengguna";
        $sql .= " SET nama_user = '".addslashes($params['fname'])."', "
                . " username ='".addslashes($params['username'])."', "
                . " password = '".addslashes($params['password'])."', "
                . " role = '".$params['role']."', keterangan = '".$params['keterangan']."', "
                . " status = '".$params['status']."', id_divisi = '".$params['division']."'";
        $sql .= " WHERE id = '".$_POST['edit_id']."'";

        echo $result = mysqli_query($this->conn, $sql) or die("error to update data");
    }

    function deleteData($params) {
        
        $sql = "DELETE from pengguna";
        $sql .= " WHERE id = '".$params['id']."'";

        echo $result = mysqli_query($this->conn, $sql) or die("error to delete data");
    }

}
