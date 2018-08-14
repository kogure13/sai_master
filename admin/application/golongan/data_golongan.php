<?php

include_once '../../../config/class.php';

$db = new dbObj();
$connString = $db->getConstring();

$params = $_REQUEST;

$action = isset($params['action']) != '' ? $params['action'] : '';
$crudClass = new CRUD($connString);

switch ($action) {
    case 'add' : $crudClass->insertData($params); break;
    case 'edit' : $crudClass->updateData($params); break;
    case 'delete' : $crudClass->deleteData($params); break;
    default : break;        
}

class CRUD {

    protected $conn;    

    function __construct($connString) {
        $this->conn = $connString;
    }
    
    function insertData($params) {
        
        $numData = $this->cekData($params);

        if($numData > 0) {
            echo 1;
        }else{
            $sql = "INSERT INTO master_golongan";
            $sql .= " (golongan)";
            $sql .= " VALUES('".addslashes($params['golongan'])."')";

            $result = mysqli_query($this->conn, $sql) or die("error to insert data");
            echo 0;
        }                
    }

    function updateData($params) {

        $numData = $this->cekData($params);

        if($numData > 1) {
            echo 1;
        }else{
            $sql = "UPDATE master_golongan";
            $sql .= " SET golongan = '".addslashes($params['golongan'])."'";
            $sql .= " WHERE id = '" . $_POST['edit_id'] . "'";

            $result = mysqli_query($this->conn, $sql) or die("error to update data");
            echo 0;
        }                
    }

    function deleteData($params) {
        
        $sql = "DELETE from master_golongan";
        $sql .= " WHERE id = '" . $_POST['id'] . "'";

        $result = mysqli_query($this->conn, $sql) or die("error to delete data");
        echo 'delete';
    }

    function cekData($params) {
        
        $sql = "SELECT * FROM master_golongan";
        $sql .= " WHERE golongan LIKE '%".$params['golongan']."%'";        
        $query = mysqli_query($this->conn, $sql) or die('error to cek data');
        $numData = intval($query->num_rows);

        return $numData;
    }

}
