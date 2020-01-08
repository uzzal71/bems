<?php
 $cell_volt_max   = $get_cell_volt->max;
 $cell_volt_min   = $get_cell_volt->min;
 $cell_volt_min2   = $get_cell_volt->min2;
 $string_volt_max = $get_string_volt->max;
 $string_volt_min = $get_string_volt->min;
 $string_volt_min2 = $get_string_volt->min2;
 $cell_temp_max   = $get_cell_temp->max;
 $cell_temp_min   = $get_cell_temp->min;
 $cell_temp_min2   = $get_cell_temp->min2;
 $string_temp_max = $get_string_temp->max;
 $string_temp_min = $get_string_temp->min;
 $string_temp_min2 = $get_string_temp->min2;
 $get_string_current1_max = $get_string_current1->max;
 $get_string_current1_min = $get_string_current1->min;
 $get_string_current1_min2 = $get_string_current1->min2;
 $get_string_current2_max = $get_string_current2->max;
 $get_string_current2_min = $get_string_current2->min;
 $get_string_current2_min2 = $get_string_current2->min2;
 $get_string_discharcurrent_max = $get_string_discharcurrent->max;
 $get_string_discharcurrent_min = $get_string_discharcurrent->min;
 $get_string_discharcurrent_min2 = $get_string_discharcurrent->min2;
 $ir_max = $get_ir->max;
 $ir_min = $get_ir->min;
 $ir_min2 = $get_ir->min2;

// for bank1
//if ($get_string_bank1) {
//$get_id1 = $get_string_bank1->id;
//$device1 = $get_string_bank1->device_id;

if(isset($get_string_bank1->id))
{
$get_id1 = $get_string_bank1->id;
}

if(isset($get_string_bank1->device_id))
{
$device1 = $get_string_bank1->device_id;
}
else{
$device1 = 200;
}

$this->db->where('site_id',$site_id); 
$this->db->where('bank',1);                ;
$this->db->where('node != ','B0');                ;
$get_user = $this->db->get('tbl_data_update');   
$get_report1= $get_user->result_array();

