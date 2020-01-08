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

$sql = "SELECT * FROM data_range WHERE id = '1'";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc()) {
         $cell_volt_max=(double)$row["max"];
         $cell_volt_min=(double)$row["min"];  
         $cell_volt_min2=(double)$row["min2"];  
         $cell_volt_parameter=$row["parameter"];  
    }
}
//------- end for cell volt--------------------//


//------- start for String volt------------------//

$sql = "SELECT * FROM data_range WHERE id = '2'";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc()) {
         $string_volt_max=(double)$row["max"];
         $string_volt_min=(double)$row["min"];  
         $string_volt_min2=(double)$row["min2"];  
         $string_volt_parameter=$row["parameter"];  
    }
}
//------- end for String volt--------------------//


//------- start for Cell Temp------------------//

$sql = "SELECT * FROM data_range WHERE id = '3'";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc()) {
         $cell_temp_max=(double)$row["max"];
         $cell_temp_min=(double)$row["min"];  
         $cell_temp_min2=(double)$row["min2"];  
         $cell_temp_parameter=$row["parameter"];  
    }
}
//------- end for Cell Temp--------------------//


//------- start for String Temp------------------//

$sql = "SELECT * FROM data_range WHERE id = '4'";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc()) {
         $string_temp_max=(double)$row["max"];
         $string_temp_min=(double)$row["min"];  
         $string_temp_min2=(double)$row["min2"];  
         $string_temp_parameter=$row["parameter"];  ;
    }
}

//------- end for String Temp------------------------//


//------- start for String Current1------------------//

$sql = "SELECT * FROM data_range WHERE id = '5'";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc()) {
         $string_current1_max=(double)$row["max"];
         $string_current1_min=(double)$row["min"]; 
         $string_current1_min2=(double)$row["min2"]; 
         $string_current1_parameter=$row["parameter"];  
    }
}

//------- end for String Current1--------------------//


//------- start for String Current2------------------//

$sql = "SELECT * FROM data_range WHERE id = '6'";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc()) {
         $string_current2_max=(double)$row["max"];
         $string_current2_min=(double)$row["min"];  
         $string_current2_min2=(double)$row["min2"];  
         $string_current2_parameter=$row["parameter"];  
    }
}

//------- end for String Current2--------------------//

/** IR Data Range **/

$sql = "SELECT * FROM data_range WHERE id = 8";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc())
    {
         $ir_max = (double)$row["max"];
         $ir_min = (double)$row["min"];
         $ir_min2 = (double)$row["min2"];
    }
}

/** String Discharging Current **/

$sql = "SELECT * FROM data_range WHERE id = 10";
$results = $conn->query($sql);

if ($results->num_rows > 0)
{
    while($row = $results->fetch_assoc())
    {
         $string_discharging_current_max = (double)$row["max"];
         $string_discharging_current_min = (double)$row["min"];
         $string_discharging_current_min2 = (double)$row["min2"];
    }
}

