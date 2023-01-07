<?php
require_once 'connection.php';

if ($con) {
	$NamaLengkapAK = $_POST['NamaLengkapAK'];
	$NoHPAK = $_POST['NoHPAK'];
	$EmailAK = $_POST['EmailAK'];
	$LokasiPropertiAK = $_POST['LokasiPropertiAK'];
	$HargaPropertiAK = $_POST['HargaPropertiAK'];
	
	$insert = "INSERT INTO asuransikebakaran(NamaLengkapAK, NoHPAK, EmailAK, LokasiPropertiAK, HargaPropertiAK) 
	VALUES('$NamaLengkapAK', '$NoHPAK', '$EmailAK', '$LokasiPropertiAK', '$HargaPropertiAK')";
	
	if ($NamaLengkapAK != "" && $NoHPAK != "" && $EmailAK !="" && $LokasiPropertiAK !="" && $HargaPropertiAK !="") {
		$result = mysqli_query($con, $insert);
		$response = array ();
		
	if ($result) {
		array_push($response, array(
			'status' => 'OK'
		));
	
	} else {
		array_push($response, array(
			'status' => 'FAILED'
		));
	} 
} else {
	array_push($response, array(
		'status' => 'FAILED'
		));
		}
	}
	
echo json_encode(array("server_response" => $response));
mysqli_close($con);
?>