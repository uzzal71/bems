  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">


      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
      <!-- <li class="header" style="text-align: center;color: #F79F1F;letter-spacing: 1px;font-weight: bold;">
        MENU LIST
      </li> -->

        <!-- MENU -->
        <?php 
        $main_menu_id = $this->session->userdata('main_menu_id');
        foreach($main_menu_id as $menu_id):
         ?>
        <li class="treeview">
          <?php 
          $condition = array('id' => $menu_id);
            $menus = $this->db->get_where('menu', $condition)->result_array();
            foreach ($menus as $row):
           ?>
          <a href="#">
            <?php
            if($row['menu_name'] == 'File')
              {
                ?>
                <i class="fa fa-file icon_tree_color"></i>
              <?php
            }
            else if($row['menu_name'] == 'Menu')
            {
              ?>
              <i class="fas fa-graduation-cap icon_tree_color"></i>
              <?php
            }
            else if($row['menu_name'] == 'User')
            {
              ?>
              <i class="fa fa-user icon_tree_color"></i>
              <?php
            }
            else if($row['menu_name'] == 'Site')
            {
              ?>
              <i class="fa fa-sitemap icon_tree_color"></i>
              <?php
            }
            else if($row['menu_name'] == 'Device')
            {
              ?>
              <i class="fa fa-bolt icon_tree_color"></i>
              <?php
            }
            else if($row['menu_name'] == 'Data Range')
            {
              ?>
              <i class="fa fa-bug icon_tree_color"></i>
              <?php
            }
            else if($row['menu_name'] == 'Report')
            {
              ?>
              <i class="fa fa-bar-chart icon_tree_color"></i>
              <?php
            }
            else
            {
             ?>
             <i class="fa fa-file icon_tree_color"></i>
             <?php 
            }
            ?>
            <span><?php echo $row['menu_name']; ?></span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <?php endforeach; ?>
          <!-- submenu -->
          <ul class="treeview-menu">
         <?php 
          $condition = array('parent_id' => $row['id']);
          $menus = $this->db->get_where('menu', $condition)->result_array();
          foreach ($menus as $row):
            $sub_menu_id = $this->session->userdata('sub_menu_id');
            foreach($sub_menu_id as $sub_menu):
              if($row['id'] == $sub_menu):
         ?>
            <li><a href="<?php echo base_url()?><?php echo $row['menu_url']; ?>">
            <i class="far fa-circle icon_tree_color"></i> 
            <?php echo $row['menu_name']; ?></a></li>
        <?php
          endif;
          endforeach;
          endforeach;
        ?>
        </ul>
          <!-- sub menu -->
        </li>
      <?php
      endforeach;
    ?>
        <!-- END MENU -->

      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>