<?php

date_default_timezone_set('Asia/Jakarta');

define("sk_title_name", "Itjen III Kemendikbud");
define("title_name", "Inspektorat III");
define("site_name", "Inspektorat Jenderal III - Kemendikbud");
define("app_name", "Smart Application Information");
define("version", "2.0 RC");
define("side_title", "e-Audit");

$upload_image = "theme/upload/images/";
$upload_file = "theme/upload/files/";

class dbObj {

    var $DB_Host = "localhost"; //koneksi server
    var $DB_Name = "db_itjen_sai"; //nama database
    var $DB_User = "root"; //user database
    var $DB_Pass = ""; //password database
    var $conn;

    function getConstring() {
        $con = mysqli_connect($this->DB_Host, $this->DB_User, $this->DB_Pass, $this->DB_Name) or
                die("Connection failed: " . mysqli_connect_error());

        if (mysqli_connect_errno()) {
            printf("Connect failed: %s\n", mysqli_connect_error());
            exit();
        } else {
            $this->conn = $con;
        }

        return $this->conn;
    }

}

class Main {

    //cek device
    function isMobile() {
        return preg_match("/(android|avantgo|blackberry|bolt|boost|cricket|docomo|fone|hiptop|mini|mobi|palm|phone|pie|tablet|up\.browser|up\.link|webos|wos)/i", $_SERVER["HTTP_USER_AGENT"]);
    }

    //dynamic page
    function getPage() {
        if (!isset($_GET['page'])) {
            include_once 'view/home.php';
        } else {
            $pages = htmlentities($_GET['page']);
            $page_root = "view/" . $pages . ".php";

            if (file_exists($page_root)) {
                include_once $page_root;
            } elseif ($_GET['page'] == "login") {
                header('location: admin/index.php');
                exit();
            } elseif ($_GET['page'] == "logout") {
                $db = new dbObj();
                $connString = $db->getConstring();
                $user = new User($connString);
                $user->logout();
            } else {
                include_once 'view/home.php';
            }
        }
    }

    function getHead() {
        include 'model/header.php';
    }

    function getMenu() {
        include 'model/menu.php';
    }

    function getFooter() {
        include 'model/footer.php';
    }

    function getActScript() {
        if (isset($_GET['page'])) {
            $page = htmlentities($_GET['page']);
            if ($page != logout) {
                $actRoot = "application/" . $page . "/script.js";

                echo '<script src="' . $actRoot . '"></script>';
            }
        }
    }

}

class User {

    protected $conn;
    protected $data = [];

    function __construct($connString) {
        $this->conn = $connString;
    }

    public function getData($req, $col) {
        $this->data = $this->getRecords($req, $col);
        echo json_encode($this->data);
    }

    function getRecords($req, $col) {

        $sqlTot = "SELECT master_user.id, username, nama_karyawan, role_user, status_pegawai, status_aktivasi";
        $sqlTot .= " FROM master_user";
        $sqlTot .= " INNER JOIN master_role ON master_role.id = master_user.id_role_user";
        $sqlTot .= " INNER JOIN master_karyawan ON master_karyawan.id = master_user.id_reff";

        $sql = $sqlTot;

        $qTot = mysqli_query($this->conn, $sqlTot) or die("error fetch data: ");
        $totalData = mysqli_num_rows($qTot);
        $totalFiltered = $totalData;

        if (!empty($req['search']['value'])) {

            $sql .=" WHERE username LIKE '%" . $req['search']['value'] . "%' ";
            $sql .=" OR nama_karyawan LIKE '%" . $req['search']['value'] . "%' ";

            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
            $totalFiltered = mysqli_num_rows($query);

            $sql .=" ORDER BY " . $col[$req['order'][0]['column']] . " " .
                    $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ," . $req['length'] . " ";
            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        } else {

            $sql .=" ORDER BY " . $col[$req['order'][0]['column']] . " 
            " . $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ,
            " . $req['length'] . " ";
            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        }

        while ($row = mysqli_fetch_assoc($query)) {
            $nestedData = [];
            $status_a = ($row['status_active'] == 1) ? 'Active' : 'Inactive';

            $nestedData[] = $row['username'];
            $nestedData[] = ucwords($row['nama_karyawan']);
            $nestedData[] = ucwords($row['role_user']);
            $nestedData[] = ucwords($row['status_pegawai']);
            $nestedData[] = $status_a;
            $nestedData[] = $this->linkAct($row['id']);

            $data[] = $nestedData;
        }

        if ($totalData > 0) {
            $json_data = array(
                "draw" => intval($req['draw']),
                "recordsTotal" => intval($totalData),
                "recordsFiltered" => intval($totalFiltered),
                "data" => $data
            );
        } else {
            $json_data = array(
                "draw" => 0,
                "recordsTotal" => 0,
                "recordsFiltered" => 0,
                "data" => []
            );
        }

        return $json_data;
    }

