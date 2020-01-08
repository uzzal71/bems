<?php
 $cell_volt_max   = (double)$get_cell_volt->max;
 $cell_volt_min   = (double)$get_cell_volt->min;
 $cell_volt_min2   = (double)$get_cell_volt->min2;
 $string_volt_max = (double)$get_string_volt->max;
 $string_volt_min = (double)$get_string_volt->min;
 $string_volt_min2 = (double)$get_string_volt->min2;
 $cell_temp_max   = (double)$get_cell_temp->max;
 $cell_temp_min   = (double)$get_cell_temp->min;
 $cell_temp_min2   = (double)$get_cell_temp->min2;
 $string_temp_max = (double)$get_string_temp->max;
 $string_temp_min = (double)$get_string_temp->min;
 $string_temp_min2 = (double)$get_string_temp->min2;
 $get_string_current1_max = (double)$get_string_current1->max;
 $get_string_current1_min = (double)$get_string_current1->min;
 $get_string_current1_min2 = (double)$get_string_current1->min2;
 $get_string_current2_max = (double)$get_string_current2->max;
 $get_string_current2_min = (double)$get_string_current2->min;
 $get_string_current2_min2 = (double)$get_string_current2->min2;
 $get_string_discharcurrent_max = (double)$get_string_discharcurrent->max;
 $get_string_discharcurrent_min = (double)$get_string_discharcurrent->min;
 $get_string_discharcurrent_min2 = (double)$get_string_discharcurrent->min2;
 $ir_max = (double)$get_ir->max;
 $ir_min = (double)$get_ir->min;
 $ir_min2 =(double) $get_ir->min2;


if(isset($get_string_bank1->id)){$get_id1 = $get_string_bank1->id;}
if(isset($get_string_bank1->device_id)){$device1 = $get_string_bank1->device_id;}else{$device1=NULL;}


if(isset($get_string_bank2->id)){$get_id2 = $get_string_bank2->id;}
if(isset($get_string_bank2->device_id)){$device2 = $get_string_bank2->device_id;}else{$device2=NULL;}

$this->db->where('device_id',$device1);    
$get_device = $this->db->get('device');   
$site_type_device1 = $get_device->row(); 

//get site type bang2
$this->db->where('device_id',$device2);    
$get_device = $this->db->get('device');   
$site_type_device2 = $get_device->row();

$str_volt_flag = 0;
$str_temp_flag = 0;
$str_amp_flag = 0;
if($get_string_bank1)
{
// String volt
if((double)$get_string_bank1->volt > $string_volt_max)
{
  $str_volt_flag = $str_volt_flag  + 1;
}
elseif((double)$get_string_bank1->volt <= $string_volt_min && (double)$get_string_bank1->volt > $string_volt_min2)
{
  $str_volt_flag = $str_volt_flag  + 1;
}
elseif((double)$get_string_bank1->volt < $string_volt_min2)
{
  $str_volt_flag = $str_volt_flag  + 1;
}
else
{
  $str_volt_flag = 0;
}
// String volt


// string temp
if((double)$get_string_bank1->temp > $string_temp_max)
{
  $str_temp_flag = $str_temp_flag  + 1;
}
elseif((double)$get_string_bank1->temp <= $string_temp_min && (double)$get_string_bank1->temp > $string_temp_min2)
{
  $str_temp_flag = $str_temp_flag  + 1;
}
elseif((double)$get_string_bank1->temp < $string_temp_min2)
{
  $str_temp_flag = $str_temp_flag  + 1;
}
else
{
  $str_temp_flag = 0;
}
// string temp


// string amp
if((double)$get_string_bank1->amp > 0)
{
  if($site_type_device1->site_type == 1)
  {
    if((double)$get_string_bank1->amp > $get_string_current1_max)
    {
      $str_amp_flag = $str_amp_flag  + 1;
    }
    elseif((double)$get_string_bank1->amp <= $get_string_current1_min && (double)$get_string_bank1->amp > $get_string_current1_min2)
    {
      $str_amp_flag = $str_amp_flag  + 1;echo "magi 1";
    }
    elseif((double)$get_string_bank1->amp < $get_string_current1_min2)
    {
      $str_amp_flag = $str_amp_flag  + 1;
    }
    else
    {
      $str_amp_flag = 0;
    }
  }
  elseif($site_type_device1->site_type == 2)
  {
    if((double)$get_string_bank1->amp > $get_string_current2_max)
    {
      $str_amp_flag = $str_amp_flag  + 1;
    }
    elseif((double)$get_string_bank1->amp <= $get_string_current2_min && (double)$get_string_bank1->amp > $get_string_current2_min2)
    {
      $str_amp_flag = $str_amp_flag  + 1;
    }
    elseif((double)$get_string_bank1->amp < $get_string_current2_min2)
    {
      $str_amp_flag = $str_amp_flag  + 1;
    }
    else
    {
      $str_amp_flag = 0;
    }
  }
}
elseif((double)$get_string_bank1->amp < 0)
{
  if((double)$get_string_bank1->amp < $get_string_discharcurrent_max)
  {
    $str_amp_flag = $str_amp_flag  + 1;
  }
  elseif((double)$get_string_bank1->amp > $get_string_discharcurrent_min && (double)$get_string_bank1->amp < $get_string_discharcurrent_min2)
  {
    $str_amp_flag = $str_amp_flag  + 1;
  }
  elseif((double)$get_string_bank1->amp > $get_string_discharcurrent_min2)
  {
    $str_amp_flag = $str_amp_flag  + 1;
  }
  else
  {
    $str_amp_flag = 0;  
  }
}
// string amp
}




