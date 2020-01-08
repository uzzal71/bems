<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
** define user class and inherit ci_controller
**/
class User extends CI_Controller
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
    ** define user add
    **/
    public function create_user()
    {
    	// Codding Here...
        $data['page_title'] = 'User add';
        $data['main_contain'] = $this->load->view('user/add_user.php', $data, true);
        $this->load->view('home', $data);
    }

    /**
    ** define user list
    **/
    public function user_list()
    {
    	// Codding Here...
        $data['page_title'] = 'User list';
        $data['user_list'] = $this->user->user_list();
        $data['main_contain'] = $this->load->view('user/user_list.php', $data, true);
        $this->load->view('home', $data);
    }

    /**
    ** define user edit
    **/
    public function user_edit($id)
    {
    	// Codding Here...
        $data['page_title'] = 'User edit';
        $data['edit_user'] = $this->user->get_specific_user($id);
        $data['main_contain'] = $this->load->view('user/user_edit.php', $data, true);
        $this->load->view('home', $data);
    }

    /**
    ** define user save
    **/
    public function user_save()
    {
    	$result = $this->user->save_user();
    	if($result > 0)
    	{
    		echo "User save successfully done";
    	}
    	else
    	{
    		echo "User save failed";
    	}        
    }

    /**
    ** define user update
    **/
    public function user_update()
    {
        $id = $this->input->post('id', true);
        $result = $this->user->update_data($id);
        if($result > 0)
        {
            echo "User update successfully done";
        }
        else
        {
            echo "User update failed";
        }
    }
    
    /**
    ** define user delete
    **/
    public function user_delete($id)
    {
        $result = $this->user->user_delete($id);
        if($result > 0)
        {
            $data['message'] = "User delete successfully done";
            $this->session->set_userdata($data);
        }
        else
        {
            $data['error'] = "User delete failed";
            $this->session->set_userdata($data);
        }
        redirect(base_url('USER-LIST'), 'refresh');
    }



}
?>