<?php	
// to deal with large files set the following:
// 1) in file C:\Ampps\apache\php.ini upload_max_filesize = 4G (default 2M)
// 2) in file C:\Ampps\apache\php.ini post_max_size = 0 (default 8M)
@date_default_timezone_set("GMT"); 

//uni
$hostname="mysql5";
$username="fet14039097";
$password="123321";
$database=$username;
$uploads_dir = '/uploaded_videos'; //this folder should be created in the root folder of the project

//home
$hostname_home="localhost";
$username_home="root";
$password_home="mysql";
$database_home="ctp";
$uploads_dir_home = 'uploaded_videos'; //this folder should be created, in case the path is longer it should be created similar to this 'c:\\Users\\Anna\\Downloads\\uploaded_videos'

$fileName = $_FILES['fileToUpload']['name'];
$uploadedFile  = $_FILES['fileToUpload']['tmp_name'];
$fileSize = $_FILES['fileToUpload']['size'];
$m_id =  $_POST['marker_id'];

//set label of the video file to "video"
$label = "video"; 

// make file name in lower case
 $fileName = strtolower($fileName);

// replace spaces 
$fileName=str_replace(' ','_',$fileName);

 //current timestamp
$date = new DateTime();
$v_ts = $date->getTimestamp();
 //echo $v_ts;
 
// Create connection programmatically selecting UNI or HOME server catching error exceptions
mysqli_report(MYSQLI_REPORT_ALL);// Traps all mysqli error 
//error_reporting(E_ERROR | E_PARSE); //supress warning messages - in this case warning about mysqli connection errors
try {
     $conn = new mysqli($hostname, $username, $password, $database);
} catch (mysqli_sql_exception $e ) {
    $conn = new mysqli($hostname_home, $username_home, $password_home, $database_home);
	$uploads_dir = $uploads_dir_home;
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
}


//make new record to mySQL database 
$sql = "INSERT INTO `chat` (`text`, `c_ts`, `label`, `m_id`) VALUES ('$fileName', '$v_ts', '$label', '$m_id')";

//save uploaded file to disk, see Example #1 Uploading multiple files http://php.net/manual/en/function.move-uploaded-file.php

// basename() may prevent filesystem traversal attacks;
$name = basename($fileName);
move_uploaded_file($uploadedFile, "$uploads_dir/$name"); //save uploaded file to disk 


if ($conn->query($sql) === TRUE) {
	echo "New record created successfully, file: " . $fileName ;
	} else {
	echo "Error: " . $sql . "<br>" . $conn->error;
}

//close the connection
$conn->close();


//http://www.php-mysql-tutorial.com/wikis/mysql-tutorials/uploading-files-to-mysql-database.aspx
//http://www.codingcage.com/2014/12/file-upload-and-view-with-php-and-mysql.html

?>




