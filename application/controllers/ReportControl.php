<?php

class ReportControl extends CI_Controller{

	function __construct() {
		parent::__construct();
		$this->lang->load('common',$this->session->userdata("default_lang"));
		if(!getSession("user_logged")){
			r_fail("","Please log in first");
		}
	}

	public function report_general(){
		$data['title']="CWS - Dashboard";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/report/general');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function report_general_generate($type){
		$table = array(
			"vehicle-insurance-validity-renewal"=>"bee_vehicle_insurance",
			"asset-insurance-coverage-renewal"=>"",
			"health-insurance-coverage-renewal"=>"",
			"accidental-insurance-coverage-renewal"=>""
		);
		if($table[$type]!="")
			$data['report_data'] = $this->SettingModel->get_all_record($table[$type]);
		$data['title']="CWS - Dashboard";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/report/general_generate');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function report_hr(){
		$data['title']="CWS - Dashboard";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/report/hr');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function report_finance(){
		$data['title']="CWS - Dashboard";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/report/finance');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

}
