<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
** define data range class and inherit ci_controller class
**/
class Data_range extends CI_Controller
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
	** define data range add
	**/
	public function data_range_add()
	{  	
	   $data['page_title'] = 'DATA RANGE ADD';	
       $data['main_contain'] = $this->load->view('data_range/add_data_range.php', $data, true);
       $this->load->view('home',$data);
	}

	/**
	** define data range save
	**/
	public function data_range_save()
	{  	
	   $result = $this->data_range->data_save();
        if($result > 0)
        {
            $data['message'] = "Data range add successfully";
            $this->session->set_userdata($data);
        }
        else
        {
            $data['error'] = "Data range add failed";
            $this->session->set_userdata($data);
        }

        redirect(base_url('DATA-RANGE-LIST'), 'refresh');
	}

	/**
	** define data range list 
	**/
	public function data_range_list()
	{  	
	   $data['page_title'] = 'Data range list';	
       $data['get_range'] = $this->data_range->get_range();
       $data['main_contain'] = $this->load->view('data_range/data_range_list.php', $data, true);
       $this->load->view('home',$data);
	}

	/**
	** define range edit
	**/
	public function data_range_edit($id)
	{
		$data['page_title'] = 'Data range edit';
		$data['get_range_data'] = $this->data_range->get_range_by_id($id);
		$data['main_contain'] = $this->load->view('data_range/data_range_edit.php', $data, true);
		$this->load->view('home',$data); 
	}

	/**
	** define data range update
	**/
	public function data_range_update($id)
	{
		$result = $this->data_range->update_data($id);
        if($result > 0)
        {
            $data['message'] = "Data range update successfully done";
            $this->session->set_userdata($data);
        }
        else
        {
            $data['error'] = "Data range update failed";
            $this->session->set_userdata($data);
        }

        redirect(base_url('DATA-RANGE-LIST'), 'refresh');
	}

	/** define Data range delete 
	**
	**/
	public function data_range_delete($id)
	{
		$result = $this->data_range->data_range_delete($id);
        if($result > 0)
        {
            $data['message'] = "Data range delete successfully done";
            $this->session->set_userdata($data);
        }
        else
        {
            $data['error'] = "Data range update failed";
            $this->session->set_userdata($data);
        }

        redirect(base_url('DATA-RANGE-LIST'), 'refresh');
	}



}
