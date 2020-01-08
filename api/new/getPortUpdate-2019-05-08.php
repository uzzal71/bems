<?php
	require_once ('db.php');

    date_default_timezone_set('Asia/Dhaka');

    $device_id = $_GET['device_id'];

	


$sql = "SELECT site_id,bank,site_type FROM device WHERE device_id = '$device_id'";
$result = $conn->query($sql);
if ($result->num_rows){

if ($result->num_rows > 0)
{
    while($row = $result->fetch_assoc()) {
         $site_id=$row["site_id"];
         $site_type=$row["site_type"];
         $bank=$row["bank"];
         
    }

}

//------- start for cell volt------------------//

$sql = "SELECT * FROM datarange WHERE id = '1'";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc()) {
         $cell_volt_max=$row["max"];
         $cell_volt_min=$row["min"];  
         $cell_volt_parameter=$row["parameter"];  
    }
}
//------- end for cell volt--------------------//


//------- start for String volt------------------//

$sql = "SELECT * FROM datarange WHERE id = '2'";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc()) {
         $string_volt_max=$row["max"];
         $string_volt_min=$row["min"];  
         $string_volt_parameter=$row["parameter"];  
    }
}
//------- end for String volt--------------------//


//------- start for Cell Temp------------------//

$sql = "SELECT * FROM datarange WHERE id = '3'";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc()) {
         $cell_temp_max=$row["max"];
         $cell_temp_min=$row["min"];  
         $cell_temp_parameter=$row["parameter"];  
    }
}
//------- end for Cell Temp--------------------//


//------- start for String Temp------------------//

$sql = "SELECT * FROM datarange WHERE id = '4'";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc()) {
         $string_temp_max=$row["max"];
         $string_temp_min=$row["min"];  
         $string_temp_parameter=$row["parameter"];  ;
    }
}

//------- end for String Temp------------------------//


//------- start for String Current1------------------//

$sql = "SELECT * FROM datarange WHERE id = '5'";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc()) {
         $string_current1_max=$row["max"];
         $string_current1_min=$row["min"];  
         $string_current1_parameter=$row["parameter"];  
    }
}

//------- end for String Current1--------------------//


//------- start for String Current2------------------//

$sql = "SELECT * FROM datarange WHERE id = '6'";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc()) {
         $string_current2_max=$row["max"];
         $string_current2_min=$row["min"];  
         $string_current2_parameter=$row["parameter"];  
    }
}

//------- end for String Current2--------------------//

	$date = date("Y-m-d H:i:s");
	$node = explode(";",$_GET['node']);
	//print_r($node[0]);
	$volt = explode(";",$_GET['volt']);
	$temp = explode(";",$_GET['temp']);
	$amp = explode(";",$_GET['amp']);
	$ir = explode(";",$_GET['ir']);
	$no_of_records = $_GET['no_of_records'];
	$count=0;

	if ($site_type==1)
    {
		$str_current_max = $string_current1_max;
		$str_current_min = $string_current1_min;
	}

	if ($site_type==2)
    {
		$str_current_max = $string_current2_max;
		$str_current_min = $string_current2_min;
	}
	
	for($i = 0; $i < $no_of_records; $i++)
	{	
	
    	$sql = "INSERT INTO tbl_data_log (device_id, date_time, site_id, bank, node, volt, temp, amp, ir,status) VALUES('$device_id', '$date', '$site_id', '$bank', '$node[$i]', '$volt[$i]', '$temp[$i]', '$amp[$i]', '$ir[$i]','1')";				
    	$row = $conn->query($sql);
    }

    for($i = 0; $i < $no_of_records-1; $i++)
	{
    	$volt0 = $volt[0];
    	$temp0 = $temp[0];
    	$amp0 = $amp[0];
    	$j=$i+1;

        if(($volt[0] > $string_volt_max || $volt[0] < $string_volt_min) || ($volt[$j] > $cell_volt_max || $volt[$j] < $cell_volt_min) || ($temp[0] > $string_temp_max || $temp[0] < $string_temp_min) || ($temp[$j] > $cell_temp_max || $temp[$j] < $cell_temp_min) || ($amp[$j] > $str_current_max || $amp[$j] < $str_current_min))
        {
            $sql = "INSERT INTO alarm (device_id, site_id, string_volt, volt, string_temp, temp, amp, ir, status) VALUES ('$device_id', '$site_id', '$volt[0]', '$volt[$j]', '$temp[0]','$temp[$j]', '$amp[$j]', '$ir[$j]','0')";
            $row = $conn->query($sql);
        }

        /** start **/
        // working with disconnnected process
        /** end **/		
    }

	   echo '{"result": "success"}';
	
    }

	else
    {
        echo '{"result": "id_error"}';
	}

?>
