<?php

require_once ('db.php');

date_default_timezone_set('Asia/Dhaka');

$device_id = $_GET['device_id'];
$device_id = rtrim($_GET['device_id'], ';');

$sql = "SELECT site_id,bank,site_type FROM device WHERE device_id = '$device_id'";
$result = $conn->query($sql);
if ($result->num_rows){

if ($result->num_rows > 0)
{
    while($row = $result->fetch_assoc())
    {
         $site_id=$row["site_id"];
         $site_type=$row["site_type"];
         $bank=$row["bank"];
         
    }

}

/** Update time for site tables **/
$sql_update = "UPDATE site SET updated_time = NOW() WHERE site_id = $site_id ";
$conn->query($sql_update);


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
        /** Data Disconnected Process **/
        if($volt[$i] == "Disconnected")
        {
            $volt[$i] = 'NULL';
            $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'Volt', NULL, 'Disconnected', 0, 0, null)";
            $row = $conn->query($sql);
        }
        else
        {
            $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$i]' AND remarks = 'Disconnected' AND parameter = 'Volt' ";
            $row = $conn->query($sql);
        }  

        if($temp[$i] == "Disconnected")
        {
            $temp[$i] = 'NULL';
            $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'Temperature', NULL, 'Disconnected', 0, 0, null)";
            $row = $conn->query($sql);
        }
        else
        {
            $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$i]' AND remarks = 'Disconnected' AND parameter = 'Temperature' ";
            $row = $conn->query($sql);
        }   

        if($amp[$i] == "Disconnected")
        {
            $amp[$i] = 'NULL';
            $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'Amp', NULL, 'Disconnected', 0, 0, null)";
            $row = $conn->query($sql);
        }
        else
        {
            $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$i]' AND remarks = 'Disconnected' AND parameter = 'Amp' ";
            $row = $conn->query($sql);
        }

        if($ir[$i] == "Disconnected")
        {
            $ir[$i] = 'NULL';
            $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'IR', NULL, 'Disconnected', 0, 0, null)";
            $row = $conn->query($sql);
        }
        else
        {
            $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$i]' AND remarks = 'Disconnected' AND parameter = 'IR' ";
            $row = $conn->query($sql);
        }	
	   /** Data Disconnected Process **/

    	$sql2 = "INSERT INTO tbl_data_log (date_time, device_id, site_id, bank, node, volt, temp, amp, ir, status) VALUES(NOW(), $device_id, $site_id, $bank, '$node[$i]', $volt[$i], $temp[$i], $amp[$i], $ir[$i], 1)";
    	$row2 = $conn->query($sql2);
    }


    for($i = 0; $i < $no_of_records; $i++)
	{
    	$volt0 = $volt[0];
    	$temp0 = $temp[0];
    	$amp0 = $amp[0];
    	$j=$i+1;

        /** start **/
        if(isset($volt[0]) AND ($volt[0] != 'Disconnected'))
        {
            if($volt[0] > $string_volt_max)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'String Volt', $volt[0], 'String Volt Maximum', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif ($volt[0] < $string_volt_min)
            {
              $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'String Volt', $volt[0], 'String Volt Minimum', 0, 0, null)";
            $row = $conn->query($sql);
            }
            else
            {
                 $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$i]' AND  parameter = 'String Volt' ";
                $row = $conn->query($sql);
            }
        }

        if(isset($volt[$j]) AND ($volt[$j] != "Disconnected"))
        {
            if($volt[$j] > $cell_volt_max)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'Cell Volt', $volt[$j], 'Cell Volt Maximum', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif ($volt[$j] < $cell_volt_min)
            {
               $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'Cell Volt', $volt[$j], 'Cell Volt Minimum', 0, 0, null)";
                $row = $conn->query($sql);
            }
            else
            {
                $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$i]' AND  parameter = 'Cell Volt' ";
                $row = $conn->query($sql);
            }
        }

        if(isset($temp[0]) AND ($temp[0] != "Disconnected"))
        {
            if($temp[0] > $string_temp_max)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'String Temperature', $temp[0], 'String Temperature Maximum', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif ($temp[0] < $string_temp_min)
            {
              $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'String Temperature', $temp[0], 'String Temperature Minimum', 0, 0, null)";
                $row = $conn->query($sql);
            }
            else
            {
                $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$i]' AND  parameter = 'String Temperature' ";
                $row = $conn->query($sql);
            }
        }

        if(isset($temp[$j]) AND ($temp[$j] != "Disconnected"))
        {
            if($temp[$j] > $cell_temp_max)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'Cell Temperature', $temp[$j], 'Cell Temperature Maximum', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif ($temp[$j] < $cell_temp_min)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'Cell Temperature', $temp[$j], 'Cell Temperature Minimum', 0, 0, null)";
                $row = $conn->query($sql);
            }
            else
            {
                $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$i]' AND  parameter = 'Cell Temperature' ";
                $row = $conn->query($sql);
            }
        }

        if(isset($amp[$j]) AND ($amp[$j] != "Disconnected"))
        {
            if($amp[$j] > $str_current_max)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'String Current', $amp[$j], 'String Current Maximum', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif ($amp[$j] < $str_current_min)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'String Current', $amp[$j], 'String Current Minimum', 0, 0, null)";
                $row = $conn->query($sql);
            }
            else
            {
                $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$i]' AND  parameter = 'String Current' ";
                $row = $conn->query($sql);
            }
        }
        /** end **/		
    }

	   echo '{"result": "success"}';
	
    }

	else
    {
        echo '{"result": "id_error"}';
	}



?>


