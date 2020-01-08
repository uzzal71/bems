<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="main_part">
				<!-- Code Here.... -->
				<div class="table_view" style="padding: 10px">
					<!-- <table id="example" class="table table-bordered table-striped" width="100%`"> -->
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
					</table>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
    $('#example').DataTable( {
        "scrollX": true
    } );
} );
</script>