    public function linkAct($id) {

        return '
        <div class="text-center">
        <a href="#" id="' . $id . '" class="act_btn text-success" data-toggle="tooltip" data-placement="top" data-original-title="Edit" title="Edit">
        <i class="fa fa-pencil fa-fw"></i>                                    
        </a>
        <a href="#" id="' . $id . '" class="act_btn text-danger" data-toggle="tooltip" data-placement="top" data-original-title="Delete" title="Delete">
        <i class="fa fa-trash-o fa-fw"></i>                                    
        </a>
        </div>';
    }

    function logout() {
        session_destroy();
        echo '<meta http-equiv="refresh" content="0;url=index.php" >';
    }

}//end class user

class Jabatan {

    protected $conn;
    protected $data = [];

    function __construct($connString) {
        $this->conn = $connString;
    }

    public function getData($req, $col) {
        $this->data = $this->getRecords($req, $col);
        echo json_encode($this->data);
    }

    function getRecords($req, $col) {

        $sqlTot = "SELECT *";
        $sqlTot .= " FROM master_jabatan";

        $sql = $sqlTot;

        $qTot = mysqli_query($this->conn, $sqlTot) or die("error fetch data: ");
        $totalData = mysqli_num_rows($qTot);
        $totalFiltered = $totalData;

        if (!empty($req['search']['value'])) {

            $sql .=" WHERE jabatan LIKE '%" . $req['search']['value'] . "%' ";

            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
            $totalFiltered = mysqli_num_rows($query);

            $sql .=" ORDER BY " . $col[$req['order'][0]['column']] . " " .
                    $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ," . $req['length'] . " ";
            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        } else {

            $sql .=" ORDER BY " . $col[$req['order'][0]['column']] . " 
            " . $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ,
            " . $req['length'] . " ";
            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        }

        $user = new User($this->conn);

        while ($row = mysqli_fetch_assoc($query)) {
            $nestedData = [];

            $nestedData[] = $user->linkAct($row['id']);
            $nestedData[] = $row['jabatan'];

            $data[] = $nestedData;
        }

        if ($totalData > 0) {
            $json_data = array(
                "draw" => intval($req['draw']),
                "recordsTotal" => intval($totalData),
                "recordsFiltered" => intval($totalFiltered),
                "data" => $data
            );
        } else {
            $json_data = array(
                "draw" => 0,
                "recordsTotal" => 0,
                "recordsFiltered" => 0,
                "data" => []
            );
        }

        return $json_data;
    }

}//end class jabatan

class Golongan {

    protected $conn;
    protected $data = [];

    function __construct($connString) {
        $this->conn = $connString;
    }

    public function getData($req, $col) {
        $this->data = $this->getRecords($req, $col);
        echo json_encode($this->data);
    }

    function getRecords($req, $col) {

        $sqlTot = "SELECT *";
        $sqlTot .= " FROM master_golongan";

        $sql = $sqlTot;

        $qTot = mysqli_query($this->conn, $sqlTot) or die("error fetch data: ");
        $totalData = mysqli_num_rows($qTot);
        $totalFiltered = $totalData;

        if (!empty($req['search']['value'])) {

            $sql .=" WHERE golongan LIKE '%" . $req['search']['value'] . "%' ";

            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
            $totalFiltered = mysqli_num_rows($query);

            $sql .=" ORDER BY " . $col[$req['order'][0]['column']] . " " .
                    $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ," . $req['length'] . " ";
            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        } else {

            $sql .=" ORDER BY " . $col[$req['order'][0]['column']] . " 
            " . $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ,
            " . $req['length'] . " ";
            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        }

        $user = new User($this->conn);

        while ($row = mysqli_fetch_assoc($query)) {
            $nestedData = [];

            $nestedData[] = $user->linkAct($row['id']);
            $nestedData[] = $row['golongan'];

            $data[] = $nestedData;
        }

        if ($totalData > 0) {
            $json_data = array(
                "draw" => intval($req['draw']),
                "recordsTotal" => intval($totalData),
                "recordsFiltered" => intval($totalFiltered),
                "data" => $data
            );
        } else {
            $json_data = array(
                "draw" => 0,
                "recordsTotal" => 0,
                "recordsFiltered" => 0,
                "data" => []
            );
        }

        return $json_data;
    }

}//end class golongan

