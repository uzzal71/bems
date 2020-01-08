<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="main_part">
				<br>
				<!-- Code Here.... -->
				<div class="change_passport_body">
					<p class="form_title_center">
						<b>-EDIT MENU FORM-</b>
					</p>
					<form name="menu_edit_form" autocomplete="off">
					  <div class="form-group">
					    <label for="menu_name"><b>MENU NAME:</b></label>
					    <input type="text" class="form-control" name="menu_name" id="menu_name" value="<?php echo $specific_menu->menu_name; ?>" required>
					    <span id="status_response" style="font-size: 12px;float: right;"></span>
					  </div>
					  <input type="hidden" name="id" id="id" value="<?php echo $specific_menu->id; ?>">
					   <div class="form-group">
					  	<label for="parent_id"><b>PARENT:</b></label>
					  	<select class="form-control" name="parent_id" id="parent_id">
					  		<option value="0">Self Parent</option>
					  		<?php 
							foreach($all_parent as $menu):
							?>	
							<option value="<?php echo $menu['id']; ?>"><?php echo $menu['menu_name']; ?></option>
							<?php		
							endforeach;
							?>
					  	</select>
					  </div>
					  <div class="form-group">
					    <label for="menu_url"><b>MENU URL:</b></label>
					    <input type="text" class="form-control" name="menu_url" id="menu_url" value="<?php echo $specific_menu->menu_url; ?>" required>
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
					  	<button type="button" id="save_menu" class="btn btn-info pull-right">UPDATE</button>
					  </div>
					</form>
				</div>
				<br>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
  document.forms['menu_edit_form'].elements['parent_id'].value = <?php echo $specific_menu->parent_id; ?>
</script>
<script type="text/javascript">
  document.forms['menu_edit_form'].elements['status'].value = <?php echo $specific_menu->status; ?>
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$("#save_menu").click(function()
{
	//alert('ok');return false;
    var id = $('#id').val();
    var menu_name = $('#menu_name').val();
    var parent_id = $('#parent_id').val();
    var menu_url = $('#menu_url').val();
    var status = $('#status').val();
     
  
    var response;
    $.ajax({
      async: false,
      type: 'POST',
      url: '<?php echo base_url('MENU-UPDATE');?>',
      data:{ 
          id: id,
          menu_name: menu_name,
          parent_id: parent_id,
          menu_url: menu_url,
          status: status
        },
      success: function(result) {
        response = result;
        alert(response);
        location.href= "/bems/MENU-LIST";
      }
    });
})
</script>