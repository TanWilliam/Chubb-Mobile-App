<?php
require_once 'connection.php';

if ($con) {
	$NamaLengkapKCLKN = $_POST['NamaLengkapKCLKN'];
	$NoHPKCLKN = $_POST['NoHPKCLKN'];
	$EmailKCLKN = $_POST['EmailKCLKN'];
	$TanggalLahirKCLKN = $_POST['TanggalLahirKCLKN'];
		
	$insert = "INSERT INTO asuransikecelakaan(NamaLengkapKCLKN, NoHPKCLKN, EmailKCLKN, TanggalLahirKCLKN) 
	VALUES('$NamaLengkapKCLKN', '$NoHPKCLKN', '$EmailKCLKN', '$TanggalLahirKCLKN')";
	
	if ($NamaLengkapKCLKN != "" && $NoHPKCLKN != "" && $EmailKCLKN !="" && $TanggalLahirKCLKN !="") {
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