/** IR Data Range **/

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
        $str_current_max = (double)$string_current1_max;
        $str_current_min = (double)$string_current1_min;
        $str_current_min2 = (double)$string_current1_min2;
    }

    if ($site_type==2)
    {
        $str_current_max = (double)$string_current2_max;
        $str_current_min = (double)$string_current2_min;
        $str_current_min2 = (double)$string_current2_min2;
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

        $sql = "INSERT INTO tbl_data_log (device_id, date_time, site_id, bank, node, volt, temp, amp, ir,status) VALUES('$device_id', '$date', '$site_id', '$bank', '$node[$i]', '$volt[$i]', '$temp[$i]', '$amp[$i]', '$ir[$i]','1')";             
        $row = $conn->query($sql);

        /** update data pick up and insert tbl_data_update 
        $sl_sql = "SELECT * FROM tbl_data_update WHERE device_id = $device_id AND site_id = $site_id AND bank = $bank AND node = '$node[$i]' LIMIT 1";
        $sl_result = $conn->query($sl_sql);

       if ($sl_result->num_rows > 0)
        {
             $up_sql = "UPDATE `tbl_data_update` SET date_time = NOW(), volt = $volt[$i], temp = $temp[$i], amp = $amp[$i], ir = $ir[$i] WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$i]' ";
            $up_row = $conn->query($up_sql);
        }
        else
        {
           $sql3 = "INSERT INTO tbl_data_update (date_time, device_id, site_id, bank, node, volt, temp, amp, ir, status) VALUES(NOW(), $device_id, $site_id, $bank, '$node[$i]', $volt[$i], $temp[$i], $amp[$i], $ir[$i], 1)";
            $row3 = $conn->query($sql3);
        }
        **/
        
        /** Circuit Short & Circuit Open Alarm Work processs**/
        if($volt[$i] <= 0.5)
        {
            $volt[$i] = 'NULL';
            $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'Volt', NULL, 'Short Circuit', 0, 0, null)";
            $row = $conn->query($sql);
        }
        else
        {
            $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$i]' AND remarks = 'Short Circuit' AND parameter = 'Volt' ";
            $row = $conn->query($sql);
        }

        /** Open Circuit data process **/
         if($amp[$i] == 0)
        {
            $amp[$i] = 'NULL';
            $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$i]', 'Amp', NULL, 'Open Circuit', 0, 0, null)";
            $row = $conn->query($sql);
        }
        else
        {
            $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$i]' AND remarks = 'Open Circuit' AND parameter = 'Amp' ";
            $row = $conn->query($sql);
        }
    }


    /** Alarm high low **/
    for($i = 0; $i < $no_of_records; $i++)
    {
        $volt0 = (double)$volt[0];
        $temp0 = (double)$temp[0];
        $amp0 = (double)$amp[0];
        $j=$i+1;


        /** start **/
        if($node[$i] == 'B0')
        {
        if(isset($volt[0]) AND ($volt[0] != 'Disconnected'))
        {
            if((double)$volt[0] > $string_volt_max)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[0]', 'String Volt', $volt[0], 'String Volt High', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif((double)$volt[0] <= $string_volt_min && (double)$volt[0] > $string_volt_min2)
            {
              $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[0]', 'String Volt', $volt[0], 'String Volt Low', 0, 0, null)";
            $row = $conn->query($sql);
            }
            elseif((double)$volt[0] < $string_volt_min2)
            {
              $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[0]', 'String Volt', $volt[0], 'String Volt Over Discharge', 0, 0, null)";
            $row = $conn->query($sql);
            }
            else
            {
                 $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[0]' AND  parameter = 'String Volt' ";
                $row = $conn->query($sql);
            }
        }
        }

        if($node[$i] != 'B0')
        {
        if(isset($volt[$j]) AND ($volt[$j] != "Disconnected"))
        {
            if((double)$volt[$j] > $cell_volt_max)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$j]', 'Cell Volt', $volt[$j], 'Cell Volt High', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif((double)$volt[$j] <= $cell_volt_min && (double)$volt[$j] > $cell_volt_min2)
            {
               $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$j]', 'Cell Volt', $volt[$j], 'Cell Volt Low', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif((double)$volt[$j] < $cell_volt_min2)
            {
               $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$j]', 'Cell Volt', $volt[$j], 'Cell Volt Critically Low', 0, 0, null)";
                $row = $conn->query($sql);
            }
            else
            {
                $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$j]' AND  parameter = 'Cell Volt' ";
                $row = $conn->query($sql);
            }
        }
        }

        if($node[$i] == 'B0')
        {
        if(isset($temp[0]) AND ($temp[0] != "Disconnected"))
        {
            if((double)$temp[0] > $string_temp_max)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[0]', 'String Temperature', $temp[0], 'String Temperature High', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif((double)$temp[0] <= $string_temp_min && (double)$temp[0] > $string_temp_min2)
            {
              $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[0]', 'String Temperature', $temp[0], 'String Temperature Low', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif((double)$temp[0] < $string_temp_min2)
            {
              $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[0]', 'String Temperature', $temp[0], 'String Temperature Critically Low', 0, 0, null)";
                $row = $conn->query($sql);
            }
            else
            {
                $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[0]' AND  parameter = 'String Temperature' ";
                $row = $conn->query($sql);
            }
        }
    }

        if($node[$i] != 'B0')
        {
        if(isset($temp[$j]) AND ($temp[$j] != "Disconnected"))
        {
            if((double)$temp[$j] > $cell_temp_max)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$j]', 'Cell Temperature', $temp[$j], 'Cell Temperature High', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif((double)$temp[$j] <= $cell_temp_min && (double)$temp[$j] > $cell_temp_min2)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$j]', 'Cell Temperature', $temp[$j], 'Cell Temperature Low', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif ((double)$temp[$j] < $cell_temp_min2)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$j]', 'Cell Temperature', $temp[$j], 'Cell Temperature Critically Low', 0, 0, null)";
                $row = $conn->query($sql);
            }
            else
            {
                $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$j]' AND  parameter = 'Cell Temperature' ";
                $row = $conn->query($sql);
            }
        }
        }

        if($node[$i] == 'B0')
        {
        if(isset($amp[0]) AND ($amp[0] != "Disconnected"))
        {
            //echo $amp[$j];echo "P";
            if((double)$amp[0] > $str_current_max)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[0]', 'String Current', $amp[0], 'String Charging Current High', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif((double)$amp[0] <= $str_current_min && (double)$amp[0] > $str_current_min2)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[0]', 'String Current', $amp[0], 'String Charging Current Low', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif((double)$amp[0] < $str_current_min2)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[0]', 'String Current', $amp[0], 'String Charging Current Critically Low', 0, 0, null)";
                $row = $conn->query($sql);
            }
            else
            {
                $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[0]' AND  parameter = 'String Current' ";
                $row = $conn->query($sql);
            }
        }
        }

        /** string dischargin **/
        if($node[$i] == 'B0')
        {
            //echo $amp[$j];echo "N";
        if(isset($amp[0]) AND ($amp[0] != "Disconnected"))
        {
            if((double)$amp[0] < 0)
            {
                if((double)$amp[0] < $string_discharging_current_max)
                {
                    $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[0]', 'String Current', $amp[0], 'String Discharging Current High', 0, 0, null)";
                    $row = $conn->query($sql);
                }
                elseif((double)$amp[0] > $string_discharging_current_min && (double)$amp[0] < $string_discharging_current_min2)
                {
                    $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[0]', 'String Current', $amp[0], 'String Discharging Current Low', 0, 0, null)";
                    $row = $conn->query($sql);
                }
                elseif((double)$amp[0] > $string_discharging_current_min2)
                {
                    $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[0]', 'String Current', $amp[0], 'String Discharging Current Critically Low', 0, 0, null)";
                    $row = $conn->query($sql);
                }
                else
                {
                    $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[0]' AND  parameter = 'String Current' ";
                    $row = $conn->query($sql);
                }
            }
        }
    }
        /** string dischargin **/

        /** end **/ 

        /** IR Max and Min Check **/
         if($node[$i] != 'B0')
        {
        if(isset($ir[$j]) AND ($ir[$j] != "Disconnected"))
        {
            if((double)$ir[$j] > $ir_max)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$j]', 'IR', $ir[$j], 'IR Over Limit', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif((double)$ir[$j] <= $ir_min && (double)$ir[$j] > $ir_min2)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$j]', 'IR', $ir[$j], 'IR Low', 0, 0, null)";
                $row = $conn->query($sql);
            }
            elseif((double)$ir[$j] < $ir_min2)
            {
                $sql = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, $bank, '$node[$j]', 'IR', $ir[$j], 'IR Critically', 0, 0, null)";
                $row = $conn->query($sql);
            }
            else
            {
                $sql = "UPDATE `alarm` SET active = 1, inactive_time = NOW() WHERE device_id = '$device_id' AND site_id = '$site_id' AND bank = $bank AND node = '$node[$j]' AND  parameter = 'IR' ";
                $row = $conn->query($sql);
            }
        }   
    }
    }/** for loop end this loop is check data max and min **/

       echo '{"result": "success"}';
    
    }

    else
    {
        echo '{"result": "id_error"}';
    }



?>


