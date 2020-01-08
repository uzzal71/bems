<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller
{
	/**
	** define constructor
	**/
	public function __construct() {
        parent::__construct();
         if ($this->session->userdata('admin_login')!=1) {
			redirect(base_url(''),'refresh');
		}  
    }
    /**
    ** entry admin page
    **/
	public function index()
	{
		$data['page_title'] = 'DASHBOARD - SITE STATUS';
		$data['site_list'] = $this->admin->get_all_site_id();
		$data['main_contain'] = $this->load->view('dashboard.php', $data, true);
		$this->load->view('home', $data);
	}

	/**
	** User Logout
	**/
	public function logout(){
		$this->session->unset_userdata('admin_login');
        $username= $this->session->userdata('username');
        $this->session->unset_userdata('username');
        $data=array();
        $data['message']='Logout successfully, goodbye!';
        $this->session->set_userdata($data);
        redirect(base_url(), 'refresh');
	}

	/**
	** Password reset
	**/
	public function password_reset()
	{
		$data['page_title'] = 'Password Reset';
		$data['main_contain'] = $this->load->view('file/reset-password.php', $data, true);
		$this->load->view('home', $data);
	}

	/**
	** Change passwrod
	**/
	public function change_passwrod()
	{	
	 	$username = $this->input->post('username', true);
	 	$password = $this->input->post('password', true);
	 	$confirm_password = $this->input->post('confirm_password', true);

	 	$result = $this->admin->check_hava_user($username);
	 	
	     if(isset($result->name))
	     {
	     	if($password == $confirm_password)
	     	{
	     		$update_result = $this->admin->update_password($username, $password);
	     		if($update_result)
	     		{
	     		   $data['error'] = "Passsword change success!";
	               $this->session->set_userdata($data);
	       	       redirect(base_url('reset-password'), 'refresh');
	     		}else{
	     		   $data['error'] = "Password not change!";
	               $this->session->set_userdata($data);
	       	       redirect(base_url('reset-password'), 'refresh');
	     		}
	     	}else{
	     	   $data['error'] = "Confirm password does not match!";
	           $this->session->set_userdata($data);
	       	   redirect(base_url('reset-password'), 'refresh');
	     	}
	     }else{
	      $data['error'] = "Invalid username!";
          $this->session->set_userdata($data);
       	  redirect(base_url('reset-password'), 'refresh');
	     }
	}


}
