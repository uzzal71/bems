<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="main_part">
				<!-- Code Here.... -->
				<div class="table_view" style="padding: 10px">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
			                  <th>Serial</th>
			                  <th>Menu name</th>
			                  <th>Menu url</th>
			                  <th>Status</th>
			                  <th>Action</th>
			                </tr>
						</thead>
						<tbody>
							<?php
							$serial = 0;
							foreach($menu_list as $menu)
							{
							$serial++;
							?>
							<tr>
								<td><?php echo $serial; ?></td>
								<td><?php echo $menu['menu_name']; ?></td>
								<td><?php echo $menu['menu_url']; ?></td>
								<td>
								<?php
								if ($menu['status'] == 1) {
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
									<a href="<?php echo base_url('MENU-EDIT/'.$menu['id'])?>" class="btn btn-xs btn-success"><span class="glyphicon glyphicon-edit"></span></a>
									<a onclick="return ConfirmDelete()" href="<?php echo base_url('MENU-DELETE/'.$menu['id'])?>" class="btn btn-xs btn-danger"><span class="glyphicon glyphicon-trash"></span></a>
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
