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


//$get_id1 = $get_string_bank1->id;
//$device1 = $get_string_bank1->device_id;
if(isset($get_string_bank1->id)){$get_id1 = $get_string_bank1->id;}
if(isset($get_string_bank1->device_id)){$device1 = $get_string_bank1->device_id;}else{$device1=NULL;}

//$get_id2 = $get_string_bank2->id;
//$device2 = $get_string_bank2->device_id;
if(isset($get_string_bank2->id)){$get_id2 = $get_string_bank2->id;}
if(isset($get_string_bank2->device_id)){$device2 = $get_string_bank2->device_id;}else{$device2=NULL;}


$this->db->where('site_id',$site_id); 
$this->db->where('bank',1);                ;
$this->db->where('node != ','B0');                ;
$get_user = $this->db->get('tbl_data_update');   
$get_report1= $get_user->result_array();

//get site type bang2
$this->db->where('device_id',$device1);    
$get_device = $this->db->get('device');   
$site_type_device1 = $get_device->row(); 

//get site type bang2
$this->db->where('device_id',$device2);    
$get_device = $this->db->get('device');   
$site_type_device2 = $get_device->row();

?>
<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="main_part">
                <!-- here.. -->
                <!-- tab -->
                <div class="container">
                  <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#home">Bank 1</a></li>
                    <li><a data-toggle="tab" href="#menu1">Bank 2</a></li>
                  </ul>
                  <div class="tab-content">
                    <div id="home" class="tab-pane fade in active">
                      <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <div style="font-size: 12px;color: blue;text-align: center;"><b>String Voltage:
                              <?php if ($get_string_bank1)
                              {
                                if((double)$get_string_bank1->volt > $string_volt_max)
                                {
                                  ?>
                                  <b style="color: red">
                                  <?php echo (double)$get_string_bank1->volt;?>
                                    
                                  </b>
                                 <span class="text_dashboard">&nbsp;(String Voltage High)</span>
                                  <?php
                                }
                                elseif((double)$get_string_bank1->volt <= $string_volt_min && (double)$get_string_bank1->volt > $string_volt_min2)
                                {
                                  ?>
                                    <b style="color: red">
                                    <?php echo (double)$get_string_bank1->volt;?>
                                      
                                    </b>
                                   <span class="text_dashboard">&nbsp;(String Voltage Low)</span>
                                  <?php
                                }
                                elseif((double)$get_string_bank1->volt < $string_volt_min2)
                                {
                                  ?>
                                    <b style="color: red">
                                    <?php echo (double)$get_string_bank1->volt;?>
                                      
                                    </b>
                                   <span class="text_dashboard">&nbsp;(String Voltage Over Discharging)</span>
                                  <?php
                                }
                                else
                                {
                                 echo $get_string_bank1->volt;
                                }
                      }
                    else echo '<b style="color:red">'."Not found". '</b>';
                      ?>,
                      &nbsp;&nbsp; String Temp:
                      <?php if ($get_string_bank1)
                      {
                        if((double)$get_string_bank1->temp > $string_temp_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo (double)$get_string_bank1->temp;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(Temp High)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank1->temp <= $string_temp_min && (double)$get_string_bank1->temp > $string_temp_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo (double)$get_string_bank1->temp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(Temp Low)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank1->temp < $string_temp_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank1->temp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(Temp Critically Low)</span>
                          <?php
                        }
                        else
                        {
                          echo (double)$get_string_bank1->temp;
                        }
                      }
                      else echo '<b style="color:red">'."Not found". '</b>';
                      ?>,
                      &nbsp;&nbsp;String Current:
                      <?php if ($get_string_bank1)
                      {


                        // charging current max min min2
                        if((double)$get_string_bank1->amp > 0)
                        {





                        if($site_type_device1->site_type == 1)
                        {




                      if((double)$get_string_bank1->amp > $get_string_current1_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo (double)$get_string_bank1->amp;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(String Charging Current High)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank1->amp <= $get_string_current1_min && (double)$get_string_bank1->amp > $get_string_current1_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo (double)$get_string_bank1->amp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Charging Current Low)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank1->amp < $get_string_current1_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank1->amp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Charging Current Critically Low)</span>
                          <?php
                        }
                        else
                        {
                          echo (double)$get_string_bank1->amp;
                        }





                        }
                        elseif($site_type_device1->site_type == 2)
                        {




                        if((double)$get_string_bank1->amp > $get_string_current2_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo (double)$get_string_bank1->amp;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(String Charging Current High)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank1->amp <= $get_string_current2_min && (double)$get_string_bank1->amp > $get_string_current2_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo (double)$get_string_bank1->amp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Charging Current Low)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank1->amp < $get_string_current2_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank1->amp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Charging Current Critically Low)</span>
                          <?php
                        }
                        else
                        {
                          echo (double)$get_string_bank1->amp;
                        }







                        }




                        }
                        // charging current max min min2
                        // discharing current max min min2
                        elseif((double)$get_string_bank1->amp < 0)
                        {




                      if((double)$get_string_bank1->amp < $get_string_discharcurrent_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo (double)$get_string_bank1->amp;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(String Discharging Current High)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank1->amp > $get_string_discharcurrent_min && (double)$get_string_bank1->amp < $get_string_discharcurrent_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo (double)$get_string_bank1->amp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Discharging Current Low)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank1->amp > $get_string_discharcurrent_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank1->amp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Discharging Current Critically Low)</span>
                          <?php
                        }
                        else
                        {
                          echo (double)$get_string_bank1->amp;
                        }



                        }
                        // discharing current max min min2
                      }
                        else echo '<b style="color:red">'."Not found". '</b>';
                    ?>
                  </b>
                  </div>
                  
                <div class="box box-widget widget-user-2" style="margin-top: 0px;">
                            <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header" style="background-color: #1eb55dd1;padding: 4px;">
                              
                <h2 class="widget-user-username" style="text-align: center;margin-left: 0px;color: #ecf0f1;font-size: 15px">
                <b>Bank 1</b></h2>
                             
                <div class="box-footer no-padding">
                <table class="table table-bordered table-striped" style="text-align: center;">
                <thead>
                       <tr style="font-size: 10px;">         
                          <th>Date Time</th>                 
                          <th>Cell</th>                 
                          <th>Cell Volt</th>                                                 
                          <th>Cell Temp</th>                                                 
                          <th>String charging current</th>                                  
                          <th>String discharging current</th>                                  
                          <th>IR</th>                   
                       </tr>
                </thead>
                <tbody>
                     <?php
                     if($get_report1)
                     {
                     foreach ($get_report1 as $report)
                      {
                      ?> 
                     <tr style="font-size: 12px">
                     <td><?php echo $report['date_time']?></td>
                     <td><?php echo $report['node']?></td>
                     <td>
                     <?php
                     if((double)$report['volt'] > $cell_volt_max)
                      {
                        ?>
                     <b style="color: red">
                      <?php echo (double)$report['volt'];?>
                        
                      </b>
                     <span class="text_dashboard">&nbsp;(Cell Voltage High)</span>
                     <?php
                   }
                   elseif((double)$report['volt'] <= $cell_volt_min && (double)$report['volt'] > $cell_volt_min2)
                      {?>
                     <b style="color: red"><?php echo (double)$report['volt'];?></b>
                     <span class="text_dashboard">&nbsp;(Cell Voltage Low)</span>
                     <?php
                   } 
                  elseif((double)$report['volt'] < $cell_volt_min2)
                  {
                    ?>
                     <b style="color: red">
                      <?php echo (double)$report['volt'];?>
                        
                      </b>
                     <span style="color: red;font-size: 12px">&nbsp;(Cell Voltage Critically Low)</span>
                     <?php
                   }
                    else
                    {
                       echo (double)$report['volt'];
                    }
                    ?>
                    </td>
                    <td>
                    <?php
                    if((double)$report['temp'] > $cell_temp_max)
                    {
                    ?>
                    <b style="color: red">
                      <?php echo (double)$report['temp']; ?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Temp High)</span>
                    <?php 
                  }
                   
                  elseif((double)$report['temp'] <= $cell_temp_min && (double)$report['temp'] > $cell_temp_min2)
                  {
                  ?>
                    <b style="color: red">
                      <?php echo (double)$report['temp']?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Temp Low)</span>
                    <?php
                  }
                   elseif((double)$report['temp'] < $cell_temp_min2)
                  {
                  ?>
                    <b style="color: red">
                      <?php echo (double)$report['temp']?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Temp Critically Low)</span>
                    <?php
                  }
                  else
                  {
                     echo (double)$report['temp'];
                  }
                  ?>

                    </td>
                    <td>
                      <?php 
                    if((double)$report['amp'] > 0)
                    {
                      echo (double)$report['amp'];
                    }
                       ?>
                    </td> 

                    <!-- string discharning current -->
                    <td>
                    <?php 
                    if((double)$report['amp'] < 0)
                    {
                      echo (double)$report['amp'];
                    }
                  ?>
                    </td>
                    <!-- string discharning current -->
                   <td>
                    <?php
                    if((double)$report['ir'] > $ir_max)
                    {
                    ?>
                    <b style="color: red">
                    <?php echo (double)$report['ir']; ?>
                    </b>
                  <span class="text_dashboard">&nbsp;(IR High)</span>
                    <?php
                    }
                    elseif((double)$report['ir'] <= $ir_min && (double)$report['ir'] > $ir_min2)
                    {
                    ?>
                    <b style="color: red">
                    <?php echo $report['ir']; ?>
                    </b>
                  <span class="text_dashboard">&nbsp;(IR Low)</span>
                    <?php
                    }
                    elseif((double)$report['ir'] < $ir_min2)
                    {
                    ?>
                    <b style="color: red">
                    <?php echo (double)$report['ir']; ?>
                    </b>
                    <span class="text_dashboard">&nbsp;(IR Critically Low)</span>
                    <?php
                    }
                    else
                    {
                      echo (double)$report['ir'];
                    }
                    ?>
                    </td>
                   <?php }?>

                </tr>

                <?php }

                else
                {
                  ?>

                <h4 style="text-align: center;color: red">No data Found 2</h4>

                <?php
              }
           // } //ed
            ?>

                </tbody>
                </table>
                   </div>
                     </div>
                       </div>
                        </div>
                        <div class="col-md-2"></div>
                      </div>
                    </div>


                <!--  -->


                <div id="menu1" class="tab-pane fade">
                  
                  <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                      <div style="font-size: 12px;color: blue;text-align: center;">
                        <b>String Voltage:
                        <?php
                        if($get_string_bank2)
                        {
                           if((double)$get_string_bank2->volt > $string_volt_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo (double)$get_string_bank2->volt;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(String Voltage High)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank2->volt <= $string_volt_min && (double)$get_string_bank2->volt > $string_volt_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo (double)$get_string_bank2->volt;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Voltage Low)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank2->volt < $string_volt_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo (double)$get_string_bank2->volt;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Voltage Over Discharging)</span>
                          <?php
                        }
                        else
                        {
                         echo (double)$get_string_bank2->volt;
                        }
                        }
                       else
                       {
                        echo '<b style="color:red">'."Not found". '</b>';
                       }
                       ?>,
                       &nbsp;&nbsp;
                       String Temp:
                       <?php if ($get_string_bank2)
                       {
                         if((double)$get_string_bank2->temp > $string_temp_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo (double)$get_string_bank2->temp;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(Temp High)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank2->temp <= $string_temp_min && (double)$get_string_bank2->temp > $string_temp_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo (double)$get_string_bank2->temp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(Temp Low)</span>
                          <?php
                        }
                         elseif((double)$get_string_bank2->temp < $string_temp_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo (double)$get_string_bank2->temp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(Temp Critically Low)</span>
                          <?php
                        }
                        else
                        {
                          echo $get_string_bank2->temp;
                        }
                       }
                       else
                       {
                         echo '<b style="color:red">'."Not found". '</b>';
                       }
                       ?>,
                      &nbsp;&nbsp;String Current:
                      <?php if ($get_string_bank2)
                      {


                        // charging current max min min2
                        if((double)$get_string_bank2->amp > 0)
                        {





                        if($site_type_device2->site_type == 1)
                        {




                      if((double)$get_string_bank2->amp > $get_string_current1_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo (double)$get_string_bank2->amp;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(String Charging Current High)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank2->amp <= $get_string_current1_min && (double)$get_string_bank2->amp > $get_string_current1_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo (double)$get_string_bank2->amp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Charging Current Low)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank2->amp < $get_string_current1_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank2->amp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Charging Current Critically Low)</span>
                          <?php
                        }
                        else
                        {
                          echo (double)$get_string_bank2->amp;
                        }





                        }
                        elseif($site_type_device2->site_type == 2)
                        {




                        if((double)$get_string_bank2->amp > $get_string_current2_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo (double)$get_string_bank2->amp;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(String Charging Current High)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank2->amp <= $get_string_current2_min && (double)$get_string_bank2->amp > $get_string_current2_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo (double)$get_string_bank2->amp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Charging Current Low)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank2->amp < $get_string_current2_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank2->amp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Charging Current Critically Low)</span>
                          <?php
                        }
                        else
                        {
                          echo (double)$get_string_bank2->amp;
                        }







                        }




                        }
                        // charging current max min min2
                        // discharing current max min min2
                        elseif((double)$get_string_bank2->amp < 0)
                        {




                      if((double)$get_string_bank2->amp < $get_string_discharcurrent_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo (double)$get_string_bank2->amp;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(String Discharging Current High)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank2->amp > $get_string_discharcurrent_min && (double)$get_string_bank2->amp < $get_string_discharcurrent_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo (double)$get_string_bank2->amp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Discharging Current Low)</span>
                          <?php
                        }
                        elseif((double)$get_string_bank2->amp > $get_string_discharcurrent_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank2->amp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(String Discharging Current Critically Low)</span>
                          <?php
                        }
                        else
                        {
                          echo (double)$get_string_bank2->amp;
                        }



                        }
                        // discharing current max min min2
                      }
                        else echo '<b style="color:red">'."Not found". '</b>';
                    ?>
                  </b>
                  </div>
                 
                <div class="box box-widget widget-user-2" style="margin-top: 0px;">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header" style="background-color: #eb4d4b;padding: 4px;">              
                <h2 class="widget-user-username" style="text-align: center;margin-left: 0px;color: #ecf0f1;font-size: 15px">
                <b>Bank 2</b></h2>                        
                <div class="box-footer no-padding">
                <table class="table table-bordered table-striped" style="text-align: center;">
                <thead>
                  <tr style="font-size: 10px;"> 
                   <th>Date Time</th>                 
                   <th>Cell</th>                 
                   <th>Cell volt</th>                                                 
                   <th>Cell temp</th>                                                 
                   <th>String charging current</th>                                  
                   <th>String discharging current</th>                                  
                   <th>IR</th>   
                  </tr>
                  </thead>
                  <tbody>
                  <?php
                  

                 $this->db->where('site_id',$site_id); 
                 $this->db->where('bank',2); 
                 $this->db->where('node != ','B0'); 
                 $get_user = $this->db->get('tbl_data_update');   
                 $get_report2 =  $get_user->result_array();

                 
                 ?>
                   <?php
                   if($get_report2)
                   {
                   foreach ($get_report2 as $report2)
                    {
                      ?>
                   <tr>
                   <td><?php echo $report2['date_time']?></td>
                     <td><?php echo $report2['node']?></td>
                     <td>
                     <?php
                     if((double)$report2['volt'] > $cell_volt_max)
                      {
                        ?>
                     <b style="color: red">
                      <?php echo (double)$report2['volt'];?>
                        
                      </b>
                     <span class="text_dashboard">&nbsp;(Over Voltage)</span>
                     <?php
                   }
                   elseif((double)$report2['volt'] >= $cell_volt_min && (double)$report2['volt'] < $cell_volt_min2)
                      {?>
                     <b style="color: red"><?php echo (double)$report2['volt'];?></b>
                     <span class="text_dashboard">&nbsp;(Low Voltage)</span>
                     <?php
                   } 
                  elseif((double)$report2['volt'] < $cell_volt_min2)
                  {
                    ?>
                     <b style="color: red">
                      <?php echo (double)$report2['volt'];?>
                        
                      </b>
                     <span style="color: red;font-size: 12px">&nbsp;(Voltage Critically Low)</span>
                     <?php
                   }
                    else
                    {
                       echo (double)$report2['volt'];
                    }
                    ?>
                    </td>
                    <td>
                    <?php
                    if((double)$report2['temp'] > $cell_temp_max)
                    {
                    ?>
                    <b style="color: red">
                      <?php echo (double)$report2['temp']; ?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Temp High)</span>
                    <?php 
                  }
                    
                  elseif((double)$report2['temp'] >= $cell_temp_min && (double)$report2['temp'] < $cell_temp_min2)
                  {
                  ?>
                    <b style="color: red">
                      <?php echo $report2['temp']?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Temp Low)</span>
                    <?php
                  }

                  elseif((double)$report2['temp'] < $cell_temp_min2)
                  {
                  ?>
                    <b style="color: red">
                      <?php echo (double)$report2['temp']?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Temp Critically Low)</span>
                    <?php
                  }

                  else
                  {
                     echo (double)$report2['temp'];
                  }
                  ?>

                    </td>
                    <td>
                    <?php 
                if((double)$report2['amp'] > 0)
                {    
                  echo (double)$report2['amp'];
                }

                ?>
                    </td> 

                    <!-- string discharning current -->
                    <td>
                    <?php 
                      if((double)$report2['amp'] < 0)
                      {    
                        echo (double)$report2['amp'];
                      }

                      ?>

                    </td>
                    <!-- string discharning current -->
                   <td>
                    <?php
                    if((double)$report2['ir'] > $ir_max)
                    {
                    ?>
                    <b style="color: red">
                    <?php echo (double)$report2['ir']; ?>
                    </b>
                  <span class="text_dashboard">&nbsp;(IR High)</span>
                    <?php
                    }
                    elseif((double)$report2['ir'] <= $ir_min && (double)$report2['ir'] > $ir_min2)
                    {
                    ?>
                    <b style="color: red">
                    <?php echo (double)$report2['ir']; ?>
                    </b>
                  <span class="text_dashboard">&nbsp;(IR Low)</span>
                    <?php
                    }
                    elseif($report2['ir'] < $ir_min2)
                    {
                    ?>
                    <b style="color: red">
                    <?php echo (double)$report2['ir']; ?>
                    </b>
                    <span class="text_dashboard">&nbsp;(IR Critically Low)</span>
                    <?php
                    }
                    else
                    {
                      echo (double)$report2['ir'];
                    }
                    ?>
                    </td>

                 <?php }?>

                </tr>

                <?php }

                else {
                  ?>

                <h4 style="text-align: center;color: red">No data Found</h4>

                <?php
              }
           // } ed
            ?>

                </tbody>
                  </table>
                    </div>
                      </div>
                        </div>
                        </div>
                        <div class="col-md-2"></div>
                      </div>

                    </div>
                  </div>
                </div>
                <!-- tab -->
        <!-- here.. -->
      </div>
    </div>
  </div>
</section>
<?php 
if($autorefresh->status == 1)
{
 ?>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript">
  $(document).ready(function() {
  setInterval(function() {
    cache_clear()
  }, <?php echo $autorefresh->set_time*60000; ?>);
});

function cache_clear() {
  window.location.reload(true);
}
</script>
 <?php 
}

 ?>


<style type="text/css">
  .text_dashboard{color: red;}
</style>

