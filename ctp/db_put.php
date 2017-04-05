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
	
	$sql = "INSERT INTO `markers` (`lat`,`lng`,`ts`) VALUES ($lat, $lng, $ts)";
	
	if ($conn->query($sql) === TRUE) {
		//echo "New record created successfully";
		} else {
		//echo "Error: " . $sql . "<br>" . $conn->error;
	}
	
	// Print auto-generated id
	$m_id = mysqli_insert_id($conn); 
	
	echo $m_id;
	//close the connection
	$conn->close();
?>
