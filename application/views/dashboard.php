<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="main_part" style="margin-top: -25px">
               <!-- show site alarm -->
              <div class="row">
                <?php
                $count = count($site_list)/3;
                $j = 0;
                for($i = 1; $i < 4; $i++):
                ?>
                <div class="col-md-4">
                  <div class="box-body">
                    <table class="table table-bordered table-striped">
                      <thead>
                      <tr>
                        <th>Site ID</th>
                        <th>Site Name</th>              
                        <th>Status</th>
                      </tr>
                      </thead>
                      <tbody>
                      <?php
                     for($j = $j; $j < $count*$i; $j++):
                       ?>
                      <tr>
                        <td><?php echo $site_list[$j]["site_id"]; ?></td>
                        <td><?php echo $site_list[$j]["site_name"]; ?></td>
                        <td>
                        <?php 
                          $alarms = $this->admin->get_alarm($site_list[$j]["site_id"]);
                          if($alarms)
                          {
                           ?>
                          <a href="<?php echo base_url('updated-data-view/'.$site_list[$j]["site_id"]); ?>"><div class="led-red"></div></a>
                          <?php
                          }
                          else {?>
                            <a href="<?php echo base_url('updated-data-view/'.$site_list[$j]["site_id"]); ?>"><div class="led-green"></div></a>
                        <?php } 
                         ?>
                         </td>
                      </tr> 
                    <?php endfor; ?>
                      </tbody>
                    </table>
                </div>
              </div>
            <?php
          endfor;
          ?>
              <!-- show site alarm -->
            </div>
        </div>
    </div>
</section>
<style type="text/css">

.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    padding: 4px;
    font-size: 19px;
    line-height: 1.42857143;
    vertical-align: top;
    border-top: 1px solid #ddd;
    font-size: 16px;
  }


</style>

<script type="text/javascript">
  
$( function() {
  var $winHeight = $( window ).height()
  $( '.container' ).height( $winHeight );
});

</script>