// ###################################################
$str_volt_flag2 = 0;
$str_temp_flag2 = 0;
$str_amp_flag2 = 0;
if($get_string_bank2)
{
// String volt
if((double)$get_string_bank2->volt > $string_volt_max)
{
  $str_volt_flag2 = $str_volt_flag2  + 1;
}
elseif((double)$get_string_bank2->volt <= $string_volt_min && (double)$get_string_bank2->volt > $string_volt_min2)
{
  $str_volt_flag2 = $str_volt_flag2  + 1;
}
elseif((double)$get_string_bank2->volt < $string_volt_min2)
{
  $str_volt_flag2 = $str_volt_flag2  + 1;
}
else
{
  $str_volt_flag2 = 0;
}
// String volt


// string temp
if((double)$get_string_bank2->temp > $string_temp_max)
{
  $str_temp_flag2 = $str_temp_flag2  + 1;
}
elseif((double)$get_string_bank2->temp <= $string_temp_min && (double)$get_string_bank2->temp > $string_temp_min2)
{
  $str_temp_flag2 = $str_temp_flag2  + 1;
}
elseif((double)$get_string_bank2->temp < $string_temp_min2)
{
  $str_temp_flag2 = $str_temp_flag2  + 1;
}
else
{
  $str_temp_flag2 = 0;
}
// string temp


// string amp
if((double)$get_string_bank2->amp > 0)
{
  if($site_type_device2->site_type == 1)
  {
    if((double)$get_string_bank2->amp > $get_string_current1_max)
    {
      $str_amp_flag2 = $str_amp_flag2  + 1;
    }
    elseif((double)$get_string_bank2->amp <= $get_string_current1_min && (double)$get_string_bank2->amp > $get_string_current1_min2)
    {
      $str_amp_flag2 = $str_amp_flag2  + 1;
    }
    elseif((double)$get_string_bank2->amp < $get_string_current1_min2)
    {
      $str_amp_flag2 = $str_amp_flag2  + 1;
    }
    else
    {
      $str_amp_flag2 = 0;
    }
  }
  elseif($site_type_device2->site_type == 2)
  {
    if((double)$get_string_bank2->amp > $get_string_current2_max)
    {
      $str_amp_flag2 = $str_amp_flag2  + 1;
    }
    elseif((double)$get_string_bank2->amp <= $get_string_current2_min && (double)$get_string_bank2->amp > $get_string_current2_min2)
    {
      $str_amp_flag2 = $str_amp_flag2  + 1;
    }
    elseif((double)$get_string_bank2->amp < $get_string_current2_min2)
    {
      $str_amp_flag2 = $str_amp_flag2  + 1;
    }
    else
    {
      $str_amp_flag2 = 0;
    }
  }
}
elseif((double)$get_string_bank2->amp < 0)
{
  if((double)$get_string_bank2->amp < $get_string_discharcurrent_max)
  {
    $str_amp_flag2 = $str_amp_flag2  + 1;
  }
  elseif((double)$get_string_bank2->amp > $get_string_discharcurrent_min && (double)$get_string_bank2->amp < $get_string_discharcurrent_min2)
  {
    $str_amp_flag2 = $str_amp_flag2  + 1;
  }
  elseif((double)$get_string_bank2->amp > $get_string_discharcurrent_min2)
  {
    $str_amp_flag2 = $str_amp_flag2  + 1;
  }
  else
  {
    $str_amp_flag2 = 0;  
  }
}
// string amp
}
// ###################################################
 ?>
