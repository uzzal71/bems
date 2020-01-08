<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="main_part">
				<br>
				<!-- Code Here.... -->
				<div class="change_passport_body">
					<p class="form_title_center">
						<b>-ADD DEVICE FORM-</b>
					</p>
					<form method="POST" autocomplete="off" action="<?php echo base_url('DEVICE-SAVE')?>">
					  <div class="form-group">
					    <label for="device_id"><b>DEVICE ID:</b></label>
					    <input type="text" class="form-control" name="device_id" id="device_id" placeholder="DEVICE ID" required>
					  </div>					  
					  <div class="form-group">
					    <label for="ip_address"><b>DEVICE IP ADDRESS:</b></label>
					    <input type="text" class="form-control" name="ip_address" id="ip_address" placeholder="DEVICE IP ADDRESS" required>
					  </div>
					  <div class="form-group">
				          <label for="titleText"><b>BANK</b></label>
				          <select name="bank" id="bank" class="form-control">
				          <option value="1">1</option>
				          <option value="2">2</option>
				          </select>
				       </div>
				       <div class="form-group">
				          <label for="titleText"><b>SITE TYPE</b></label>
				          <select name="site_type" id="site_type" class="form-control">
				          <option value="1">Type 1</option>
				          <option value="2">Type 2</option>
				          </select>
				       </div>
			          <div class="form-group">
				          <label for="titleText"><b>SITE ID</b></label>
				          <select name="site_id" id="site_id" class="form-control">
				          <option value="" required>Select Site</option>
				          <?php 
				          foreach ($site_list as $row)
				          {
				          ?>
				          <option value="<?php echo $row['site_id'] ?>"><?php echo $row['site_id'] ?></option>
				          <?php
				          }

				           ?>
				          </select>
				       </div>
					  <div class="form-group">
					  	<label for="status"><b>STATUS:</b></label>
					  	<select class="form-control" name="status" id="status">
					  		<option value="1">Active</option>
					  		<option value="0">Inactive</option>
					  	</select>
					  </div>
					  <div class="form-group">
 						<label>CELL</label>
			        </div>
			        <div class="field_wrapper">
					    <div>
					        <input type="text" name="node[]" value="" placeholder=" Cell ID" style="padding: 4px;width: 192px" />
					        <input type="text" name="node_name[]" value="" placeholder="Cell Name" style="padding: 4px;width: 192px" />
					        <a href="javascript:void(0);" class="add_button" title="Add field"><img src="<?php base_url()?>media/add-icon.png"/></a>
					    </div>
					</div>
					<hr>
					  <div class="footer-box">
					  	<button type="reset" class="btn btn-danger">RESET</button>
					  	<button type="submit" id="submit" class="btn btn-info pull-right">ADD DEVICE</button>
					  </div>
					</form>
				</div>
				<br>
			</div>
		</div>
	</div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    var maxField = 10; //Input fields increment limitation
    var addButton = $('.add_button'); //Add button selector
    var wrapper = $('.field_wrapper'); //Input field wrapper
    var fieldHTML = '<div style="margin-top:10px"><input type="text" name="node_name[]" value="" placeholder="Node Name" style="padding: 4px;width: 192px" />&nbsp;<input type="text" name="node_id[]" value="" placeholder="Node ID" style="padding: 4px;width: 192px" />&nbsp;<a href="javascript:void(0);" class="remove_button"><img src="<?php base_url()?>media/remove-icon.png"/></a></div>'; //New input field html 
    var x = 1; //Initial field counter is 1
    //Once add button is clicked
    $(addButton).click(function(){
        //Check maximum number of input fields
        if(x < maxField){ 
            x++; //Increment field counter
            $(wrapper).append(fieldHTML); //Add field html
        }
    });
    
    //Once remove button is clicked
    $(wrapper).on('click', '.remove_button', function(e){
        e.preventDefault();
        $(this).parent('div').remove(); //Remove field html
        x--; //Decrement field counter
    });
});
</script>

