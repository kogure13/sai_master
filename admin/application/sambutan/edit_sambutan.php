<?php

include_once '../../../config/class.php';
$db = new dbObj();
$connString = $db->getConstring();
$crudClass = new CRUD($connString);


// if(!isset($_GET['id'])){
//     exit();
// }else{
//     $params = $_GET['id'];
// }
// if ($params > 0) {
    $crudClass->getData();
// } else {
//     mysql_errno();
// }

class CRUD {

    protected $conn;    

    function __construct($connString) {
        $this->conn = $connString;
    }

    function getData() {
        $json_data = [];
        $sql = "SELECT * FROM master_sambutan";

        $result = mysqli_query($this->conn, $sql) or die();
                
        while ($row = mysqli_fetch_assoc($result)) {            
            $json_data = $row;
        }
        echo json_encode($json_data);
    }
}
