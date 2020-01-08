<?php 
$data = $edit_user->user_role;
$data =  explode(",", $data);

$main_menu = array();
$sub_menu = array();
// parent menu and sub menu id separate
foreach($data as $d):
	$condition = array('id' => $d);
	$query = $this->db->get_where('menu',$condition);
	if ($query->num_rows()>0)
	{
    	if($query->row()->parent_id == 0):
    		array_push($main_menu, $query->row()->id);
    	else:
    		array_push($sub_menu, $query->row()->id);
    	endif;
	}
endforeach;
 ?>
<section class="content">
	<div class="row main_part">
		<div class="col-md-4">
			<div class="user_add_body_form">
				<p class="form_title_center">
					<b>-EDIT USER FORM-</b>
				</p>
				<form name="user_edit_form" autocomplete="off">
				  <div class="form-group">
				    <label for="user_id"><b>USER ID:</b></label>
				    <input type="text" class="form-control" name="user_id" id="user_id" value="<?php echo $edit_user->name; ?>" required>
				    <span id="status_response" style="font-size: 12px;float: right;"></span>
				  </div>
				  <input type="hidden" name="id" id="id" value="<?php echo $edit_user->id; ?>">
				  <!--
				  <div class="form-group">
				    <label for="password"><b>PASSWRD:</b></label>
				    <input type="password" class="form-control" name="password" id="password" value="<?php echo $edit_user->password; ?>" required>
				  </div>-->
				  <div class="form-group">
				    <label for="email"><b>E-MAIL:</b></label>
				    <input type="email" class="form-control" name="email" id="email" value="<?php echo $edit_user->email; ?>" required>
				  </div>
				  <div class="form-group">
				    <label for="phone"><b>PHONE:</b></label>
				    <input type="text" class="form-control" name="phone" id="phone" value="<?php echo $edit_user->phone; ?>" required>
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
				  	<button type="button" id="save_user" class="btn btn-info pull-right">UPDATE USER</button>
				  </div>
				</form>
			</div>
		</div>
		<!-- user privileges -->
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
				<li><input type="checkbox" class="checkBoxClass" name="check_list[]" value="<?php echo $row['id']; ?>" <?php if(in_array($row['id'], $main_menu)){ echo "checked";} ?> />
					<label><?php echo $row['menu_name']; ?></label>
					<!-- sub menu -->
					<?php 
					  $condition = array('parent_id' => $row['id']);
			          $menus = $this->db->get_where('menu', $condition)->result_array();
			          foreach ($menus as $row):
					?>
					<ul>
						<li><input type="checkbox" class="checkBoxClass" name="check_list[]" value="<?php echo $row['id']; ?>" <?php if(in_array($row['id'], $sub_menu)){ echo "checked";} ?> />
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
		<!-- user privileges -->
	</div>


</section>

<script type="text/javascript">
  document.forms['user_edit_form'].elements['status'].value = <?php echo $edit_user->status; ?>
</script>

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
    var id = $('#id').val();
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
      url: '<?php echo base_url('USER-UPDATE')?>',
      data:{ 
          id: id,
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
        //window.location('USER-LIST');
        location.href= "/bems/USER-LIST";
      }
    });
})
</script>