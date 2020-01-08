<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_range_model extends CI_Model
{
	public function __construct()
	{
        parent::__construct();
		date_default_timezone_set('Asia/Dhaka');
	}
    /**
    ** define data range get data
    **/
	function get_range()
	{
	 $this->db->order_by('id', 'desc');	
	 $query = $this->db->select('*')->get('data_range')->result_array();   
	 return $query;
	}

	/**
	** define data range save data
	**/
	public function data_save()
	{
		$data['parameter'] = $this->input->post('parameter', true);
	    $data['max'] = $this->input->post('max', true);
	    $data['min'] = $this->input->post('min', true);
	    $data['min2'] = $this->input->post('min2', true);
	    $data['status'] = $this->input->post('status', true);
	    $this->db->insert('data_range', $data);
	    return $this->db->affected_rows();
	}

	/**
	** define data range get single data
	**/
	function get_range_by_id($id)
	{
	  $this->db->where('id',$id);    
	  $get_device = $this->db->get('data_range');   
	  return  $get_device->row();
	}

	/**
	** define data range update data
	**/
	public function update_data($id)
	{
		$data['parameter'] = $this->input->post('parameter', true);
	    $data['max'] = $this->input->post('max', true);
	    $data['min'] = $this->input->post('min', true);
	    $data['min2'] = $this->input->post('min2', true);
	    $data['status'] = $this->input->post('status', true);

	    $this->db->where('id', $id);
	    $this->db->update('data_range', $data);
	    return $this->db->affected_rows();
	}

	/**
	** define data range delete data
	**/
	public function data_range_delete($id)
	{
		$this->db->delete('data_range', array('id' => $id));
		return $this->db->affected_rows();
	}



}
?>