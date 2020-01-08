<?php
	require_once ('db.php');

//header ('content-type:: application/json');
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
$method= $_SERVER['REQUEST_METHOD'];

switch ($method) {


	case 'GET':
		//echo '{"result": "get received"}';

	handlegetoperation();
		break;


	case 'POST':
		$data = json_decode(file_get_contents('php://input'),true);

		handlePostOperation($data);
		break;


	case 'PUT':
		# code...
		break;


	case 'DELETE':
		# code...
		break;
	
	default:
		# code...
		break;
}



function handlegetoperation(){


//$device_id = $_GET['device_id'];
//require_once ('db.php');

$servername = "localhost";
$username = "root";
$password = "toor";
$dbname = "bvms";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

echo "{";

$sql = "SELECT distinct device_id,ip_address FROM device";
$result = $conn->query($sql);
$cnt= $result->num_rows;  
$n1=0;
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc())

     {
    	$n1++; 
         $device_id=$row["device_id"];
         $ip_address=$row["ip_address"];


echo "\"";


         echo $device_id;
echo "\":";


echo "\"";   
         echo $ip_address;
echo "\"";

 if($cnt > $n1){
	        	echo ","; 
	        }
        }

}


echo "}"; 

}



?>