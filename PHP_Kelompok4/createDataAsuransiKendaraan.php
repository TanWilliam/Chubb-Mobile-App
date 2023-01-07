<?php
require_once 'connection.php';

if ($con) {
	$NamaLengkapKND = $_POST['NamaLengkapKND'];
	$NoHPKND = $_POST['NoHPKND'];
	$EmailKND = $_POST['EmailKND'];
	$TipeMobilKND = $_POST['TipeMobilKND'];
	$TahunKendaraanKND = $_POST['TahunKendaraanKND'];
	
	$insert = "INSERT INTO asuransikendaraan(NamaLengkapKND, NoHPKND, EmailKND, TipeMobilKND, TahunKendaraanKND) 
	VALUES('$NamaLengkapKND', '$NoHPKND', '$EmailKND', '$TipeMobilKND', '$TahunKendaraanKND')";
	
	if ($NamaLengkapKND != "" && $NoHPKND != "" && $EmailKND !="" && $TipeMobilKND !="" && $TahunKendaraanKND !="") {
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