<?php
require_once 'connection.php';

if ($con) {
	$email = $_POST['email'];
	$password = $_POST['password'];
	
	$insert = "INSERT INTO data(email, password) VALUES('$email', '$password')";
	
	if ($email != "" && $password != "") {
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