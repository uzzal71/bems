<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="main_part">
				<!-- Code Here.... -->
				<div class="table_view">
				<?php
						$message = $this->session->userdata('message');
						if(isset($message))
						{
						?>
						<div class="alert alert-success alert-dismissible">
  						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						 <strong><?php echo $message;?></strong>
						</div>
						<?php
						$this->session->unset_userdata('message');
						}
						$error = $this->session->userdata('error');
						if(isset($error))
						{
						?>
						<div class="alert alert-warning alert-dismissible">
  						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						 <strong><?php echo $error;?></strong>
						</div>
						<?php
						$this->session->unset_userdata('error');
						} 
						?>	
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
			                  <th>SERIAL</th>
			                  <th>DEVICE ID</th>							  
			                  <th>DEVICE IP</th>  						  
			                  <th>SITE ID</th>                  
			                  <th>BANK</th>                  
			                  <th>SITE TYPE</th>                  
			                  <th>CELL</th>                  
			                  <th>CELL NAME</th>                  
			                  <th>STATUS</th>
			                  <th>ACTION</th>
			                </tr>
						</thead>
						<tbody>
							<?php
							$serial = 0;
							foreach($device_list as $device)
							{
							$serial++;
							?>
							<tr>
								<td><?php echo $serial; ?></td>
								<td><?php echo $device['device_id']?></td>
								<td><?php echo $device['ip_address']?></td>
								<td><?php echo $device['site_id']?></td>
								<td><?php echo $device['bank']?></td>
								<td><?php echo $device['site_type']?></td>
								<td><?php echo $device['node']?></td>
				               <td><?php echo $device['node_name']?></td>
								<td>
								<?php
								if ($device['status'] == 1) {
								 ?>
								 <button class="btn btn-xs btn-success">Active</button>
								 <?php	
								 }
								 else{
								 ?>
								 <button class="btn btn-xs btn-warning">Inactive</button>
								 <?php
								 } 
								 ?>
								</td>
								<td>
									<a href="<?php echo base_url('DEVICE-EDIT/'.$device['id'])?>" class="btn btn-xs btn-success"><span class="glyphicon glyphicon-edit"></span></a>
									<a onclick="return ConfirmDelete()" href="<?php echo base_url('DEVICE-DELETE/'.$device['id'])?>" class="btn btn-xs btn-danger"><span class="glyphicon glyphicon-trash"></span></a>
								</td>
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
