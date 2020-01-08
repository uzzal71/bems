<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Message extends CI_Controller
{
	/** define constructor **/
	public function __construct()
	{
		parent::__construct();
		//$this->load->library('email');
    }

    /** entry admin page **/
	public function index()
	{
		/**
		$config = Array(
		  'protocol' => 'smtp',
		  'smtp_host' => 'ssl://smtp.googlemail.com',
		  'smtp_port' => 465,
		  'smtp_user' => 'uzzalroy.cse@gmail.com',
		  'smtp_pass' => 'ARCHITAROYuzzal',
		  'mailtype' => 'html',
		  'charset' => 'iso-8859-1',
		  'wordwrap' => TRUE
		);

        $message = 'This is test message';
	    $this->load->library('email', $config);
	    **/


	    $this->load->library('email');
		$config = array();
		$config['protocol'] = 'smtp';
		$config['smtp_host'] = 'ssl://smtp.googlemail.com';
		$config['smtp_user'] = 'uzzalroy.cse@gmail.com';
		$config['smtp_pass'] = 'ARCHITAROYuzzal';
		$config['smtp_port'] = 465;
		$config['mailtype'] = 'html';
		$config['charset'] = 'iso-8859-1';
		$config['wordwrap'] = TRUE;
		$this->email->initialize($config);
		$this->email->set_newline("\r\n");

	    $this->email->from('uzzalroy.cse@gmail.com', 'admin');
	    $this->email->to('uzzalroy.acm@gmail.com');
	    $this->email->subject('Resume from JobsBuddy for your Job posting');
	    $this->email->message("Sens CV Message");

	    if($this->email->send())
		{
		    echo 'Email sent.';
		}
		else
	    {
	     show_error($this->email->print_debugger());
	   	}
	}

	public function test()
	{
		$this->load->library('email');

		$this->email->from('uzzalroy.cse@gmail.com', 'Uzzal Roy');
		$this->email->to('uzzalroy.acm@gmail.com');

		$this->email->subject('Email Test');
		$this->email->message('Testing the email class.');

		$this->email->send();
	}


}
