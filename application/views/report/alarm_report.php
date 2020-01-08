<?php 
$current_date = date('Y-m-d');
 ?>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="main_part">
				<br>
				<!-- Code Here.... -->
				<div class="change_passport_body">
					<p class="form_title_center">
						<b>-ALARM REPORT FORM-</b>	
					</p>
					<form name="alarmForm" method="POST" autocomplete="off" action="<?php echo base_url('alarm-report-generate')?>" onsubmit="return validateForm()" target="_blank">
					  <div class="form-group">
				          <label for="titleText"><b>SITE NAME</b></label>
				          <select name="site_id" id="site_id" class="form-control">
				          <option value="">Select Site</option>
				          <?php 
				          foreach ($site_list as $row)
				          {
				          ?>
				          <option value="<?php echo $row['site_id'] ?>"><?php echo $row['site_name'] ?></option>
				          <?php
				          }

				           ?>
				          </select>
				       </div>
				       <div class="form-group">
				          <label for="bank"><b>BANK</b></label>
				          <select name="bank" id="bank" class="form-control">
				          <option value="">Select Bank</option>
				          <option value="1">1</option>
				          <option value="2">2</option>
				          </select>
				       </div>					  
					  <div class="form-group">
					    <label for="from_date"><b>FROM DATE:</i></label>
					    <input type="text" class="form-control" name="from_date" id="from_date" value="<?php echo $current_date; ?>">
					  </div>
					  <div class="form-group">
					    <label for="to_date"><b>TO DATE:</b></label>
					    <input type="text" class="form-control" name="to_date" id="to_date" value="<?php echo $current_date; ?>">
					  </div>
					  <hr>
					  <div class="footer-box">
					  	<button type="submit" id="submit" onclick="return validation()" class="btn btn-info">Report</button>
					  </div>
					</form>
				</div>
				<br>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
function validateForm() {
  var site_id = document.forms["alarmForm"]["site_id"].value;
  var bank = document.forms["alarmForm"]["bank"].value;
  var from_date = document.forms["alarmForm"]["from_date"].value;
  var to_date = document.forms["alarmForm"]["to_date"].value;

  if (site_id == "") {
    alert("Site Name must be filled out");
    return false;
  }

  if (bank == "") {
    alert("Bank must be filled out");
    return false;
  }

  if (from_date == "") {
    alert("From Date must be filled out");
    return false;
  }

  if (to_date == "") {
    alert("To Date must be filled out");
    return false;
  }
}
</script>