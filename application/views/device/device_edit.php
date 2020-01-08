<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="main_part">
				<br>
				<!-- Code Here.... -->
				<div class="change_passport_body">
					<p class="form_title_center">
						<b>-EDIT DEVICE FORM-</b>
					</p>
					<form name="device_edit_form" method="POST" autocomplete="off" action="<?php echo base_url('DEVICE-UPDATE/'.$get_device->id)?>">
					   <div class="form-group">
					    <label for="circle_name"><b>DEVICE ID:</b></label>
					    <input type="text" class="form-control" name="device_id" id="device_id" value="<?php echo $get_device->device_id ?>" required>
					  </div>					  
					  <div class="form-group">
					    <label for="circle_name"><b>DEVICE IP ADDRESS:</b></label>
					    <input type="text" class="form-control" name="ip_address" id="ip_address" value="<?php echo $get_device->ip_address ?>" required>
					  </div>
					  <div class="form-group">
					  	<label for="bank"><b>BANK:</b></label>
					  	<select class="form-control" name="bank" id="bank">
					  		<option value="1">1</option>
					  		<option value="2">2</option>
					  	</select>
					  </div>
					  <div class="form-group">
					  	<label for="site_type"><b>SITE TYPE:</b></label>
					  	<select class="form-control" name="site_type" id="site_type">
					  		<option value="1">1</option>
					  		<option value="2">2</option>
					  	</select>
					  </div>
					  <div class="form-group">
					    <label for="username"><b>SITE ID:</b></label>
					     <select name="site_id" id="site_id" class="form-control">
					     	<?php foreach ($site_list as $site) {?>
				              <option value="<?php echo $site['site_id']?>">[<?php echo $site['site_id']?>] <?php echo $site['site_name']?></option>
				            <?php }?>
					     </select>
					  </div>
					  <div class="form-group">
					    <label for="node"><b>CELL:</b></label>
					     <input type="text" class="form-control" name="node" id="node" value="<?php echo $get_device->node ?>" required>
					  </div>
					  <div class="form-group">
					    <label for="node_name"><b>CELL NAME:</b></label>
					     <input type="text" class="form-control" name="node_name" id="node_name" value="<?php echo $get_device->node_name ?>" required>
					  </div>
					  <div class="form-group">
					  	<label for="status"><b>STATUS:</b></label>
					  	<select class="form-control" name="status" id="status">
					  		<option value="1">Active</option>
					  		<option value="0">Inactive</option>
					  	</select>
					  </div>
					  <hr>
					  <div class="footer-box">
					  	<button type="reset" class="btn btn-danger">RESET</button>
					  	<button type="submit" id="submit" class="btn btn-info pull-right">UPDATE DEVICE</button>
					  </div>
					</form>
				</div>
				<br>
			</div>
		</div>
	</div>
</section>

<script type="text/javascript">
  document.forms['device_edit_form'].elements['site_id'].value = <?php echo $get_device->site_id; ?>
</script>

<script type="text/javascript">
  document.forms['device_edit_form'].elements['bank'].value = <?php echo $get_device->bank; ?>
</script>

<script type="text/javascript">
  document.forms['device_edit_form'].elements['site_type'].value = <?php echo $get_device->site_type; ?>
</script>

<script type="text/javascript">
  document.forms['device_edit_form'].elements['status'].value = <?php echo $get_device->status; ?>
</script>