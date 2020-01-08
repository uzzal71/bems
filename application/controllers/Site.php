<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
** define site class and inherit ci_controller
**/
class Site extends CI_Controller
{
	/**
	** define class constructor
	** constructor is a autoload magic methods
	**/
	function __construct()
	{
        parent::__construct();
        if ($this->session->userdata('admin_login')!=1) {
			redirect(base_url(''),'refresh');
		}   
    }

	/**
	** define site add 
	**/
	public function add_site()
	{
		// Codding Here...
        $data['page_title'] = 'Site add';
        $data['main_contain'] = $this->load->view('site/add_site.php', $data, true);
        $this->load->view('home', $data);
	}

	/**
	** define site save
	**/
	public function site_save()
	{
		$result = $this->site->save_data();
		 if($result > 0)
        {
            $data['message'] = "Site add successfully done";
            $this->session->set_userdata($data);
        }
        else
        {
            $data['error'] = "Site add failed";
            $this->session->set_userdata($data);
        }

        redirect(base_url('SITE-LIST'), 'refresh');
	}

	/**
	** define site list
	**/
	public function site_list()
	{
		// Codding Here...
        $data['page_title'] = 'Site list';
        $data['site_list'] = $this->site->site_list();
        $data['main_contain'] = $this->load->view('site/site_list.php', $data, true);
        $this->load->view('home', $data);
	}

	/**
	** define site edit
	**/
	public function site_edit($id)
	{
		// Codding Here...
        $data['page_title'] = 'Site edit';
        $data['specific_site'] = $this->site->specific_site($id);
        $data['main_contain'] = $this->load->view('site/site_edit.php', $data, true);
        $this->load->view('home', $data);
	}

	/**
	** define site update
	**/
	public function site_update($id)
	{
		$result = $this->site->update_data($id);
		 if($result > 0)
        {
            $data['message'] = "Site update successfully done";
            $this->session->set_userdata($data);
        }
        else
        {
            $data['error'] = "Site update failed";
            $this->session->set_userdata($data);
        }

        redirect(base_url('SITE-LIST'), 'refresh');
	}

	/**
	** define site delete
	**/
	public function site_delete($id)
	{
		$result = $this->site->delete_data($id);
		 if($result > 0)
        {
            $data['message'] = "Site delete successfully done";
            $this->session->set_userdata($data);
        }
        else
        {
            $data['error'] = "Site delete failed";
            $this->session->set_userdata($data);
        }

        redirect(base_url('SITE-LIST'), 'refresh');
	}






}
