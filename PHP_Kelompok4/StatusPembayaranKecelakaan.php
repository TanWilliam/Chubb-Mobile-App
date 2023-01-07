<?php 
 
define('DB_HOST', 'localhost');
define('DB_USER', 'id18014483_kelompok4');
define('DB_PASS', '!2^^)#eI3K4/yDgX');
define('DB_NAME', 'id18014483_kel4mobapp');
 
 //connecting to database and getting the connection object
 $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
  //  $_POST['IDAsuransiKebakaran'] = 'IDAsuransiKebakaran';
    $IDAsuransiKecelakaan = $_POST['IDAsuransiKecelakaan'];
 
    $q=mysqli_query($conn,"SELECT * FROM asuransikecelakaan where IDAsuransiKecelakaan = '$IDAsuransiKecelakaan'");
    $result['data'] = array();

    if(mysqli_num_rows($q)>0){
        $result['data'] = array();
        while($r=mysqli_fetch_array($q)){
            $asuransikecelakaan = array();
            $asuransikecelakaan["IDAsuransiKecelakaan"] = $r["IDAsuransiKecelakaan"];
            $asuransikecelakaan["NamaLengkapKCLKN"] = $r["NamaLengkapKCLKN"];
            $asuransikecelakaan["StatusPembayaran"] = $r["StatusPembayaran"];
            array_push($result['data'], $asuransikecelakaan);
        }
        $result["success"] = 1;
        $result["message"] = "Data berhasil dibaca";
        echo json_encode($result);
    }
    else{
        $result["success"] = 0;
        $result["message"] = "Tidak ada data";
        echo json_encode($result);
    }
    
    echo json_encode(array("server_response" => $result));
?>