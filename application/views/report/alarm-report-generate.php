<!DOCTYPE html>
<html>
<head>
	<link rel="icon" type="image/png" href="<?php echo base_url(); ?>./assets/icon/icon.png"/>
	<title>BEMS Alarm Report</title>
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
	<h3>Alarm Report - <?php echo $site_name; ?></h3>
	<h4><?php echo $from_date; ?> To <?php echo $to_date; ?></h4>
	<div class="border"></div>
<table id="example" class="display nowrap" style="width:100%">
       <thead>
		<tr>
          <th>Serial</th>
          <th>Created Time</th>
          <th>Device ID</th>
          <th>Site ID</th>
          <th>Bank</th>
          <th>Node</th>
          <th>Parameter</th>
          <th>Value</th>
          <th>remarks</th>
          <th>Inactive Time</th>
        </tr>
	</thead>
	<tbody>
		<?php
		$sl = 0;
		foreach($alarm_report as $row)
		{
		$sl = $sl + 1;
		?>
		<tr>
		  <td><?php echo $sl; ?></td>
          <td><?php echo $row['created_time']; ?></td>
          <td><?php echo $row['device_id']; ?></td>
          <td><?php echo $row['site_id']; ?></td>
          <td><?php echo $row['bank']; ?></td>
          <td><?php echo $row['node']; ?></td>
          <td><?php echo $row['parameter']; ?></td>
          <td><?php echo $row['value']; ?></td>
          <td><?php echo $row['remarks']; ?></td>
          <td><?php echo $row['inactive_time']; ?></td>
        </tr>  
		<?php	
		}
		?>	
	</tbody>
    <tfoot>
        <tr>
          <th>Serial</th>
          <th>Created Time</th>
          <th>Device ID</th>
          <th>Site ID</th>
          <th>Bank</th>
          <th>Node</th>
          <th>Parameter</th>
          <th>Value</th>
          <th>remarks</th>
          <th>Inactive Time</th>
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
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],

    } );
} );
</script>