class Peran {

    protected $conn;
    protected $data = [];

    function __construct($connString) {
        $this->conn = $connString;
    }

    public function getData($req, $col) {
        $this->data = $this->getRecords($req, $col);
        echo json_encode($this->data);
    }

    function getRecords($req, $col) {

        $sqlTot = "SELECT *";
        $sqlTot .= " FROM master_peran";

        $sql = $sqlTot;

        $qTot = mysqli_query($this->conn, $sqlTot) or die("error fetch data: ");
        $totalData = mysqli_num_rows($qTot);
        $totalFiltered = $totalData;

        if (!empty($req['search']['value'])) {

            $sql .=" WHERE peran LIKE '%" . $req['search']['value'] . "%' ";

            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
            $totalFiltered = mysqli_num_rows($query);

            $sql .=" ORDER BY " . $col[$req['order'][0]['column']] . " " .
                    $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ," . $req['length'] . " ";
            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        } else {

            $sql .=" ORDER BY " . $col[$req['order'][0]['column']] . " 
            " . $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ,
            " . $req['length'] . " ";
            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        }

        $user = new User($this->conn);

        while ($row = mysqli_fetch_assoc($query)) {
            $nestedData = [];

            $nestedData[] = $user->linkAct($row['id']);
            $nestedData[] = $row['peran'];

            $data[] = $nestedData;
        }

        if ($totalData > 0) {
            $json_data = array(
                "draw" => intval($req['draw']),
                "recordsTotal" => intval($totalData),
                "recordsFiltered" => intval($totalFiltered),
                "data" => $data
            );
        } else {
            $json_data = array(
                "draw" => 0,
                "recordsTotal" => 0,
                "recordsFiltered" => 0,
                "data" => []
            );
        }

        return $json_data;
    }

}//end class peran

class Karyawan {

    protected $conn;
    protected $data = [];

    function __construct($connString) {
        $this->conn = $connString;
    }

    public function getData($req, $col) {
        $this->data = $this->getRecords($req, $col);
        echo json_encode($this->data);
    }

    function getRecords($req, $col) {

        $sqlTot = "SELECT master_karyawan.id, nip, nama_karyawan, jabatan, golongan, alamat, tlp";
        $sqlTot .= " FROM master_karyawan";
        $sqlTot .= " INNER JOIN master_jabatan ON master_jabatan.id = master_karyawan.id_jabatan";
        $sqlTot .= " INNER JOIN master_golongan ON master_golongan.id = master_karyawan.id_golongan";

        $sql = $sqlTot;

        $qTot = mysqli_query($this->conn, $sqlTot) or die("error fetch data: ");
        $totalData = mysqli_num_rows($qTot);
        $totalFiltered = $totalData;

        if (!empty($req['search']['value'])) {

            $sql .= " WHERE nip = '" . $req['search']['value'] . "'";
            $sql .= " OR nama_karyawan LIKE '%" . $req['search']['value'] . "%'";
            $sql .= " OR jabatan LIKE '%" . $req['search']['value'] . "%'";
            $sql .= " OR golongan LIKE '%" . $req['search']['value'] . "%'";
            $sql .= " OR alamat LIKE '%" . $req['search']['value'] . "%'";
            $sql .= " OR tlp LIKE '%" . $req['search']['value'] . "%'";

            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
            $totalFiltered = mysqli_num_rows($query);

            $sql .= " ORDER BY " . $col[$req['order'][0]['column']] . " " .
                    $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ," . $req['length'] . " ";
            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        } else {

            $sql .=" ORDER BY " . $col[$req['order'][0]['column']] . " 
            " . $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ,
            " . $req['length'] . " ";
            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        }

        $user = new User($this->conn);

        while ($row = mysqli_fetch_assoc($query)) {
            $nestedData = [];

            $nestedData[] = $user->linkAct($row['id']);
            $nestedData[] = $row['nip'];
            $nestedData[] = $row['nama_karyawan'];
            $nestedData[] = $row['jabatan'];
            $nestedData[] = $row['golongan'];
            $nestedData[] = $row['alamat'];
            $nestedData[] = $row['tlp'];

            $data[] = $nestedData;
        }

        if ($totalData > 0) {
            $json_data = array(
                "draw" => intval($req['draw']),
                "recordsTotal" => intval($totalData),
                "recordsFiltered" => intval($totalFiltered),
                "data" => $data
            );
        } else {
            $json_data = array(
                "draw" => 0,
                "recordsTotal" => 0,
                "recordsFiltered" => 0,
                "data" => []
            );
        }

        return $json_data;
    }

}//end class karyawan