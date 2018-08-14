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
            $sql = "INSERT INTO master_karyawan";
            $sql .= " (nip, nama_karyawan, id_jabatan, id_golongan, alamat, 
                    tlp, id_peran)";
            $sql .= " VALUES('".$params['nip']."', '".addslashes($params['nama'])."', '".$params['jabatan']."', '".$params['golongan']."', '".addslashes($params['alamat'])."', '".$params['tlp']."', '".$params['peran']."')";

            $result = mysqli_query($this->conn, $sql) or die("error to insert data");
            echo 0;
        }                
    }

    function updateData($params) {

        $numData = $this->cekData($params);

        if($numData > 1) {
            echo 1;
        }else{
            $sql = "UPDATE master_karyawan";
            $sql .= " SET nip = '".$params['nip']."', nama_karyawan = '".addslashes($params['nama'])."', id_jabatan = '".$params['jabatan']."', id_golongan = '".$params['golongan']."', alamat = '".addslashes($params['alamat'])."', tlp = '".$params['tlp']."', id_peran = '".$params['peran']."'";
            $sql .= " WHERE id = '" . $_POST['edit_id'] . "'";

            $result = mysqli_query($this->conn, $sql) or die("error to update data");
            echo 0;
        }                
    }

    function deleteData($params) {
        
        $sql = "DELETE from master_karyawan";
        $sql .= " WHERE id = '" . $_POST['id'] . "'";

        $result = mysqli_query($this->conn, $sql) or die("error to delete data");
        echo 'delete';
    }

    function cekData($params) {
        
        $sql = "SELECT * FROM master_karyawan";
        $sql .= " WHERE nip = '".$params['nip']."' ";
        $query = mysqli_query($this->conn, $sql) or die('error to cek data');
        $numData = intval($query->num_rows);

        return $numData;
    }

}
