<?php	
	extract($_REQUEST);
	//uni
	/* $server="mysql5";
		$username="fet14039097";
		$password="123321";
	$database=$username; */
	
	$hostname="localhost";
	$username="root";
	$password="mysql";
	$database="ctp";
	
	// Create connection
	$conn = new mysqli($hostname, $username, $password, $database);
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	} 
	
	//set label of the post to "post"
	$label = "post"; 
	
	$sql = "INSERT INTO `chat` (`text`,`c_ts`, `m_id`, `label`) VALUES ($text, $c_ts, $m_id, '$label')";
	
	if ($conn->query($sql) === TRUE) {
		echo "New record created successfully";
		} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}
	
	//close the connection
	$conn->close();
?>
