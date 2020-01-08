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
                            <div style="font-size: 12px;color: blue;text-align: center;"><b>String Voltage: <?php if ($get_string_bank1) {
                    echo $get_string_bank1->volt;}
                    else echo '<b style="color:red">'."Not found". '</b>';
                      ?>,
                      &nbsp;&nbsp; String Temp: <?php if ($get_string_bank1) {
                    echo $get_string_bank1->temp;}
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

                               <?php
                               $cell_volt_max   = $get_cell_volt->max;
                               $cell_volt_min   = $get_cell_volt->min;
                               $cell_volt_min2   = $get_cell_volt->min2;
                               $string_volt_max = $get_string_volt->max;
                               $string_volt_min = $get_string_volt->min;
                               $cell_temp_max   = $get_cell_temp->max;
                               $cell_temp_min   = $get_cell_temp->min;
                               $string_temp_max = $get_string_temp->max;
                               $string_temp_min = $get_string_temp->min;
                               $get_string_current1_max = $get_string_current1->max;
                               $get_string_current1_min = $get_string_current1->min;
                               $get_string_current2_max = $get_string_current2->max;
                               $get_string_current2_min = $get_string_current2->min;
                               ?>
                               <?php 
                               // for bank1
                               if ($get_string_bank1) {
                               $get_id1 = $get_string_bank1->id;
                               $device1 = $get_string_bank1->device_id;

                               $this->db->where('site_id',$site_id); 
                               $this->db->where('bank',1);                ;
                               $get_user = $this->db->get('tbl_data_update');   
                               $get_report1= $get_user->result_array();

                               $this->db->where('device_id',$device1);    
                               $get_device = $this->db->get('device');   
                               $site_type_device1 = $get_device->row(); 
                               //end bank1
                               ?>

                             <?php if($get_report1){

                             foreach ($get_report1 as $report) {?> 

                             <tr style="font-size: 12px">
                             <td><?php echo $report['date_time']?></td>
                             <td><?php echo $report['node']?></td>
                             <td>

                             <?php if(($report['volt'] > $cell_volt_max)){?>
                             <b style="color: red"><?php echo $report['volt'];?></b>
                             <span class="text_dashboard">&nbsp;(Over Voltage)</span>
                             <?php }

                             elseif (($report['volt'] < $cell_volt_min2)) {?>
                             <b style="color: red"><?php echo $report['volt'];?></b>
                             <span style="color: red;font-size: 12px">&nbsp;(Disconnected)</span>
                             <?php }

                             elseif (($report['volt'] < $cell_volt_min)) {?>
                             <b style="color: red"><?php echo $report['volt'];?></b>
                             <span class="text_dashboard">&nbsp;(Low Voltage)</span>
                             <?php } 

                            else echo $report['volt'];?>
                            </td>
                            <td>
                            <?php if(($report['temp'] > $cell_temp_max)){?>
                            <b style="color: red"><?php echo $report['temp']?></b>
                            <span class="text_dashboard">&nbsp;(High Temp)</span>
                            <?php }
                            
                            elseif (($report['temp'] < $cell_temp_min)) {?>
                            <b style="color: red"><?php echo $report['temp']?></b>
                            <span class="text_dashboard">&nbsp;(Low Temp)</span>
                            <!-- <p style="color: red;font-size: 12px">Low Temp</p> -->
                            <?php }

                            else echo $report['temp'];?>
                            </td>
                            <td>
                            <?php 

                        if ($site_type_device1->site_type == 1) {

                            if(($report['amp'] > $get_string_current1_max)){?>
                            <b style="color: red"><?php echo $report['amp']?></b>
                            <span class="text_dashboard">&nbsp;(Charging High)</span>
                            <?php }          

                            elseif (($report['amp'] < $get_string_current1_min)) {?>
                            <b style="color: red"><?php echo $report['temp']?></b>
                            <span class="text_dashboard">&nbsp;(Discharge High)</span>
                            <?php }

                            else echo $report['amp']; 
                            
                             }

                        if ($site_type_device1->site_type ==2) {

                            if(($report['amp'] > $get_string_current2_max)){?>
                            <b style="color: red"><?php echo $report['amp']?></b>
                            <span class="text_dashboard">&nbsp;(Charging High)</span>
                            <?php }

                            elseif (($report['amp'] < $get_string_current2_min)) {?>
                            <b style="color: red"><?php echo $report['temp']?></b>
                            <span class="text_dashboard">&nbsp;(Discharge High)</span>
                            <!-- <p style="color: red;font-size: 12px">Low Temp</p> -->
                            <?php }
                            else echo $report['amp'];}?>
                            </td> 

                            <!-- string discharning current -->
                            <td>
                            <?php 

                        if ($site_type_device1->site_type == 1) {

                            if(($report['amp'] > $get_string_current1_max)){?>
                            <b style="color: red"><?php echo $report['amp']?></b>
                            <span class="text_dashboard">&nbsp;(Charging High)</span>
                            <?php }          

                            elseif (($report['amp'] < $get_string_current1_min)) {?>
                            <b style="color: red"><?php echo $report['temp']?></b>
                            <span class="text_dashboard">&nbsp;(Discharge High)</span>
                            <!-- <p style="color: red;font-size: 12px">Low Temp</p> -->
                            <?php }

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

                        if ($site_type_device1->site_type ==2) {

                            if(($report['amp'] > $get_string_current2_max)){?>
                            <b style="color: red"><?php echo $report['amp']?></b>
                            <span class="text_dashboard">&nbsp;(Charging High)</span>
                            <?php }

                            elseif (($report['amp'] < $get_string_current2_min)) {?>
                            <b style="color: red"><?php echo $report['temp']?></b>
                            <span class="text_dashboard">&nbsp;(Discharge High)</span>
                            <?php }
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
                          }?>
                            </td> 
                           <td><?php echo $report['ir']?></td>
                           </tr>
                           <?php }?>

                </tr>

                <?php }

                else {?>

                <h4 style="text-align: center;color: red">No data Found</h4>

                <?php }}?>

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
                    <b>String Voltage: <?php if ($get_string_bank2) {
                     echo $get_string_bank2->volt;}
                     else echo '<b style="color:red">'."Not found". '</b>';
                     ?>,
                     &nbsp;&nbsp; String Temp: <?php if ($get_string_bank2) {
                     echo $get_string_bank2->temp;}
                     else echo '<b style="color:red">'."Not found". '</b>';
                     ?>,
                     &nbsp;&nbsp;String Current: <?php if ($get_string_bank2) {
                     echo $get_string_bank2->amp;}
                     else echo '<b style="color:red">'."Not found". '</b>';?>       
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
                                <?php if ($get_string_bank2) {
                                //for bank2

                               $get_id2 = $get_string_bank2->id;
                               $device2 = $get_string_bank2->device_id;

                               $this->db->where('site_id',$site_id); 
                               $this->db->where('bank',2); 
                               $get_user = $this->db->get('tbl_data_update');   
                               $get_report2 =  $get_user->result_array();
                               $this->db->where('device_id',$device2);    
                               $get_device = $this->db->get('device');   
                               $site_type_device2 = $get_device->row();
                               //end bank2 ?>

                       <?php if($get_report2){
                       foreach ($get_report2 as $report2) {?>
                       <tr>
                       <td><?php echo $report2['date_time']?></td>
                       <td><?php echo $report2['node']?></td>

                       <td>
                        <?php if(($report2['volt'] > $cell_volt_max)){?>
                        <b style="color: red"><?php echo $report2['volt'];?></b>
                        <span class="text_dashboard">&nbsp;(Over Voltage)</span>
                        <?php }

                             
                        elseif (($report2['volt'] < $cell_volt_min2)) {?>
                        <b style="color: red"><?php echo $report2['volt'];?></b>
                        <span style="color: red;font-size: 12px">&nbsp;(Disconnected)</span>
                        <?php }

                        
                        elseif (($report2['volt'] < $cell_volt_min)) {?>
                        <b style="color: red"><?php echo $report2['volt'];?></b>
                        <span class="text_dashboard">&nbsp;(Low Voltage)</span>
                        <?php }

                        else echo $report2['volt'];?>
                        </td>

                        <td>
                        <?php if(($report2['temp'] > $cell_temp_max)){?>
                        <b style="color: red"><?php echo $report2['temp']?></b>
                        <span class="text_dashboard">&nbsp;(Over Temp)</span>
                        <?php }

                        elseif (($report2['temp'] < $cell_temp_min)) {?>
                        <b style="color: red"><?php echo $report2['temp']?></b>
                        <span class="text_dashboard">&nbsp;(Low Temp)</span>
                        <?php }

                        else echo $report2['temp'];?>
                        </td>
                        <td>
                        <?php 

                      if ($site_type_device2->site_type == 1) {          
                      if(($report2['amp'] > $get_string_current1_max)){?>
                      <b style="color: red"><?php
                       echo ($report2['amp'] > 0 ? $report2['amp']:"");
                      ?></b>
                      <span class="text_dashboard">&nbsp;(Charging High)</span>
                      <?php }

                      elseif (($report2['amp'] < $get_string_current1_max)) {?>
                      <b style="color: red"><?php echo $report2['temp']?></b>
                      <span class="text_dashboard">&nbsp;(Discharge High)</span> 
                      <?php }

                      else
                       {
                          echo ($report2['amp'] > 0 ? $report2['amp']:"");
                       }
                    }
                      if ($site_type_device2->site_type ==2) {
                      if(($report2['amp'] > $get_string_current2_max)){?>
                      <b style="color: red"><?php
                         echo ($report2['amp'] > 0 ? $report2['amp']:"");
                      ?></b>
                      <span class="text_dashboard">&nbsp;(Charging High)</span>
                      <?php }

                      elseif (($report2['amp'] < $get_string_current2_min)) {?>
                      <b style="color: red"><?php echo $report2['temp']?></b>
                      <span class="text_dashboard">&nbsp;(Discharge High)</span>
                      <?php }

                     else
                     {
                        echo ($report2['amp'] > 0 ? $report2['amp']:"");
                      }
                   }?> 
                     </td>

                     <!-- string discharning current -->
                     <td>
                        <?php 

                      if ($site_type_device2->site_type == 1) {          
                      if(($report2['amp'] > $get_string_current1_max)){?>
                      <b style="color: red"><?php
                      echo ($report2['amp'] < 0 ? $report2['amp']:"");
                      ?></b>
                      <span class="text_dashboard">&nbsp;(Charging High)</span>
                      <?php }

                      elseif (($report2['amp'] < $get_string_current1_max)) {?>
                      <b style="color: red"><?php echo $report2['temp']?></b>
                      <span class="text_dashboard">&nbsp;(Discharge High)</span> 
                      <?php }

                      else
                       {
                          echo ($report2['amp'] < 0 ? $report2['amp']:"");
                       }
                    }
                      if ($site_type_device2->site_type ==2) {
                      if(($report2['amp'] > $get_string_current2_max)){?>
                      <b style="color: red"><?php
                        echo ($report2['amp'] < 0 ? $report2['amp']:"");
                      ?></b>
                      <span class="text_dashboard">&nbsp;(Charging High)</span>
                      <?php }

                      elseif (($report2['amp'] < $get_string_current2_min)) {?>
                      <b style="color: red"><?php echo $report2['temp']?></b>
                      <span class="text_dashboard">&nbsp;(Discharge High)</span>
                      <?php }

                       else
                       {
                          echo ($report2['amp'] < 0 ? $report2['amp']:"");
                       }
                   }?> 
                     </td>
                     <!-- string discharning current -->

                     <td><?php echo $report2['ir']?></td>

                 <?php }?>

                </tr>

                <?php }

                else {?>

                <h4 style="text-align: center;color: red">No data Found</h4>

                <?php }}?>

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


