<section class="content">


<div class="row main_part">
	<!-- col-md-4 -->
	<div class="col-md-4">
	<div class="user_add_body_form">
		<p class="form_title_center">
			<b>-ADD USER FORM-</b>
		</p>
		<form autocomplete="off">
		  <div class="form-group">
		    <label for="user_id"><b>USER ID:</b></label>
		    <input type="text" class="form-control" name="user_id" id="user_id" placeholder="USER ID" required>
		    <span id="status_response" style="font-size: 12px;float: right;"></span>
		  </div>
		  <div class="form-group">
		    <label for="password"><b>PASSWRD:</b></label>
		    <input type="password" class="form-control" name="password" id="password" placeholder="********" required>
		  </div>
		  <div class="form-group">
		    <label for="email"><b>E-MAIL:</b></label>
		    <input type="email" class="form-control" name="email" id="email" placeholder="E-MAIL" required>
		  </div>
		  <div class="form-group">
		    <label for="phone"><b>PHONE:</b></label>
		    <input type="text" class="form-control" name="phone" id="phone" placeholder="PHONE" required>
		  </div>
		  <div class="form-group">
		    <label for="phone"><b>STATUS:</b></label>
		    <select class="form-control" name="status" id="status" required>
		    	<option value="1">Active</option>
		    	<option value="0">Inactive</option>
		    </select>
		  </div>
		  <hr>
		  <div class="footer-box">
		  	<button type="reset" class="btn btn-danger">RESET</button>
		  	<button type="button" id="save_user" class="btn btn-info pull-right">ADD USER</button>
		  </div>
		</form>
		</div>
	</div>
	<!-- col-md-4 -->
	<div class="col-md-8">
		<div class="user_privilege">
			<p class="form_title_center">
			<b>-ADD USER PRIVILEGES-</b>
			</p>
			<!-- start privileges -->
			<div class="checked_checkbox">
			<ul>
				<li><input type="checkbox" name=""> <label>Select All</label>	
			<?php 
			  $condition = array('parent_id' => 0);
	          $menus = $this->db->get_where('menu', $condition)->result_array();
	          foreach ($menus as $row):
			?>	
			<ul>
				<li><input type="checkbox" class="checkBoxClass" name="check_list[]" value="<?php echo $row['id']; ?>">
					<label><?php echo $row['menu_name']; ?></label>
					<!-- sub menu -->
					<?php 
					  $condition = array('parent_id' => $row['id']);
			          $menus = $this->db->get_where('menu', $condition)->result_array();
			          foreach ($menus as $row):
					?>
					<ul>
						<li><input type="checkbox" class="checkBoxClass" name="check_list[]" value="<?php echo $row['id']; ?>">
							<span><?php echo $row['menu_name']; ?></span>
						</li>
					</ul>
					<?php endforeach; ?>
					<!-- sub menu -->
				</li>
			</ul>
		<?php endforeach; ?>
			</ul>
			</div>
			<!-- end privileges -->
		</div>
	</div>
</div>




</section>

<style type="text/css">
	ul {
		list-style-type: none;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   $("input[type='checkbox']").change(function () {
        $(this).siblings('ul')
            .find("input[type='checkbox']")
            .prop('checked', this.checked);
    });
});	
</script>

<script type="text/javascript">
$("#save_user").click(function()
{
	//alert('ok');return false;
    var user_id = $('#user_id').val();
    var password = $('#password').val();
    var email = $('#email').val();
    var phone = $('#phone').val();
    var status = $('#status').val();

    var user_role = [];
    $(".checkBoxClass:checked").each(function() {
      if($(this).is(":checked")){
        user_role.push($(this).val());
      }
    });

    user_role = user_role.toString();

    //alert(user_role);  return false;      
  
    var response;
    $.ajax({
      async: false,
      type: 'POST',
      url: '<?php echo base_url('USER-SAVE')?>',
      data:{ 
          user_id: user_id,
          password: password,
          email: email,
          phone: phone,
          status: status,
          user_role: user_role
        },
      success: function(result) {
        response = result;
        alert(response);
        //window.location.assign('USER-LIST');
        location.href= "/bems/USER-LIST";
      }
    });
})
</script>