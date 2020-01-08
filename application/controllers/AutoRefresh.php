<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
** define data range class and inherit ci_controller class
**/
class AutoRefresh extends CI_Controller
{
	/**
	** define class constructor
	** constructor is a autoload magic methods
	**/
	public function __construct() {
        parent::__construct();
         if ($this->session->userdata('admin_login')!=1) {
			redirect(base_url(''),'refresh');
		}  
    }

	/**
	** define range edit
	**/
	public function auto_refresh_edit($id)
	{
		$data['page_title'] = 'Data range edit';
		$data['auto_refresh_data'] = $this->auto_refresh->get_autorefresh_id($id);
		$data['main_contain'] = $this->load->view('auto_refresh/auto_refresh_edit.php', $data, true);
		$this->load->view('home',$data); 
	}

	/**
	** define data range update
	**/
	public function auto_refresh_update($id)
	{
		$result = $this->auto_refresh->update_data($id);
        if($result > 0)
        {
            $data['message'] = "Auto Refresh update successfully done";
            $this->session->set_userdata($data);
        }
        else
        {
            $data['error'] = "Auto Refresh update failed";
            $this->session->set_userdata($data);
        }

        redirect(base_url('auto-refresh'), 'refresh');
	}



	/*** auto_refresh_list **/
	public function auto_refresh_list()
	{
	   $data['page_title'] = 'Settings Auto Refresh';	
       $data['get_auto'] = $this->auto_refresh->get_auto_refresh_data();
       $data['main_contain'] = $this->load->view('auto_refresh/auto_refresh.php', $data, true);
       $this->load->view('home',$data);
	}



}
