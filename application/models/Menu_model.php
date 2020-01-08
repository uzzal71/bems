<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menu_model extends CI_Model
{
	/**
	** Get All menu
	**/    
	public function menu_list()
	{
	 $this->db->order_by("id", "desc");
	 $query = $this->db->select('*')->get('menu')->result_array();   
	 return $query;
	}

	/**
	** menu Data Save
	**/
	public function save_data()
	{
		$data['menu_name'] = $this->input->post('menu_name', true);
		$data['parent_id'] = $this->input->post('parent_id', true);
		$data['menu_url'] = $this->input->post('menu_url', true);
		$data['status'] = $this->input->post('status', true);
		$data['created_at'] = date("Y-m-d H:i:s");
	    $data['created_by'] = $this->session->userdata('username', true);
		$this->db->insert('menu', $data);
		return $this->db->affected_rows();

	}

	/**
	** get single menu data
	**/
	public function specific_menu($id)
	{
		$this->db->where('id',$id);    
		$result = $this->db->get('menu');   
		return $result->row();
	}

	/**
	** update menu data
	**/
	public function update_data($id)
	{
		$data['menu_name'] = $this->input->post('menu_name', true);
		$data['parent_id'] = $this->input->post('parent_id', true);
		$data['menu_url'] = $this->input->post('menu_url', true);
		$data['status'] = $this->input->post('status', true);
		$data['created_at'] = date("Y-m-d H:i:s");
	    $data['created_by'] = $this->session->userdata('username', true);
		$this->db->where('id', $id);
		$this->db->update('menu', $data);
		return $this->db->affected_rows();
	}

	/**
	** menu Delete
	**/
	public function menu_delete($id)
	{
		$this->db->delete('menu', array('id' => $id));
		return $this->db->affected_rows();
	}

	/**
	** get all parent menu
	**/
	public function all_parent()
	{
		$query = $this->db->select('*')->get('menu')->result_array();   
	 	return $query;
	}
	



}
?>