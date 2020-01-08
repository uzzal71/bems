<?php
//include('db.php');
//require_once ('db.php');
//header ('content-type:: application/json');
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
$method= $_SERVER['REQUEST_METHOD'];
//include APPPATH.'api/new/'.'db.php';



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
include "db.php";



$device_id = $_GET['device_id'];

$sql = "SELECT site_id,bank,site_type FROM device WHERE device_id = '$device_id'";
$result = $conn->query($sql);
if ($result->num_rows){

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
         $site_id=$row["site_id"];
         $site_type=$row["site_type"];
         $bank=$row["bank"];
         
    }

}


	// For start VLL Data........

$sql = "SELECT * FROM data_range WHERE id = '1'";

$results = $conn->query($sql);

//print_r($sql);

if ($results->num_rows > 0) {
    // output data of each row
    while($row = $results->fetch_assoc()) {

         $cell_volt_max=$row["max"];
         $cell_volt_min=$row["min"];  
         $cell_volt_min2=$row["min2"];  
         //$vll_parametr=$row["min_range"];  

       //print_r($vll_max_range);

    }

}
	// For start VLn Data........

$sql = "SELECT * FROM data_range WHERE id = '2'";

$results = $conn->query($sql);

//print_r($sql);

if ($results->num_rows > 0) {
    // output data of each row
    while($row = $results->fetch_assoc()) {

         $string_volt_max=$row["max"];
         $string_volt_min=$row["min"];  
         $string_volt_min2=$row["min2"];  

       //print_r($vll_max_range);

    }

}

	// For start Generator phase current Data........

$sql = "SELECT * FROM data_range WHERE id = '3'";

$results = $conn->query($sql);

//print_r($sql);

if ($results->num_rows > 0) {
    // output data of each row
    while($row = $results->fetch_assoc()) {

         $cell_temp_max=$row["max"];
         $cell_temp_min=$row["min"];  

       //print_r($vll_max_range);

    }

}	


// For start Generator power per phase Data........

$sql = "SELECT * FROM data_range WHERE id = '4'";

$results = $conn->query($sql);

//print_r($sql);

if ($results->num_rows > 0) {
    // output data of each row
    while($row = $results->fetch_assoc()) {

         $string_temp_max=$row["max"];
         $string_temp_min=$row["min"];  

       //print_r($vll_max_range);

    }

}


// For start Total power Data........

$sql = "SELECT * FROM data_range WHERE id = '5'";

$results = $conn->query($sql);

//print_r($sql);

if ($results->num_rows > 0) {
    // output data of each row
    while($row = $results->fetch_assoc()) {

         $string_current1_max=$row["max"];
         $string_current1_min=$row["min"];  
       //print_r($vll_max_range);
    }

}

// For start Frequency Data........

$sql = "SELECT * FROM data_range WHERE id = '6'";

$results = $conn->query($sql);

//print_r($sql);

if ($results->num_rows > 0) {
    // output data of each row
    while($row = $results->fetch_assoc()) {

         $string_current2_max=$row["max"];
         $string_current2_min=$row["min"]; 

       //print_r($vll_max_range);
    }

}

$sql = "SELECT * FROM data_range WHERE id = '7'";

$results = $conn->query($sql);

//print_r($sql);

if ($results->num_rows > 0) {
    // output data of each row
    while($row = $results->fetch_assoc()) {

         $time_interval=$row["max"];
       

       //print_r($vll_max_range);
    }

}

if ($site_type==1) {
		$str_current_max = $string_current1_max;
		$str_current_min = $string_current1_min;

	}
	if ($site_type==2) {
		$str_current_max = $string_current2_max;
		$str_current_min = $string_current2_min;
	}



	if (mysqli_query($conn,$sql)){

     echo "{".'"'."node_volt_max".'":'.'"'.$cell_volt_max.'"'.','.'"'."node_volt_min".'":'.'"'.$cell_volt_min.'"'.','.'"'."main_volt_max".'":'.'"'.$string_volt_max.'"'.','.'"'."main_volt_min".'":'.'"'.$string_volt_min.'"'.','.'"'."node_temp_max".'":'.'"'.$cell_temp_max.'"'.','.'"'."node_temp_min".'":'.'"'.$cell_temp_min.'"'.','.'"'."main_temp_max".'":'.'"'.$string_temp_max.'"'.','.'"'."main_temp_min".'":'.'"'.$string_temp_min.'"'.','.'"'."main_amp_max".'":'.'"'.$str_current_max.'"'.','.'"'."main_amp_min".'":'.'"'.$str_current_min.'"'.','
     .'"'."site_type".'":'.'"'.$site_type.'"'.','.'"'."time_interval".'":'.'"'.$time_interval.'"'."}";

	}


	else {

		 echo '{"result": "sql error"}';
	}


}



else {
    echo '{"result": "id_error"}';
	}


	}




function handlePostOperation($data)

{
	include "db.php";
	$device_id = $data['device_id'];
	$date = $data['date'];
	$site_id = $data['site_id'];
	$bank = $data['bank'];
	$node = $data['node'];
	$volt = $data['volt'];
	$temp = $data['temp'];
	$amp = $data['amp'];
	$ir = $data['ir'];


	$sql = "INSERT INTO tbl_data_log(device_id, date_time, site_id, bank, node, volt, temp, amp, ir) VALUES('$device_id', '$date', '$site_id', '$bank', '$node', '$volt', '$temp', '$amp', '$ir')";

	if (mysqli_query($conn,$sql)){

     echo '{"result": "success"}';

	}

	else {

		 echo '{"result": "sql error"}';
	}



}



?>