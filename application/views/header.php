    <header class="main-header">

    <!-- Logo -->
    <a href="" class="logo">
      <span class="logo-mini"><b>BE</b>MS</span>
      <span class="logo-lg"><b>B</b>-EMS</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- <div class="navbar-custom-menu">
        <P style="color: #FFFFFF;margin: 15px 11px;letter-spacing: 0.5px">
          LOGINED IN : <?php echo $this->session->userdata('username'); ?>
        </P>
      </div> -->
      <!-- logout, change password -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <span class="hidden-xs">LOGINED IN : <?php echo $this->session->userdata('username'); ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                  <img src="<?php echo base_url(); ?>./assets/icon/user.png" class="img-circle" alt="User Image">
                <p> <?php echo $this->session->userdata('username'); ?></p>
              </li>
              <!-- Menu Body -->

              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="<?php echo base_url('reset-password'); ?>" class="btn btn-default btn-flat">Reset Password</a>
                </div>
                <div class="pull-right">
                  <a href="<?php echo site_url('admin/logout'); ?>" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->

        </ul>
      </div>
      <!-- logout, change password -->
    </nav>

  </header>