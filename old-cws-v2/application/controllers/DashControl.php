<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DashControl extends CI_Controller{

	function __construct() {
		parent::__construct();
		$this->lang->load('common',$this->session->userdata("default_lang"));
		if(!getSession("user_logged")){
			r_fail("","Please log in first");
		}
	}

	public function index(){
		if(getSession("logged_user_role")=="super"){
			$data['verified'] = true;
		}
		else{
			$data['verified'] = $this->SettingModel->get_record("bee_users",array("user_id"=>getSession("logged_user_id")),false,array("email_verified"))['email_verified'];
		}

		$data['title']="CWS - Dashboard";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');

		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string(),true))
		{
			$this->load->view('back/dashboard/dashboard-admin');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function organigram(){

		$data['title']="CWS - Dashboard";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/dashboard/organigram');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}
}
