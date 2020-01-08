<?php

$servername = "localhost";
$dbname = "bems";
$username = "root";
$password = "";

$conn = new mysqli($servername, $username, $password, $dbname); 
if ($conn -> connect_error) {
 	die("error" . $conn -> connect_error);
 } 

else{

	
}


?>