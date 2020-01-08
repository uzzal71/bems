<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="main_part">
				<br>
				<!-- Code Here.... -->
				<div class="change_passport_body">
					<p class="form_title_center">
						<b>-ADD SITE FORM-</b>	
					</p>
					<form method="POST" autocomplete="off" action="<?php echo base_url('SITE-SAVE')?>">
					  <div class="form-group">
					    <label for="circle_name"><b>SITE ID:</b></label>
					    <input type="text" class="form-control" name="site_id" id="site_id" placeholder="SITE ID" required>
					  </div>					  
					  <div class="form-group">
					    <label for="circle_name"><b>SITE NAME:</b></label>
					    <input type="text" class="form-control" name="site_name" id="site_name" placeholder="SITE NAME" required>
					  </div>
					  <div class="form-group">
					    <label for="circle_name"><b>PHONE ONE:</b></label>
					    <input type="text" class="form-control" name="phone1" id="phone1" placeholder="PHONE ONE" required>
					  </div>
					  <div class="form-group">
					    <label for="circle_name"><b>PHONE TWO:</b></label>
					    <input type="text" class="form-control" name="phone2" id="phone2" placeholder="PHONE TWO" required>
					  </div>
					  <div class="form-group">
					    <label for="circle_name"><b>E-MAIL ONE:</b></label>
					    <input type="text" class="form-control" name="email1" id="email1" placeholder="E-MAIL ONE" required>
					  </div>
					  <div class="form-group">
					    <label for="circle_name"><b>E-MAIL TWO:</b></label>
					    <input type="text" class="form-control" name="email2" id="email2" placeholder="E-MAIL TWO" required>
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
					  	<button type="submit" id="submit" class="btn btn-info pull-right">ADD SITE</button>
					  </div>
					</form>
				</div>
				<br>
			</div>
		</div>
	</div>
</section>

<script>

function get_region()
{
   var circle_id = $('#circle_id').val();
  if(circle_id != '')
  {
   $.ajax({
    url:"<?php echo base_url('site/fetch_region'); ?>",
    method:"POST",
    data:{circle_id:circle_id},
    success:function(data)
    {
     
     $('#region_id').html(data);     
    }
   });
  }
  else
  {
   $('#region_id').html('<option value="">Select Region</option>');
  
  }
}

</script>