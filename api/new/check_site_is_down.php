<?php

require_once ('db.php');
date_default_timezone_set('Asia/Dhaka');

$sql = "SELECT * FROM site";
$result = $conn->query($sql);
if ($result->num_rows > 0)
{
    while($row = $result->fetch_assoc())
    {
    	$site_id = $row['site_id'];
    	$site_name = $row['site_name'];
        $updated_time = $row["updated_time"];
        $date = date('Y-m-d H:i:s');
		$from_time = strtotime($updated_time);
		$to_time = strtotime($date);
		$minute = (int)round(abs($to_time - $from_time) / 60,2);

		$sql2 = "SELECT device_id FROM device WHERE `site_id` = '$site_id' ";
		$result2 = $conn->query($sql2);
		$row2 = $result2->fetch_assoc();
		$device_id = $row2['device_id'];

		if($updated_time != NULL) {
		if($minute > 15)
		{
			$sql3 = "INSERT INTO alarm (date_time, device_id, site_id, bank, node, parameter, value, remarks, status, active, inactive_time) VALUES (NOW(), $device_id, $site_id, 404, '404', 'Communication Failure', NULL, 'Site Down', 0, 0, null)";
			$conn->query($sql3);

		}
		else 
		{
			$sql4 = "UPDATE alarm SET active = 1, inactive_time = NOW() WHERE device_id = $device_id AND site_id = $site_id AND parameter='Communication Failure' AND bank = 404 AND node = '404'  ";
			$conn->query($sql4);

		}    
		}    
    }
}



?>