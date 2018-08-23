<?php

include_once '../../config/class.php';
$db = new dbObj();
$connString = $db->getConstring();

//
$params = $_REQUEST;
$optionClass = new Option($connString);
$optionClass->getOption($params);

class Option {
    var $conn;
    var $data = [];
    
    function __construct($connString) {
        $this->conn = $connString;
    }
    
    function getOption($params) {
        
        $sql = "SELECT * FROM master_carousel";
        $result = mysqli_query($this->conn, $sql);
        
        while ($row = mysqli_fetch_assoc($result)){
            $data[] = $row;
        }                
        
        echo json_encode($data);
    }
}
?>