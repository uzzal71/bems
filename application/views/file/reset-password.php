<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="main_part">
				<br>
				<!-- Code Here.... -->
				<div class="change_passport_body">
					<p class="form_title_center">
						<b>-Password Reset Form-</b>
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
					</p>
					<form autocomplete="off" action="admin/change_passwrod" method="post">
					  <div class="form-group">
					    <label for="username"><b>Username:</b></label>
					    <input type="text" class="form-control" name="username" id="username" value="<?php echo $this->session->userdata('username'); ?>" readonly />
					  </div>
					  <div class="form-group">
					    <label for="password"><b>Password:</b></label>
					    <input type="password" class="form-control" name="password" id="password" required/>
					  </div>
					  <div class="form-group">
					    <label for="confirm_password"><b>Confirm Password:</b></label>
					    <input type="password" class="form-control" name="confirm_password" id="confirm_password" required/>
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

