<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="main_part">
				<!-- Code Here.... -->
				<div class="table_view" style="padding: 10px">
					<table id="example" class="table table-bordered table-striped" width="100%`">
						<thead>
							<tr>
			                  <th>Serial</th>
			                  <th>Device ID</th>
			                  <th>Date time</th>
			                  <th>Site ID</th>
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