<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_model extends CI_Model
{
	public function __construct()
	{
        parent::__construct();
		date_default_timezone_set('Asia/Dhaka');
	}

   /**
   ** Password Reset
   **/
   public function update_password($username, $password)
   {
	    $password = sha1($password);

      $data['name'] = $username;
      $data['password'] = $password;
      $this->db->where('name', $username);
      $this->db->update('user', $data);
      return $this->db->affected_rows();
   }

   /**
   ** Get all site id
   **/
   public function get_all_site_id()
   {
     $this->db->order_by('id', 'asc');
    $query = $this->db->select('*')->where('status', 1)->get('site')->result_array();   
    return $query;
   }

   /**
   ** Get Alarm
   **/
   public function get_alarm($site_id)
   {
      $this->db->order_by('date_time', 'desc');
      $this->db->select('DISTINCT(site_id)')->where('site_id', $site_id)->where('remarks', 'Site Down')->where('active', 0);
      $query = $this->db->get('alarm');
      $result = $query->result_array();
      return $result;
   }

   /**
   ** Check user is exists
   **/
   public function check_hava_user($username)
   {
     $this->db->select('*');
     $this->db->from('user');
     $this->db->where('name', $username);
     $query_result = $this->db->get();
     $result = $query_result->row();
     return $result;
   }

}
