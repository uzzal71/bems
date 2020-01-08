<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Site_model extends CI_Model
{
	/**
	** get all site
	**/
	function site_list()
	{
	 $this->db->order_by('id', 'desc');
	 $query = $this->db->select('*')->get('site')->result_array();   
	 return $query;
	}

	/**
	** Specific site get data here...
	**/
	public function specific_site($id)
	{
		$this->db->where('id',$id);    
		$result = $this->db->get('site');   
		return $result->row();
	}

	/**
	** Site data save here...
	**/
	public function save_data()
	{
		$data['site_id'] = $this->input->post('site_id', true);		
	    $data['site_name'] = $this->input->post('site_name', true);
	    $data['phone1'] = $this->input->post('phone1', true);
	    $data['phone2'] = $this->input->post('phone2', true);
	    $data['email1'] = $this->input->post('email1', true);
	    $data['email2'] = $this->input->post('email2', true);
	    $data['status'] = $this->input->post('status', true);
	    $this->db->insert('site', $data);
		return $this->db->affected_rows();
	}

	/**
	** Site data save here...
	**/
	public function update_data($id)
	{
		$data['site_id'] = $this->input->post('site_id', true);		
	    $data['site_name'] = $this->input->post('site_name', true);
	    $data['phone1'] = $this->input->post('phone1', true);
	    $data['phone2'] = $this->input->post('phone2', true);
	    $data['email1'] = $this->input->post('email1', true);
	    $data['email2'] = $this->input->post('email2', true);
	    $data['status'] = $this->input->post('status', true);
	    $this->db->where('id', $id);
		$this->db->update('site', $data);
		return $this->db->affected_rows();
	}

	/**
	** define site delete
	**/
	public function delete_data($id)
	{
		$this->db->delete('site', array('id' => $id));
		return $this->db->affected_rows();
	}

	/** get site name **/
	public function get_site_name($site_id)
	{
		$this->db->select('site_name')->where('site_id', $site_id);
        $query = $this->db->get('site');
        $result = $query->row();
        $site_name = $result->site_name;
        return $site_name;
	}

    



}
?>