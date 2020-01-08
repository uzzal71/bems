<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report_model extends CI_Model
{
  	public function __construct()
  	{
      parent::__construct();
  		date_default_timezone_set('Asia/Dhaka');
  	}

    /**
    ** get site
    **/
    public function get_site()
    {
     $query = $this->db->select('*')->where('status',1)->get('site')->result_array();   
     return $query;
    }


    /**
    ** Get site data by id
    **/
    public function get_sitedata_by_id($site_id)
    {
      $this->db->where('site_id',$site_id);    
      $get_device = $this->db->get('site');   
      return  $get_device->row();
    }

    /**
    ** Get string bank one
    **/
    public function get_string_bank1($site_id)
    {
       $this->db->where('site_id',$site_id); 
       $this->db->where('bank',1); 
      $this->db->where('node', 'B0'); 
       $get_user = $this->db->get('tbl_data_update');   
       return  $get_user->row();

    }

    /**
    ** Get string bank two
    **/
    public function get_string_bank2($site_id)
    {
     $this->db->where('site_id',$site_id); 
     $this->db->where('bank',2); ;
     $this->db->where('node', 'B0');
     $get_user = $this->db->get('tbl_data_update');   
     return  $get_user->row();
    }

    /**
    ** Get Cell Volt
    **/
    public function get_cell_volt()
    {
      $this->db->where('id',1);    
      $get_device = $this->db->get('data_range');   
      return  $get_device->row();
    }

    /**
    ** Get string voltage
    **/
    public function get_string_voltage()
    {
      $this->db->where('id',2);    
      $get_device = $this->db->get('data_range');   
      return  $get_device->row();
    }

    /**
    ** Get Cell Temp
    **/
    public function get_cell_temp()
    {
      $this->db->where('id',3);    
      $get_device = $this->db->get('data_range');   
      return  $get_device->row();
    }

    /**
    ** Get string temp
    **/
    public function get_string_temp()
    {
      $this->db->where('id',4);    
      $get_device = $this->db->get('data_range');   
      return  $get_device->row();
    }

    /**
    ** Get string current one
    **/
    public function get_string_current1()
    {
      $this->db->where('id',5);    
      $get_device = $this->db->get('data_range');   
      return  $get_device->row();
    }

    /**
    ** Get string current two
    **/
    public function get_string_current2()
    {
      $this->db->where('id',6);    
      $get_device = $this->db->get('data_range');   
      return  $get_device->row();
    }

     /**
    ** Get string discharging current
    **/
    public function get_string_discharcurrent()
    {
      $this->db->where('id',10);    
      $get_device = $this->db->get('data_range');   
      return  $get_device->row();
    }

     /**
    ** Get IR
    **/
    public function get_ir()
    {
      $this->db->where('id',8);    
      $get_device = $this->db->get('data_range');   
      return  $get_device->row();
    }


    /**
    ** Get site name
    **/
    public function get_site_name($site_id)
    {
      $result = $this->db->select('site_name')->where('site_id', $site_id)->get('site')->row();   
      return $result->site_name;
    }

    /**
     * Get Alarm History
     */
    public function get_all_alarm_history($from_date, $to_date)
    {
      $this->db->order_by('id', 'desc');
      $query = $this->db->select('*')
                 ->where("cast(created_time as date) BETWEEN '$from_date' AND '$to_date'")
                 ->get('alarm_status');          
      $result = $query->result();
      return $result;
    }

    /** get_autorefresh() **/
    public function get_autorefresh()
    {
      $query = $this->db->select('set_time')->select('status')
                 ->get('tbl_autorefresh');          
      $result = $query->row();
      return $result;
    }

    /** alarm_report_generate($data) **/
    public function alarm_report_generate($data) {
      $this->db->order_by('id', 'desc');
      $query = $this->db->select('*')
                ->where('site_id', $data['site_id'])
                ->where('bank', $data['bank'])
                ->where("cast(created_time as date) BETWEEN '$data[from_date]' AND '$data[to_date]'")
                ->get('alarm_status');          
      $result = $query->result_array();
      return $result;
    }

    /** get site updated data bank 1($site_id) **/
    public function get_updated_data_bank1($site_id) {
      $this->db->where('site_id',$site_id); 
      $this->db->where('bank',1); 
      $this->db->where('node != ','B0'); 
      $get_user = $this->db->get('tbl_data_update');   
      $get_report1 =  $get_user->result_array();
      return $get_report1;
    }

    /** get site updated data bank 2($site_id) **/
    public function get_updated_data_bank2($site_id) {
      $this->db->where('site_id',$site_id); 
      $this->db->where('bank',2); 
      $this->db->where('node != ','B0'); 
      $get_user = $this->db->get('tbl_data_update');   
      $get_report2 =  $get_user->result_array();
      return $get_report2;
    }




}
