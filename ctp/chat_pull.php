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

// Start XML file, create parent node

$dom = new DOMDocument("1.0", "utf-8");
$node = $dom->createElement("posts");
$parnode = $dom->appendChild($node);

// Opens a connection to a MySQL server

$connection=mysql_connect ($hostname, $username, $password);
if (!$connection) {  die('Not connected : ' . mysql_error());}

// Set the active MySQL database

$db_selected = mysql_select_db($database, $connection);
if (!$db_selected) {
	die ('Can\'t use db : ' . mysql_error());
}

// Select all the rows in the markers and chat table
$query = "SELECT * FROM chat WHERE chat.m_id = '$m_id'";

$result = mysql_query($query);
if (!$result) {
	die('Invalid query: ' . mysql_error());
}

header("Content-type: text/xml");

// Iterate through the rows, adding XML nodes for each

while ($row = @mysql_fetch_assoc($result)){
	// Add to XML document node
	$node = $dom->createElement("post");
	$newnode = $parnode->appendChild($node);
	$newnode->setAttribute("m_id",$row['m_id']);
	$newnode->setAttribute("text", $row['text']);
	$newnode->setAttribute("c_ts", $row['c_ts']);
	$newnode->setAttribute("label", $row['label']);
}

echo $dom->saveXML();

?>