<!DOCTYPE html>
<html>
<head>
	<link rel="icon" type="image/png" href="<?php echo base_url(); ?>./assets/icon/icon.png"/>
	<title>BEMS Data Report</title>
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="<?php echo base_url()?>assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/datatables/jquery.dataTables.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/datatables/buttons.dataTables.min.css">
	<style type="text/css">
		.report_table h2{margin-top: 0;text-align: center;}
		.report_table h3{margin-top: -10px;text-align: center;}
		.report_table h4{margin-top: 0;text-align: center;}
		.report_table .border{
		 width: 100%;
	    height: 2px;
	    background: #b51a09;
	    margin-top: 5px;
	    margin-bottom: 8px;
	}
	</style>
</head>
<body>
<section>
	<div class="container report_table">
	<h2>Battery Element Monitoring System</h2>
	<h3>Data Report - <?php echo $site_name; ?></h3>
	<h4><?php echo $from_date; ?> To <?php echo $to_date; ?></h4>
	<div class="border"></div>
<table id="example" class="display nowrap" style="width:100%">
       <thead>
		<tr>
          <th>Serial</th>
          <th>Device ID</th>
          <th>Date time</th>
          <th>Bank</th>
          <th>Cell</th>
          <th>String Volt</th>
          <th>Cell Volt</th>
          <th>String Amb Temp</th>
          <th>Cell Temp</th>
          <th>String Charging Current</th>
          <th>String Discharging Current</th>
          <th>Cell IR</th>
        </tr>
	</thead>
	<tbody>
		<?php
			$sl = 1;
	        $query = $this->db->query("SELECT * FROM `tbl_data_log` WHERE `site_id`='$site_id' AND `bank`=$bank  AND cast(`date_time` as date) BETWEEN '$from_date' AND '$to_date' order by date_time desc ");
	        $result = $query->result_array();
	        $string_volt = 0;
	        $string_temp = 0;
	        foreach ($result as $report):
	          if($report['node'] == 'B0'){
	                    $string_volt =  $report['volt'];                       
	                  } 
	                
	             if($report['node'] == 'B0'){
	                    $string_temp =  $report['temp'];
	                   
	                  }?>
	        <?php
	        if($report['node'] == 'B0') {
	        ?>
	        <tr>  
	          	 <td><?php echo $sl++; ?></td>
	              <td><?php echo $report['device_id']?></td>
	              <td><?php echo $report['date_time']?></td>
	              <td><?php echo $report['bank']?></td>
	              <td><?php echo $report['node']?></td>
	              <td><?php echo $string_volt;?></td>
	              <td><?php echo $report['volt']?></td>
	              <td><?php echo $string_temp;?></td>
	              <td><?php echo $report['temp']?></td>
	              <td><?php if($report['amp'] >= 0){echo $report['amp'];}else{echo "";}?></td>
	              <td><?php if($report['amp'] < 0){echo $report['amp'];}else{echo "";}?></td>
	              <td><?php echo $report['ir']?></td>              
	             </tr>
	        <?php	
	        }
	        else{ ?>

	          <tr>  
	          	 <td><?php echo $sl++; ?></td>
	              <td><?php echo $report['device_id']?></td>
	              <td><?php echo $report['date_time']?></td>
	              <td><?php echo $report['bank']?></td>
	              <td><?php echo $report['node']?></td>
	              <td><?php echo $string_volt;?></td>
	              <td><?php echo $report['volt']?></td>
	              <td><?php echo $string_temp;?></td>
	              <td><?php echo $report['temp']?></td>
	              <td><?php if($report['amp'] >= 0){echo $report['amp'];}else{echo "";}?></td>
	              <td><?php if($report['amp'] < 0){echo $report['amp'];}else{echo "";}?></td>
	              <td><?php echo $report['ir']?></td>              
	             </tr>
	       <?php }
	         ?>              
	          <?php endforeach;?>
	</tbody>
    <tfoot>
        <tr>
          <th>Serial</th>
          <th>Device ID</th>
          <th>Date time</th>
          <th>Bank</th>
          <th>Cell</th>
          <th>String Volt</th>
          <th>Cell Volt</th>
          <th>String Amb Temp</th>
          <th>Cell Temp</th>
          <th>String Charging Current</th>
          <th>String Discharging Current</th>
          <th>Cell IR</th>
        </tr>
    </tfoot>
</table>


	</div>
</section>	
</body>
</html>







<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url()?>assets/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="<?php echo base_url()?>assets/datatables/jquery-3.3.1.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>assets/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>assets/datatables/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>assets/datatables/buttons.flash.min.js"></script>
<script type="text/javascript" src=<?php echo base_url()?>assets/datatables/jszip.min.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>assets/datatables/pdfmake.min.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>assets/datatables/vfs_fonts.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>assets/datatables/buttons.html5.min.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>assets/datatables/buttons.print.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
    $('#example').DataTable( {
    	"scrollX": true,
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
} );
</script>