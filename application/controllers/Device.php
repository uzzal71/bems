<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
** define device class and inherit ci_controller class
**/
class Device extends CI_Controller
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
	** define device add
	**/
	public function add_device()
	{
		// Codding Here...
        $data['page_title'] = 'Device add';
        $data['site_list'] = $this->site->site_list();
        $data['main_contain'] = $this->load->view('device/add_device.php', $data, true);
        $this->load->view('home', $data);
	}

	/**
	** define device sage daata
	**/
	public function device_save_data()
	{
		$result = $this->device->save_device();
        if($result > 0)
        {
            $data['message'] = "Device added successfully done";
            $this->session->set_userdata($data);
        }
        else
        {
            $data['error'] = "Device add failed";
            $this->session->set_userdata($data);
        }

        redirect(base_url('DEVICE-LIST'), 'refresh');
	}

	/**
	** define device list
	**/
	public function device_list()
	{
		// Codding Here...
        $data['page_title'] = 'Device list';
        $data['device_list'] = $this->device->device_list();
        $data['main_contain'] = $this->load->view('device/device_list.php', $data, true);
        $this->load->view('home', $data);
	}

	/**
	** define device edit
	**/
	public function device_edit($id)
	{
		// Codding Here...
        $data['page_title'] = 'Device edit';
        $data['get_device'] = $this->device->get_device_by_id($id);
        $data['site_list'] = $this->site->site_list();
        $data['main_contain'] = $this->load->view('device/device_edit.php', $data, true);
        $this->load->view('home', $data);
	}

	/**
	** define device update
	**/
	public function device_update($id)
	{
		$result = $this->device->update_device($id);
        if($result > 0)
        {
            $data['message'] = "Device update successfully done";
            $this->session->set_userdata($data);
        }
        else
        {
            $data['error'] = "Device update failed";
            $this->session->set_userdata($data);
        }

        redirect(base_url('DEVICE-LIST'), 'refresh');
	}

	/**
	** define device delete
	**/
	public function device_delete($id)
	{
		$result = $this->device->device_delete($id);
        if($result > 0)
        {
            $data['message'] = "Device delete successfully done";
            $this->session->set_userdata($data);
        }
        else
        {
            $data['error'] = "Device delete failed";
            $this->session->set_userdata($data);
        }

        redirect(base_url('DEVICE-LIST'), 'refresh');
	}


}
