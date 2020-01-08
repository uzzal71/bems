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
                  <p class="updated_time">Updated:2019-07-02 5:05PM</p>
                </div>
              </div>
              <div class="row string_info">
                <div class="col-md-4">
                  <p class="str_info">
                    <span class="title">String Voltage:</span>
                    <input type="" name="" value="53.25V" readonly>
                  </p>
                </div>
                <div class="col-md-4">
                  <p class="str_info">
                    <span>String Temp:</span>
                    <input type="" name="" value="23.25℃" readonly>
                  </p>
                </div>
                <div class="col-md-4">
                  <p class="str_info">
                    <span>String Current:</span>
                    <input type="" name="" value="23.25Ω" readonly>
                  </p>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  <ul class="battary_cell">
                    <li>B1-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B2-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B3-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B4-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B5-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B6-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B7-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B8-2.25V / 23.90℃ / 2.49mΩ</li>
                  </ul>
                </div>
                <div class="col-md-4">
                  <ul class="battary_cell">
                    <li>B9-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B10-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B11-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B12-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B13-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B14-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B15-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B16-2.25V / 23.90℃ / 2.49mΩ</li>
                  </ul>
                </div>
                <div class="col-md-4">
                  <ul class="battary_cell">
                    <li>B17-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B18-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B19-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B20-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B21-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B22-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B23-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B24-2.25V / 23.90℃ / 2.49mΩ</li>
                  </ul>
                </div>
              </div>
            </div>
          </div><!--bank 1-->
          <?php else: ?>
            <div id="bank1" class="tab-pane fade in active">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-12">
                    <h2 style="text-align: center;color: red">Bank One Data Not Found</h2>
                  </div>
                </div>
              </div>
            </div>
           <?php endif; ?> 


          <?php if(count($get_report2) > 0): ?>
            
          <div id="bank2" class="tab-pane fade">
            <div class="container-fluid">
              <br/>
              <div class="row">
                <div class="col-md-12">
                  <p class="updated_time">Updated:2019-07-02 5:05PM</p>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  <p class="str_info">
                    <span class="title">String Voltage:</span>
                    <input type="" name="" value="53.25V" readonly>
                  </p>
                </div>
                <div class="col-md-4">
                  <p class="str_info">
                    <span>String Temp:</span>
                    <input type="" name="" value="23.25℃" readonly>
                  </p>
                </div>
                <div class="col-md-4">
                  <p class="str_info">
                    <span>String Current:</span>
                    <input type="" name="" value="23.25Ω" readonly>
                  </p>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  <ul class="battary_cell">
                    <li>B1-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B2-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B3-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B4-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B5-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B6-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B7-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B8-2.25V / 23.90℃ / 2.49mΩ</li>
                  </ul>
                </div>
                <div class="col-md-4">
                  <ul class="battary_cell">
                    <li>B9-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B10-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B11-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B12-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B13-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B14-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B15-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B16-2.25V / 23.90℃ / 2.49mΩ</li>
                  </ul>
                </div>
                <div class="col-md-4">
                  <ul class="battary_cell">
                    <li>B17-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B18-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B19-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B20-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B21-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B22-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B23-2.25V / 23.90℃ / 2.49mΩ</li>
                    <li>B24-2.25V / 23.90℃ / 2.49mΩ</li>
                  </ul>
                </div>
              </div>
            </div>
          </div><!--bank 2-->
          <?php else: ?>
            <div id="bank1" class="tab-pane fade in active">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-12">
                    <h2 style="text-align: center;color: red">Bank Two Data Not Found</h2>
                  </div>
                </div>
              </div>
            </div>
           <?php endif; ?> 
        </div>
        <!-- Code Here.... -->
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
  background-color: tomato !important;
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