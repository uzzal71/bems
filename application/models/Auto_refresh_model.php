<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auto_refresh_model extends CI_Model
{
	public function __construct()
	{
        parent::__construct();
		date_default_timezone_set('Asia/Dhaka');
	}
    /**
    ** define data range get data
    **/
	function get_auto_refresh_data()
	{
	 $this->db->order_by('id', 'desc');	
	 $query = $this->db->select('*')->get('tbl_autorefresh')->result_array();   
	 return $query;
	}

	/**
	** define data range get single data
	**/
	function get_autorefresh_id($id)
	{
	  $this->db->where('id',$id);    
	  $get_device = $this->db->get('tbl_autorefresh');   
	  return  $get_device->row();
	}

	/**
	** define data range update data
	**/
	public function update_data($id)
	{
		$data['set_time'] = $this->input->post('set_time', true);
		$data['status'] = $this->input->post('status', true);
	    $data['updated_time'] = DATE('Y-m-d H:i:s');

	    $this->db->where('id', $id);
	    $this->db->update('tbl_autorefresh', $data);
	    return $this->db->affected_rows();
	}


}
?>