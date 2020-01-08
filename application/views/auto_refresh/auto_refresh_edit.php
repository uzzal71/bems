<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="main_part">
				<br>
				<!-- Code Here.... -->
				<div class="change_passport_body">
					<p class="form_title_center">
						<b>-Auto Refresh Edit Form-</b>
					</p>
					<form name="auto_edit_form" method="POST" autocomplete="off" action="<?php echo base_url('auto-refresh-update/'.$auto_refresh_data->id);?>">
					  <div class="form-group">
			              <label for="titleText"><b>Set Time</b></label>
			         	<input type="text" class="form-control" value="<?php echo $auto_refresh_data->set_time; ?>" name="set_time" required>
			            </div> 
					   <div class="form-group">
					  	<label for="status"><b>Status:</b></label>
					  	<select class="form-control" name="status" id="status">
					  		<option value="1">Active</option>
					  		<option value="0">Inactive</option>
					  	</select>
					  </div>
					  <hr>
					  <div class="footer-box">
					  	<button type="reset" class="btn btn-danger">Reset</button>
					  	<button type="submit" id="submit" class="btn btn-info pull-right">Update</button>
					  </div>
					</form>
				</div>
				<br>
			</div>
		</div>
	</div>
</section>

<script type="text/javascript">
  document.forms['auto_edit_form'].elements['status'].value = <?php echo $auto_refresh_data->status; ?>
</script>