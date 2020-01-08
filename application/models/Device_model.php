<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Device_model extends CI_Model
{
	/**
	** get all site
	**/
	function device_list()
	{
	 $this->db->order_by('id', 'desc');	
	 $query = $this->db->select('*')->get('device')->result_array();   
	 return $query;
	}
    
	/**
	** define device data save
	**/
	function save_device()
	{
		$device_id = $this->input->post('device_id', true);
	    $ip_address = $this->input->post('ip_address', true);
	    $site_id = $this->input->post('site_id', true);	   
	    $bank = $this->input->post('bank', true);
	    $site_type = $this->input->post('site_type', true);	    
	    $node = $this->input->post('node');
	    $node_name = $this->input->post('node_name');
	    $status = $this->input->post('status', true);	    
	    $total_row = count($node);
	    for($i = 0; $i < $total_row; $i++)
	    {
	    	$sql = "INSERT INTO `device`(`device_id`, `ip_address`, `site_id`, `bank`, `site_type`, `node`, `node_name`, `status`) VALUES ('$device_id','$ip_address','$site_id','$bank', '$site_type', '$node[$i]','$node_name[$i]','$status')";
	    	$this->db->query($sql);
	    }	   

		return $this->db->affected_rows();
	}

	/**
	** define update device data
	**/
	public function update_device($id)
	{
		$data['device_id'] = $this->input->post('device_id', true);
	    $data['ip_address'] = $this->input->post('ip_address', true);	    
	    $data['site_id'] = $this->input->post('site_id', true);	    
	    $data['bank'] = $this->input->post('bank', true);	    
	    $data['site_type'] = $this->input->post('site_type', true); 
	    $data['node'] = $this->input->post('node', true); 	
	    $data['node_name'] = $this->input->post('node_name', true); 	
	    $data['status'] = $this->input->post('status', true); 	

		$this->db->where('id', $id);
		$this->db->update('device', $data);
		return $this->db->affected_rows();
	}

	/**
	** define device delete 
	**/
	public function device_delete($id)
	{
		$this->db->delete('device', array('id' => $id));
		return $this->db->affected_rows();
	}

	/**
	** define get single device data
	**/
	function get_device_by_id($id)
	{
	  $this->db->where('id',$id);    
	  $get_device = $this->db->get('device');   
	  return  $get_device->row();
	}



}
?>