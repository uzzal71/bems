<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
** define report class and inherit ci_controller
**/
class Report extends CI_Controller
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
	** define report pages
	**/
	public function index()
	{
		// Codding Here...
        $data['page_title'] = 'Report';
        $data['site_list'] = $this->site->site_list();
        $data['main_contain'] = $this->load->view('report/report.php', $data, true);
        $this->load->view('home', $data);
	}

	/**
	** define report generate
	**/
	public function report_generate()
	{
		// Codding Here...
		$data['page_title'] = 'Report Generate';
	    $data['from_date'] = $this->input->post('from_date');
	    $data['to_date'] = $this->input->post('to_date');
	    $data['site_id'] = $this->input->post('site_id');
	    $data['bank'] = $this->input->post('bank');
	    $data['site_name'] = $this->site->get_site_name($this->input->post('site_id'));
        //$data['main_contain'] = $this->load->view('report/report_generate.php', $data, true);
       // $this->load->view('home', $data);

	    $this->load->view('report/report_generate.php', $data);
	}

	/**
	** define alarm view
	**/
	public function updated_data_view($site_id)
	{
	  $data['page_title'] = 'Site Status';

      $data['get_site'] = $this->report->get_site();  
      $data['get_device'] = $this->report->get_sitedata_by_id($site_id); 
      $data['get_string_bank1'] = $this->report->get_string_bank1($site_id);
      $data['get_string_bank2'] = $this->report->get_string_bank2($site_id); 
      $data['get_cell_volt'] =   $this->report->get_cell_volt();	    
	  $data['get_string_volt'] = $this->report->get_string_voltage(); 
	  $data['get_cell_temp'] =   $this->report->get_cell_temp(); 
	  $data['get_string_temp'] = $this->report->get_string_temp(); 
	  $data['get_string_current1'] = $this->report->get_string_current1(); 
	  $data['get_string_current2'] = $this->report->get_string_current2();
	  $data['get_string_discharcurrent'] = $this->report->get_string_discharcurrent();
	  $data['get_ir'] = $this->report->get_ir();
      $data['site_name']=$this->report->get_site_name($site_id);
      $data['autorefresh']=$this->report->get_autorefresh();
      $data['site_id']=$site_id;
      $data['get_report1'] = $this->report->get_updated_data_bank1($site_id);
      $data['get_report2'] = $this->report->get_updated_data_bank2($site_id);
	  $data['main_contain'] = $this->load->view('report/updated_data_view.php', $data, true);
     $this->load->view('home', $data);
	}

	/**
	 * Alarm History
	 */
	public function alarm_history()
	{
		$from_date = date("Y-m-d", strtotime("-2 day"));
        $to_date = date("Y-m-d");
		$data['page_title'] = 'Alarm History';
		$data['all_alarm'] = $this->report->get_all_alarm_history($from_date, $to_date);
		$data['main_contain'] = $this->load->view('file/alarm-history.php', $data, true);
        $this->load->view('home', $data);
	}

	/** Alarm Report **/
	public function alarm_report()
	{
		// Codding Here...
        $data['page_title'] = 'Alarm Report';
        $data['site_list'] = $this->site->site_list();
        $data['main_contain'] = $this->load->view('report/alarm_report.php', $data, true);
        $this->load->view('home', $data);
	}

	/** Alarm Report Generate **/
	public function alarm_report_generate()
	{
		$data['page_title'] = 'Alarm Report';
		$data['site_id'] = $this->input->post('site_id');
	    $data['bank'] = $this->input->post('bank');
		$data['from_date'] = $this->input->post('from_date');
	    $data['to_date'] = $this->input->post('to_date');
	    $data['site_name'] = $this->site->get_site_name($this->input->post('site_id'));

	    $data['alarm_report'] = $this->report->alarm_report_generate($data);

	    //$data['main_contain'] = $this->load->view('report/alarm-report-generate.php', $data, true);
        $this->load->view('report/alarm-report-generate.php', $data);
	}

}	