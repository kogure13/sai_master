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
        
        $sql = "INSERT INTO master_pengumuman";
        $sql .= " (judul, pengumuman, created_date)";
        $sql .= " VALUES('".addslashes($params['judul'])."', '".addslashes($params['konten'])."', '".$params['date']."')";

        $result = mysqli_query($this->conn, $sql) or die("error to insert data");
        echo 0;
    }

    function updateData($params) {
        
        $sql = "UPDATE master_pengumuman";
        $sql .= " SET judul = '".addslashes($params['judul'])."', pengumuman = '".addslashes($params['konten'])."', modified_date = '".$params['date']."'";
        $sql .= " WHERE id = '" . $_POST['edit_id'] . "'";

        $result = mysqli_query($this->conn, $sql) or die("error to update data");
        echo 0;
    }

    function deleteData($params) {
        
        $sql = "DELETE from master_pengumuman";
        $sql .= " WHERE id = '" . $_POST['id'] . "'";

        $result = mysqli_query($this->conn, $sql) or die("error to delete data");
        echo 'delete';
    }    

}
