<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
** define menu class and inherit ci_controller class
**/
class Menu extends CI_Controller
{
	/**
	** define class constructor
    ** constructor is a autoload magic methods
	**/
	public function __construct()
    {
        parent::__construct();
         if ($this->session->userdata('admin_login')!=1) {
			redirect(base_url(''),'refresh');
		}  
    }

    /**
    ** define add menu
    **/
    public function add_menu()
    {
        $data['page_title'] = 'Add menu';
        $data['all_parent'] = $this->menu->all_parent();
        $data['main_contain'] = $this->load->view('menu/add_menu.php', $data, true);
        $this->load->view('home', $data);
    }

    /**
    ** define menu Save
    **/

    public function menu_save()
    {
        $result = $this->menu->save_data();
        if($result > 0)
        {
            echo "Menu add successfully done";
        }
        else
        {
            echo "Menu add failed";
        }
    }

    /**
    ** define menu list
    **/
    public function menu_list()
    {
        $data['page_title'] = 'Menu list';
        $data['menu_list'] = $this->menu->menu_list();
        $data['main_contain'] = $this->load->view('menu/menu_list.php', $data, true);
        $this->load->view('home', $data);
    }

    /**
    ** define menu Edit
    **/
    public function menu_edit($id)
    {
        $data['page_title'] = 'Menu edit';
        $data['specific_menu'] = $this->menu->specific_menu($id);
        $data['all_parent'] = $this->menu->all_parent();
        $data['main_contain'] = $this->load->view('menu/menu_edit.php', $data, true);
        $this->load->view('home', $data);
    }

    /**
    ** define menu Update
    **/
    public function menu_update()
    {
        $id = $this->input->post('id', true);
        $result = $this->menu->update_data($id);
        if($result > 0)
        {
            echo "Menu Update successfully done";
        }
        else
        {
            echo "Menu update failed";
        }
    }

    /**
    ** define menu delete
    **/
    public function menu_delete($id)
    {
        $result = $this->menu->menu_delete($id);
        if($result > 0)
        {
            $data['message'] = "Menu delete successfully done";
            $this->session->set_userdata($data);
        }
        else
        {
            $data['error'] = "Menu Delete failed";
            $this->session->set_userdata($data);
        }

        redirect(base_url('MENU-LIST'), 'refresh');

    }
    

}