$this->db->where('device_id',$device1);    
$get_device = $this->db->get('device');   
$site_type_device1 = $get_device->row(); 
//end bank1
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
                                 if($get_string_bank1->volt > $string_volt_max)
                                {
                                  ?>
                                  <b style="color: red">
                                  <?php echo $get_string_bank1->volt;?>
                                    
                                  </b>
                                 <span class="text_dashboard">&nbsp;(Over Voltage)</span>
                                  <?php
                                }
                                elseif($get_string_bank1->volt >= $string_volt_min && $get_string_bank1->volt < $string_volt_min2)
                                {
                                  ?>
                                    <b style="color: red">
                                    <?php echo $get_string_bank1->volt;?>
                                      
                                    </b>
                                   <span class="text_dashboard">&nbsp;(Low Voltage)</span>
                                  <?php
                                }
                                elseif($get_string_bank1->volt < $string_volt_min2)
                                {
                                  ?>
                                    <b style="color: red">
                                    <?php echo $get_string_bank1->volt;?>
                                      
                                    </b>
                                   <span class="text_dashboard">&nbsp;(Voltage Critically Low)</span>
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
                        if($get_string_bank1->temp > $string_temp_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo $get_string_bank1->temp;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(Temp High)</span>
                          <?php
                        }
                        elseif($get_string_bank1->temp >= $string_temp_min && $get_string_bank1->temp < $string_temp_min)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank1->temp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(Temp Low)</span>
                          <?php
                        }
                        elseif($get_string_bank1->temp < $string_temp_min)
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
                          echo $get_string_bank1->temp;
                        }
                      }
                    else echo '<b style="color:red">'."Not found". '</b>';
                      ?>,
                      &nbsp;&nbsp;String Current: <?php if ($get_string_bank1) {
                    echo $get_string_bank1->amp;}
                    else echo '<b style="color:red">'."Not found". '</b>';?></b></div>
                  
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

                       <!-- B0 Calculation bank1
                      <tr>
                      <td><?php echo $get_string_bank1->date_time; ?></td>
                      <td>B0</td>
                      <td><?php
                        if($get_string_bank1->volt > $string_volt_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo $get_string_bank1->volt;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(Over Voltage)</span>
                          <?php
                        }
                        elseif($get_string_bank1->volt < $string_volt_min)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank1->volt;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(Low Voltage)</span>
                          <?php
                        }
                        elseif($get_string_bank1->volt < $string_volt_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank1->volt;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(Voltage Critically Low)</span>
                          <?php
                        }
                        else
                        {
                         echo $get_string_bank1->volt;
                        }
                      ?></td>
                      <td><?php
                        if($get_string_bank1->temp > $string_temp_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo $get_string_bank1->temp;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(Temp High)</span>
                          <?php
                        }
                        elseif($get_string_bank1->temp < $string_temp_min)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank1->temp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(Low Temp)</span>
                          <?php
                        }
                        else
                        {
                          echo $get_string_bank1->temp;
                        }
                      ?></td>
                      <td>
                        <?php
                      if($get_string_bank1->amp > 0){
                        if($site_type_device1->site_type == 1)
                        {
                            if(($get_string_bank1->amp  > $get_string_current1_max))
                            {
                            ?>
                            <b style="color: red">
                              <?php echo $get_string_bank1->amp ; ?>
                              </b>
                            <span class="text_dashboard">&nbsp;(Charging High)</span>
                            <?php
                        }          
                        elseif(($get_string_bank1->amp  < $get_string_current1_min))
                          {
                            ?>
                        <b style="color: red">
                          <?php echo $report['temp']; ?>
                            
                          </b>
                        <span class="text_dashboard">&nbsp;(Discharge High)</span>
                        <?php
                      }

                        else
                        {
                          echo $get_string_bank1->amp ; 
                        }
                        
                         }

                        if($site_type_device1->site_type ==2)
                        {
                            if(($get_string_bank1->amp  > $get_string_current2_max))
                              {
                                ?>
                            <b style="color: red">
                              <?php echo $get_string_bank1->amp ; ?>
                                
                              </b>
                            <span class="text_dashboard">&nbsp;(Charging High)</span>
                            <?php
                          }
                            elseif(($get_string_bank1->amp  < $get_string_current2_min)){
                              ?>
                            <b style="color: red">
                              <?php echo $get_string_bank1->amp; ?>
                                
                              </b>
                            <span class="text_dashboard">&nbsp;(Charging Low)</span>
                            <?php
                          }
                          else
                          {
                             echo $get_string_bank1->amp ;
                          }
                          }
                      }
                      else{
                        echo $get_string_bank1->amp;
                      } ?>
                        
                      </td>
                      <td>
                        <?php
                        if($get_string_bank1->amp < 0){
                          if(($get_string_bank1->amp < $get_string_discharcurrent_max))
                            {
                              ?>
                          <b style="color: red">
                            <?php echo $get_string_bank1->amp; ?>
                              
                            </b>
                          <span class="text_dashboard">&nbsp;(Discharging High)</span>
                          <?php
                        }          
                        elseif(($get_string_bank1->amp < $get_string_discharcurrent_min))
                          {
                            ?>
                        <b style="color: red">
                          <?php echo $report['temp']; ?>
                            
                          </b>
                        <span class="text_dashboard">&nbsp;(Discharge Low)</span>
                        <?php
                        }
                         elseif(($get_string_bank1->amp < $get_string_discharcurrent_min2))
                          {
                            ?>
                        <b style="color: red">
                          <?php echo $report['amp']; ?>
                            
                          </b>
                        <span class="text_dashboard">&nbsp;(Discharge Critically Low)</span>
                        <?php
                        }
                          else
                          {
                            if($get_string_bank1->amp < 0 )
                            {
                              echo $get_string_bank1->amp;
                            }
                            else
                            {
                              echo "";
                            }
                          } 
                        }
                        else{
                          echo '';
                        } 
                        ?> 
                        </td>
                      <td>
                        <?php
                        if($get_string_bank1->ir > $ir_max)
                        {
                        ?>
                        <b style="color: red">
                        <?php echo $get_string_bank1->ir; ?>
                        </b>
                      <span class="text_dashboard">&nbsp;(IR High)</span>
                        <?php
                        }
                        elseif($get_string_bank1->ir < $ir_min)
                        {
                        ?>
                        <b style="color: red">
                        <?php echo $get_string_bank1->ir; ?>
                        </b>
                      <span class="text_dashboard">&nbsp;(IR Low)</span>
                        <?php
                        }
                        elseif($get_string_bank1->ir < $ir_min2)
                        {
                        ?>
                        <b style="color: red">
                        <?php echo $get_string_bank1->ir; ?>
                        </b>
                        <span class="text_dashboard">&nbsp;(IR Critically Low)</span>
                        <?php
                        }
                        else
                        {
                          echo $get_string_bank1->ir;
                        }
                        ?>                        
                        </td>
                    </tr>
                     B0 Calculation bank1 -->
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
                     if($report['volt'] > $cell_volt_max)
                      {
                        ?>
                     <b style="color: red">
                      <?php echo $report['volt'];?>
                        
                      </b>
                     <span class="text_dashboard">&nbsp;(Over Voltage)</span>
                     <?php
                   }
                   elseif($report['volt'] >= $cell_volt_min && $report['volt'] < $cell_volt_min2)
                      {?>
                     <b style="color: red"><?php echo $report['volt'];?></b>
                     <span class="text_dashboard">&nbsp;(Low Voltage)</span>
                     <?php
                   } 
                  elseif($report['volt'] < $cell_volt_min2)
                  {
                    ?>
                     <b style="color: red">
                      <?php echo $report['volt'];?>
                        
                      </b>
                     <span style="color: red;font-size: 12px">&nbsp;(Voltage Critically Low)</span>
                     <?php
                   }
                    else
                    {
                       echo $report['volt'];
                    }
                    ?>
                    </td>
                    <td>
                    <?php
                    if($report['temp'] > $cell_temp_max)
                    {
                    ?>
                    <b style="color: red">
                      <?php echo $report['temp']; ?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Temp High)</span>
                    <?php 
                  }
                   
                  elseif($report['temp'] >= $cell_temp_min && $report['temp'] < $cell_temp_min2)
                  {
                  ?>
                    <b style="color: red">
                      <?php echo $report['temp']?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Temp Low)</span>
                    <?php
                  }
                   elseif($report['temp'] < $cell_temp_min2)
                  {
                  ?>
                    <b style="color: red">
                      <?php echo $report['temp']?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Temp Critically Low)</span>
                    <?php
                  }
                  else
                  {
                     echo $report['temp'];
                  }
                  ?>

                    </td>
                    <td>
                    <?php 

                if($site_type_device1->site_type == 1)
                {
                    if(($report['amp'] > $get_string_current1_max))
                    {
                    ?>
                    <b style="color: red">
                      <?php echo $report['amp']; ?>
                      </b>
                    <span class="text_dashboard">&nbsp;(Charging High)</span>
                    <?php
                }          
                elseif($report['amp'] >= $get_string_current1_min && $report['amp'] < $get_string_current1_min2)
                  {
                    ?>
                <b style="color: red">
                  <?php echo $report['amp']; ?>
                    
                  </b>
                <span class="text_dashboard">&nbsp;(Charging Low)</span>
                <?php
              }
              elseif($report['amp'] < $get_string_current1_min2)
                  {
                    ?>
                <b style="color: red">
                  <?php echo $report['amp']; ?>
                    
                  </b>
                <span class="text_dashboard">&nbsp;(Charging Critically Low)</span>
                <?php
              }

                else
                {
                  echo $report['amp']; 
                }
                
                 }

                if($site_type_device1->site_type ==2)
                {
                    if(($report['amp'] > $get_string_current2_max))
                      {
                        ?>
                    <b style="color: red">
                      <?php echo $report['amp']; ?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Charging High)</span>
                    <?php
                  }
                  elseif($report['amp'] >= $get_string_current2_min && $report['amp'] > $get_string_current2_min2){
                      ?>
                    <b style="color: red">
                      <?php echo $report['temp']; ?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Charging Low)</span>
                    <?php
                  }
                  elseif($report['amp'] < $get_string_current2_min2){
                      ?>
                    <b style="color: red">
                      <?php echo $report['temp']; ?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Charging Critically Low)</span>
                    <?php
                  }
                  else
                  {
                     echo $report['amp'];
                  }
                  }
                ?>
                    </td> 

                    <!-- string discharning current -->
                    <td>
                    <?php 
                    if($report['amp'] < 0)
                    {
                    if($report['amp'] < $get_string_discharcurrent_max)
                      {
                        ?>
                    <b style="color: red">
                      <?php echo $report['amp']; ?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Discharging High)</span>
                    <?php
                  }          
                  elseif($report['amp'] >= $get_string_discharcurrent_min && $report['amp'] < $get_string_discharcurrent_min2)
                    {
                      ?>
                  <b style="color: red">
                    <?php echo $report['temp']; ?>
                      
                    </b>
                  <span class="text_dashboard">&nbsp;(Discharge Low)</span>
                  <?php
                  }
                   elseif($report['amp'] > $get_string_discharcurrent_min2)
                    {
                      ?>
                  <b style="color: red">
                    <?php echo $report['amp']; ?>
                      
                    </b>
                  <span class="text_dashboard">&nbsp;(Discharge Critically Low)</span>
                  <?php
                  }
                    else
                    {
                      if($report['amp'] < 0 )
                      {
                        echo $report['amp'];
                      }
                      else
                      {
                        echo "";
                      }
                    } 

                  }

                  ?>
                    </td>
                    <!-- string discharning current -->
                   <td>
                    <?php
                    if($report['ir'] > $ir_max)
                    {
                    ?>
                    <b style="color: red">
                    <?php echo $report['ir']; ?>
                    </b>
                  <span class="text_dashboard">&nbsp;(IR High)</span>
                    <?php
                    }
                    elseif($report['ir'] >= $ir_min && $report['ir'] < $ir_min2)
                    {
                    ?>
                    <b style="color: red">
                    <?php echo $report['ir']; ?>
                    </b>
                  <span class="text_dashboard">&nbsp;(IR Low)</span>
                    <?php
                    }
                    elseif($report['ir'] < $ir_min2)
                    {
                    ?>
                    <b style="color: red">
                    <?php echo $report['ir']; ?>
                    </b>
                    <span class="text_dashboard">&nbsp;(IR Critically Low)</span>
                    <?php
                    }
                    else
                    {
                      echo $report['ir'];
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
                           if($get_string_bank2->volt > $string_volt_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo $get_string_bank2->volt;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(Over Voltage)</span>
                          <?php
                        }
                        elseif($get_string_bank2->volt >= $string_volt_min && $get_string_bank2->volt < $string_volt_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank2->volt;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(Low Voltage)</span>
                          <?php
                        }
                        elseif($get_string_bank2->volt < $string_volt_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank2->volt;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(Voltage Critically Low)</span>
                          <?php
                        }
                        else
                        {
                         echo $get_string_bank2->volt;
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
                         if($get_string_bank2->temp > $string_temp_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo $get_string_bank2->temp;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(Temp High)</span>
                          <?php
                        }
                        elseif($get_string_bank2->temp >= $string_temp_min && $get_string_bank2->temp < $string_temp_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank2->temp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(Temp Low)</span>
                          <?php
                        }
                         elseif($get_string_bank2->temp < $string_temp_min2)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank2->temp;?>
                              
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
                       &nbsp;&nbsp;
                       String Current:
                       <?php if ($get_string_bank2)
                       {
                         echo $get_string_bank2->amp;
                       }
                       else
                       {
                        echo '<b style="color:red">'."Not found". '</b>';
                       }
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
                    <!-- B0 Calculation bank 2
                    <tr>
                      <td><?php echo $get_string_bank2->date_time; ?></td>
                      <td>B0</td>
                      <td><?php
                        if($get_string_bank2->volt > $string_volt_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo $get_string_bank2->volt;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(Over Voltage)</span>
                          <?php
                        }
                        elseif($get_string_bank2->volt < $string_volt_min)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank2->volt;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(Low Voltage)</span>
                          <?php
                        }
                        else
                        {
                         echo $get_string_bank2->volt;
                        }
                      ?></td>
                      <td><?php
                        if($get_string_bank2->temp > $string_temp_max)
                        {
                          ?>
                          <b style="color: red">
                          <?php echo $get_string_bank2->temp;?>
                            
                          </b>
                         <span class="text_dashboard">&nbsp;(Temp High)</span>
                          <?php
                        }
                        elseif($get_string_bank2->temp < $string_temp_min)
                        {
                          ?>
                            <b style="color: red">
                            <?php echo $get_string_bank2->temp;?>
                              
                            </b>
                           <span class="text_dashboard">&nbsp;(Low Temp)</span>
                          <?php
                        }
                        else
                        {
                          echo $get_string_bank2->temp;
                        }
                      ?></td>
                      <td>
                        <?php
                      if($get_string_bank2->amp < 0){
                        if($site_type_device1->site_type == 1)
                        {
                            if(($get_string_bank2->amp  > $get_string_current1_max))
                            {
                            ?>
                            <b style="color: red">
                              <?php echo $get_string_bank2->amp ; ?>
                              </b>
                            <span class="text_dashboard">&nbsp;(Charging High)</span>
                            <?php
                        }          
                        elseif(($get_string_bank2->amp  < $get_string_current1_min))
                          {
                            ?>
                        <b style="color: red">
                          <?php echo $report['amp']; ?>
                            
                          </b>
                        <span class="text_dashboard">&nbsp;(Charging Low)</span>
                        <?php
                      }

                        else
                        {
                          echo $get_string_bank2->amp ; 
                        }
                        
                         }

                        if($site_type_device1->site_type ==2)
                        {
                            if(($get_string_bank2->amp  > $get_string_current2_max))
                              {
                                ?>
                            <b style="color: red">
                              <?php echo $get_string_bank2->amp ; ?>
                                
                              </b>
                            <span class="text_dashboard">&nbsp;(Charging High)</span>
                            <?php
                          }
                            elseif(($get_string_bank2->amp  < $get_string_current2_min)){
                              ?>
                            <b style="color: red">
                              <?php echo $get_string_bank2->amp; ?>
                                
                              </b>
                            <span class="text_dashboard">&nbsp;(Charging Low)</span>
                            <?php
                          }
                          else
                          {
                             echo $get_string_bank2->amp ;
                          }
                          }
                      }
                      else{
                        echo $get_string_bank2->amp;
                      } 
                      ?>
                        
                      </td>
                      <td>
                        <?php
                        if($get_string_bank2->amp > 0){
                          if(($get_string_bank2->amp < $get_string_discharcurrent_max))
                            {
                              ?>
                          <b style="color: red">
                            <?php echo $get_string_bank2->amp; ?>
                              
                            </b>
                          <span class="text_dashboard">&nbsp;(Discharging High)</span>
                          <?php
                        }          
                        elseif(($get_string_bank2->amp < $get_string_discharcurrent_min))
                          {
                            ?>
                        <b style="color: red">
                          <?php echo $report['amp']; ?>
                            
                          </b>
                        <span class="text_dashboard">&nbsp;(Discharge Low)</span>
                        <?php
                        }
                         elseif(($get_string_bank2->amp < $get_string_discharcurrent_min2))
                          {
                            ?>
                        <b style="color: red">
                          <?php echo $report['amp']; ?>
                            
                          </b>
                        <span class="text_dashboard">&nbsp;(Discharge Critically Low)</span>
                        <?php
                        }
                          else
                          {
                            if($get_string_bank2->amp < 0 )
                            {
                              echo $get_string_bank2->amp;
                            }
                            else
                            {
                              echo "";
                            }
                          } 
                        }
                        else{
                          echo $get_string_bank2->amp;
                        } 
                        ?> 
                        </td>
                      <td>
                        <?php
                        if($get_string_bank2->ir > $ir_max)
                        {
                        ?>
                        <b style="color: red">
                        <?php echo $get_string_bank2->ir; ?>
                        </b>
                      <span class="text_dashboard">&nbsp;(IR High)</span>
                        <?php
                        }
                        elseif($get_string_bank2->ir < $ir_min)
                        {
                        ?>
                        <b style="color: red">
                        <?php echo $get_string_bank2->ir; ?>
                        </b>
                      <span class="text_dashboard">&nbsp;(IR Low)</span>
                        <?php
                        }
                        elseif($get_string_bank2->ir < $ir_min2)
                        {
                        ?>
                        <b style="color: red">
                        <?php echo $get_string_bank2->ir; ?>
                        </b>
                        <span class="text_dashboard">&nbsp;(IR Critically Low)</span>
                        <?php
                        }
                        else
                        {
                          echo $get_string_bank2->ir;
                        }
                        ?>                        
                        </td>
                    </tr>
                    B0 Calculation bank1-->
                  <?php
                  //if($get_string_bank2)
                  //{
                  //for bank2
                if(isset($get_string_bank2->id))
                 {
                  $get_id2 = $get_string_bank2->id;
                 }

                 if(isset($get_string_bank2->device_id))
                 {
                  $device2 = $get_string_bank2->device_id;
                 }
                 else{
                  $device2 = 200;
                 }

                 $this->db->where('site_id',$site_id); 
                 $this->db->where('bank',2); 
                 $this->db->where('node != ','B0'); 
                 $get_user = $this->db->get('tbl_data_update');   
                 $get_report2 =  $get_user->result_array();
                 $this->db->where('device_id',$device2);    
                 $get_device = $this->db->get('device');   
                 $site_type_device2 = $get_device->row();
                 //end bank2 
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
                     if(($report2['volt'] > $cell_volt_max))
                      {
                        ?>
                     <b style="color: red">
                      <?php echo $report2['volt'];?>
                        
                      </b>
                     <span class="text_dashboard">&nbsp;(Over Voltage)</span>
                     <?php
                   }
                   elseif($report2['volt'] >= $cell_volt_min && $report2['volt'] < $cell_volt_min2)
                      {?>
                     <b style="color: red"><?php echo $report2['volt'];?></b>
                     <span class="text_dashboard">&nbsp;(Low Voltage)</span>
                     <?php
                   } 
                  elseif($report2['volt'] < $cell_volt_min2)
                  {
                    ?>
                     <b style="color: red">
                      <?php echo $report2['volt'];?>
                        
                      </b>
                     <span style="color: red;font-size: 12px">&nbsp;(Voltage Critically Low)</span>
                     <?php
                   }
                    else
                    {
                       echo $report2['volt'];
                    }
                    ?>
                    </td>
                    <td>
                    <?php
                    if(($report2['temp'] > $cell_temp_max))
                    {
                    ?>
                    <b style="color: red">
                      <?php echo $report2['temp']; ?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Temp High)</span>
                    <?php 
                  }
                    
                  elseif($report2['temp'] >= $cell_temp_min && $report2['temp'] < $cell_temp_min2)
                  {
                  ?>
                    <b style="color: red">
                      <?php echo $report2['temp']?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Temp Low)</span>
                    <?php
                  }

                  elseif($report2['temp'] < $cell_temp_min2)
                  {
                  ?>
                    <b style="color: red">
                      <?php echo $report2['temp']?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Temp Critically Low)</span>
                    <?php
                  }

                  else
                  {
                     echo $report2['temp'];
                  }
                  ?>

                    </td>
                    <td>
                    <?php 
                if($report2['amp'] > 0){    
                if($site_type_device1->site_type == 1)
                {
                    if(($report2['amp'] > $get_string_current1_max))
                    {
                    ?>
                    <b style="color: red">
                      <?php echo $report2['amp']; ?>
                      </b>
                    <span class="text_dashboard">&nbsp;(Charging High)</span>
                    <?php
                }          
                elseif($report2['amp'] >= $get_string_current1_min && report2['amp'] < $get_string_current1_min2)
                  {
                    ?>
                <b style="color: red">
                  <?php echo $report2['amp']; ?>
                    
                  </b>
                <span class="text_dashboard">&nbsp;(Charging Low)</span>
                <?php
              }

               elseif(report2['amp'] < $get_string_current1_min2)
                  {
                    ?>
                <b style="color: red">
                  <?php echo $report2['amp']; ?>
                    
                  </b>
                <span class="text_dashboard">&nbsp;(Charging Critically Low)</span>
                <?php
              }

                else
                {
                  echo $report2['amp']; 
                }
                
                 }

                if($site_type_device1->site_type ==2)
                {
                    if(($report2['amp'] > $get_string_current2_max))
                      {
                        ?>
                    <b style="color: red">
                      <?php echo $report2['amp']; ?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Charging High)</span>
                    <?php
                  }
                  elseif($report2['amp'] >= $get_string_current2_min && $report2['amp'] < $get_string_current2_min2){
                      ?>
                    <b style="color: red">
                      <?php echo $report2['amp']; ?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Charging Low)</span>
                    <?php
                  }
                  elseif($report2['amp'] < $get_string_current2_min2){
                      ?>
                    <b style="color: red">
                      <?php echo $report2['amp']; ?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Charging Critically Low)</span>
                    <?php
                  }
                  else
                  {
                     echo $report2['amp'];
                  }
                  }
                }
                ?>
                    </td> 

                    <!-- string discharning current -->
                    <td>
                    <?php
                    if($report2['amp'] < 0){ 
                    if(($report2['amp'] < $get_string_discharcurrent_max))
                      {
                        ?>
                    <b style="color: red">
                      <?php echo $report2['amp']; ?>
                        
                      </b>
                    <span class="text_dashboard">&nbsp;(Discharging High)</span>
                    <?php
                  }          
                  elseif($report2['amp'] >= $get_string_discharcurrent_min && $report2['amp'] < $get_string_discharcurrent_min2)
                    {
                      ?>
                  <b style="color: red">
                    <?php echo $report2['amp']; ?>
                      
                    </b>
                  <span class="text_dashboard">&nbsp;(Discharging Low)</span>
                  <?php
                  }
                   elseif($report2['amp'] > $get_string_discharcurrent_min2)
                    {
                      ?>
                  <b style="color: red">
                    <?php echo $report2['amp']; ?>
                      
                    </b>
                  <span class="text_dashboard">&nbsp;(Discharging Critically Low)</span>
                  <?php
                  }
                    else
                    {
                      if($report2['amp'] < 0 )
                      {
                        echo $report2['amp'];
                      }
                      else
                      {
                        echo "";
                      }
                    } 
                  }

                  ?>
                    </td>
                    <!-- string discharning current -->
                   <td>
                    <?php
                    if($report2['ir'] > $ir_max)
                    {
                    ?>
                    <b style="color: red">
                    <?php echo $report2['ir']; ?>
                    </b>
                  <span class="text_dashboard">&nbsp;(IR High)</span>
                    <?php
                    }
                    elseif($report2['ir'] >= $ir_min && $report2['ir'] < $ir_min2)
                    {
                    ?>
                    <b style="color: red">
                    <?php echo $report2['ir']; ?>
                    </b>
                  <span class="text_dashboard">&nbsp;(IR Low)</span>
                    <?php
                    }
                    elseif($report2['ir'] < $ir_min2)
                    {
                    ?>
                    <b style="color: red">
                    <?php echo $report2['ir']; ?>
                    </b>
                    <span class="text_dashboard">&nbsp;(IR Critically Low)</span>
                    <?php
                    }
                    else
                    {
                      echo $report2['ir'];
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