<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="main_part">
        <!-- Code Here.... -->
        <div class="table_view">
        <ul class="nav nav-tabs">
          <li class="active"><a data-toggle="tab" href="#bank1">BANK ONE</a></li>
          <li><a data-toggle="tab" href="#bank2">BANK TWO</a></li>
        </ul>

        <div class="tab-content">

          <?php if(count($get_report1) > 0): ?>

          <div id="bank1" class="tab-pane fade in active">
            <div class="container-fluid">
              <br/>
              <div class="row">
                <div class="col-md-12">
                  <p class="updated_time">Updated:<?php echo $get_string_bank1->date_time; ?></p>
                </div>
              </div>
              <div class="row string_info">
                <div class="col-md-4">
                  <p class="str_info">
                    <span class="title">String Voltage:</span>
                    <?php if($str_volt_flag > 0): ?>
                    <input style="background: #de0909;color:#fff;" type="" name="" value="<?php echo $get_string_bank1->volt;?>V" readonly>
                    <?php else: ?>
                      <input style="background: green;color: #fff;" type="" name="" value="<?php echo $get_string_bank1->volt;?>V" readonly>
                    <?php endif; ?>  
                  </p>
                </div>
                <div class="col-md-4">
                  <p class="str_info">
                    <span>String Temp:</span>
                    <?php if($str_temp_flag > 0): ?>
                    <input style="background: #de0909;color: #fff;" type="" name="" value="<?php echo $get_string_bank1->temp;?>℃" readonly>
                    <?php else: ?>
                      <input style="background: green;color: #fff;" type="" name="" value="<?php echo $get_string_bank1->temp;?>℃" readonly>
                    <?php endif; ?>  
                  </p>
                </div>
                <div class="col-md-4">
                  <p class="str_info">
                    <span>String Current:</span>
                    <?php if($str_amp_flag > 0): ?>
                    <input style="background: #de0909;color: #fff;" type="" name="" value="<?php echo $get_string_bank1->amp;?>Amp" readonly>
                    <?php else: ?>
                      <input style="background: green;color: #fff" type="" name="" value="<?php echo $get_string_bank1->amp;?>Amp" readonly>
                    <?php endif; ?>  
                  </p>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  <ul class="battary_cell">
                    <?php
                    $i = 0;
                    $flag_volt1 = 0;
                    $flag_temp1 = 0;
                    $flag_ir1 = 0;
                    foreach($get_report1 as $row):
                      $i = $i + 1;
                      // check max, min, min2
                      if((double)$row['volt'] > $cell_volt_max)
                      {
                        $flag_volt1 = $flag_volt1 + 1;
                      }
                       elseif((double)$row['volt'] >= $cell_volt_min && (double)$row['volt'] < $cell_volt_min2)
                       {
                        $flag_volt1 = $flag_volt1 + 1;
                       }
                      elseif((double)$row['volt'] < $cell_volt_min2)
                      {
                        $flag_volt1 = $flag_volt1 + 1;
                      }
                      else
                      {
                        $flag_volt1 = 0;
                      }

                      // Temperature
                      if((double)$row['temp'] > $cell_temp_max)
                      {
                        $flag_temp1 = $flag_temp1 + 1;
                      }
                       elseif((double)$row['temp'] >= $cell_temp_min && (double)$row['temp'] < $cell_temp_min2)
                       {
                        $flag_temp1 = $flag_temp1 + 1;
                       }
                       elseif((double)$row['temp'] < $cell_temp_min2)
                       {
                        $flag_temp1 = $flag_temp1 + 1;
                       }
                       else
                       {
                        $flag_temp1 = 0;
                       }
                       // IR
                       if((double)$row['ir'] > $ir_max)
                       {
                        $flag_ir1 = $flag_ir1 + 1;
                       }
                       elseif((double)$row['ir'] <= $ir_min && (double)$row['ir'] > $ir_min2)
                       {
                        $flag_ir1 = $flag_ir1 + 1;
                       }
                       elseif($row['ir'] < $ir_min2)
                       {
                        $flag_ir1 = $flag_ir1 + 1;
                       }
                      else
                      {
                        $flag_ir1 = 0;
                      }
                      // check max, min, min2
                      if($flag_volt1 > 0 OR $flag_temp1 > 0 OR $flag_ir1 > 0):
                    ?>
                    <li style="background: #de0909"><?php echo $row['node']; ?>: <?php echo $row['volt'];?>V / <?php echo $row['temp']; ?>℃ / <?php echo $row['ir'];?>mΩ</li>
                    <?php
                    else:
                    ?>
                    <li><?php echo $row['node']; ?>: <?php echo $row['volt'];?>V / <?php echo $row['temp']; ?>℃ / <?php echo $row['ir'];?>mΩ</li>
                    <?php
                  endif;
                    if($i == 8)
                    {
                      $i = 0;
                      echo '</ul></div><div class="col-md-4"><ul class="battary_cell">';
                    }
                    $flag = 0;
                   endforeach;
                  ?>
              </div>
            </div>
            </div>
          </div><!--bank 1-->
          <?php else: ?>
            <div id="bank1" class="tab-pane fade in active">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-12">
                    <h2 style="text-align: center;color: #de0909">Bank One Data Not Found</h2>
                  </div>
                </div>
              </div>
            </div>
           <?php endif; ?> 
           <?php if(count($get_report2) > 0): ?>
            <div id="bank2" class="tab-pane fade">
              <div class="container-fluid">
                <!-- updated data show -->
                <br/>
                <div class="row">
                  <div class="col-md-12">
                    <p class="updated_time">Updated:<?php echo $get_string_bank2->date_time; ?></p>
                  </div>
                </div>
                <!-- updated data show -->
                <!-- string data show -->
                <div class="row">
                <div class="col-md-4">
                  <p class="str_info">
                    <span class="title">String Voltage:</span>
                    <?php if($str_volt_flag2 > 0): ?>
                    <input style="background: #de0909;color: #fff" type="" name="" value="<?php echo $get_string_bank2->volt; ?>V" readonly>
                    <?php else: ?>
                      <input style="background: green;color: #fff" type="" name="" value="<?php echo $get_string_bank2->volt; ?>V" readonly>
                    <?php endif; ?>
                  </p>
                </div>
                <div class="col-md-4">
                  <p class="str_info">
                    <span>String Temp:</span>
                    <?php if($str_temp_flag2 > 0): ?>
                    <input  style="background: #de0909;color: #fff" type="" name="" value="<?php echo $get_string_bank2->temp; ?>℃" readonly>
                    <?php else: ?>
                      <input style="background: green;color: #fff" type="" name="" value="<?php echo $get_string_bank2->temp; ?>℃" readonly>
                    <?php endif; ?>  
                  </p>
                </div>
                <div class="col-md-4">
                  <p class="str_info">
                    <span>String Current:</span>
                    <?php if($str_amp_flag2 > 0): ?>
                    <input type="" name="" value="<?php echo $get_string_bank2->amp; ?>Amp" readonly>
                    <?php else: ?>
                      <input type="" name="" value="<?php echo $get_string_bank2->amp; ?>Amp" readonly>
                    <?php endif; ?>  
                  </p>
                </div>
              </div>
                <!-- string data show -->
                <!-- Cell Data Show -->
                <div class="row">
                <div class="col-md-4">
                  <ul class="battary_cell">
                    <?php
                    $i = 0;
                    $flag_volt2 = 0;
                    $flag_temp2 = 0;
                    $flag_ir2 = 0;
                    foreach($get_report2 as $row):
                      $i = $i + 1;
                      // check max, min, min2
                      if((double)$row['volt'] > $cell_volt_max)
                      {
                        $flag_volt2 = $flag_volt2 + 1;
                      }
                       elseif((double)$row['volt'] >= $cell_volt_min && (double)$row['volt'] < $cell_volt_min2)
                       {
                        $flag_volt2 = $flag_volt2 + 1;
                       }
                      elseif((double)$row['volt'] < $cell_volt_min2)
                      {
                        $flag_volt2 = $flag_volt2 + 1;
                      }
                      else
                      {
                        $flag_volt2 = 0;
                      }

                      // Temperature
                      if((double)$row['temp'] > $cell_temp_max)
                      {
                        $flag_temp2 = $flag_temp2 + 1;
                      }
                       elseif((double)$row['temp'] >= $cell_temp_min && (double)$row['temp'] < $cell_temp_min2)
                       {
                        $flag_temp2 = $flag_temp2 + 1;
                       }
                       elseif((double)$row['temp'] < $cell_temp_min2)
                       {
                        $flag_temp2 = $flag_temp2 + 1;
                       }
                       else
                       {
                        $flag_temp2 = 0;
                       }
                       // IR
                       if((double)$row['ir'] > $ir_max)
                       {
                        $flag_ir2 = $flag_ir2 + 1;
                       }
                       elseif((double)$row['ir'] <= $ir_min && (double)$row['ir'] > $ir_min2)
                       {
                        $flag_ir2 = $flag_ir2 + 1;
                       }
                       elseif($row['ir'] < $ir_min2)
                       {
                        $flag_ir2 = $flag_ir2 + 1;
                       }
                      else
                      {
                        $flag_ir2 = 0;
                      }
                      // check max, min, min2
                      if($flag_volt2 > 0 OR $flag_temp2 > 0 OR $flag_ir2 > 0):
                    ?>
                    <li style="background: #de0909"><?php echo $row['node']; ?>: <?php echo $row['volt'];?>V / <?php echo $row['temp']; ?>℃ / <?php echo $row['ir'];?>mΩ</li>
                    <?php
                    else:
                    ?>
                    <li><?php echo $row['node']; ?>: <?php echo $row['volt'];?>V / <?php echo $row['temp']; ?>℃ / <?php echo $row['ir'];?>mΩ</li>
                    <?php
                  endif;
                    if($i == 8)
                    {
                      $i = 0;
                      echo '</ul></div><div class="col-md-4"><ul class="battary_cell">';
                    }
                    $flag = 0;
                   endforeach;
                  ?>
              </div>
            </div>
                <!-- Cell Data Show -->
              </div>
            </div>
            <?php else: ?>
           <!-- else end bank2 data not foune -->
           <div id="bank2" class="tab-pane fade">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-12">
                    <h2 style="text-align: center;color: #de0909">Bank Two Data Not Found</h2>
                  </div>
                </div>
              </div>
            </div>
          <?php endif; ?>
            <!-- else end bank2 data not foune -->
      </div>
    </div>
  </div>
  </div>
</section>


<style type="text/css">
.nav-tabs li {
  width: 50%;
  text-align: center;
  color: #FFF;
}
.nav-tabs li.active  a{
  text-align: center;
  color: #FFF;
  display: block;
  background-color: #222d32 !important;
}

.battary_cell {
  list-style-type: none;
  margin-top: 15px;
}
.battary_cell li {
    width: 100%;
    background: green;
    padding: 8px;
    text-align: center;
    color: #FFF;
    margin: 0 0 5px;
}

.str_info{text-align: center;font-style: italic;}
.str_info input {text-align: center;}
.updated_time{float: right;font-size: 16px;font-style: italic;}
.site_info{
    font-size: 15px;
    letter-spacing: 0.2px;
    margin-left: 34px;
}
.string_info{margin-top: 5px;}
</style>