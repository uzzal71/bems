<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="main_part">
				<br>
				<!-- Code Here.... -->
				<div class="change_passport_body">
					<p class="form_title_center">
						<b>-ADD DATA RANGE FORM-</b>
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
						<div class="alert alert-danger alert-dismissible">
  						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>>
						 <strong><?php echo $error;?></strong>
						</div>
						<?php
						$this->session->unset_userdata('error');
						} 
						?>
					</p>
					<form method="POST" autocomplete="off" action="<?php echo base_url('DATA-RANGE-SAVE');?>">
					  <div class="form-group">
			              <label for="titleText"><b>PARAMETER NAME:</b></label>
			         	<input type="text" class="form-control" placeholder="Parameter Name" name="parameter" required>
			            </div> 

			            <div class="form-group">
			              <label for="titleText"><b>MAXIMUM:</b></label>
			            <input type="text" class="form-control" placeholder="Maximum Range" name="max" required>
			           </div> 

			           <div class="form-group">
			              <label for="titleText"><b>MINIMUM:</b></label>
			            <input type="text" class="form-control" placeholder="Minimum Range" name="min" required>
			           </div>

			           <div class="form-group">
			              <label for="titleText"><b>MINIMUM TWO:</b></label>
			            <input type="text" class="form-control" placeholder="Minimum Range" name="min2" required>
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
					  	<button type="submit" id="submit" class="btn btn-info pull-right">ADD DATA RANGE</button>
					  </div>
					</form>
				</div>
				<br>
			</div>
		</div>
	</div>
</section>