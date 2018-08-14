<?php
require_once '../../../config/class.php';
$db = new dbObj();
$connString = $db->getConstring();

$params = $_REQUEST;

$optionClass = new Option($connString);
$optionClass->getOption($params);

class Option {
    
    protected $conn;    
            
    function __construct($connString) {
        $this->conn = $connString;
    }
    
    function getOption($params) {
        $json_data = [];
        $sql = "SELECT * FROM master_role";
        $sql .= " WHERE id <> 1";
        $result = mysqli_query($this->conn, $sql);
        
        while ($row = mysqli_fetch_assoc($result)){
            $json_data[] = $row;
        }                
        
        echo json_encode($json_data);
    }
}