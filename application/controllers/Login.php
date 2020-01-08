<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
** define login class and inherit ci_controller class
**/
class Login extends CI_Controller {

	/**
	** define class constructor
	** constructor is a autoload magic methods
	**/
	function __construct()
	{
        parent::__construct();
        if ($this->session->userdata('admin_login')==1) {
			redirect('admin','refresh');
		}  
    }

    /**
    ** define login system
    **/
	public function index()
	{
		$this->load->view('login');
	}

	/**
	** define check login 
	**/
	public function attempt_login()
	{
		$username = $this->input->post('username');
		$password = sha1($this->input->post('password'));

		$credentials = array('name' => $username, 'password' => $password);

		$query = $this->db->get_where('user',$credentials);

		if ($query->num_rows()>0) {
	        $data['admin_login'] = 1;
	        $data['username'] = $query->row()->name;

	        $menu_data = $query->row()->user_role;
	        $menu_data =  explode(",", $menu_data);

	        $data['main_menu_id'] = array();
	        $data['sub_menu_id'] = array();
	        // parent menu and sub menu id separate
	        foreach($menu_data as $d):
	        	$condition = array('id' => $d);
	        	$query2 = $this->db->get_where('menu',$condition);
	        	if ($query2->num_rows()>0)
	        	{
		        	if($query2->row()->parent_id == 0):
		        		array_push($data['main_menu_id'], $query2->row()->id);
		        	else:
		        		array_push($data['sub_menu_id'], $query2->row()->id);
		        	endif;
	        	}
	    	endforeach;

	     	$this->session->set_userdata($data);
	     	redirect('admin', 'refresh');
		}
		else{
			$data['message'] = "Invalid username or password please try again";
			$this->session->set_userdata($data);
			redirect(base_url(), 'refresh');
		}
	}


}
