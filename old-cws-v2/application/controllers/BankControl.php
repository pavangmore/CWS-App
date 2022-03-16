<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BankControl extends CI_Controller{

	function __construct() {
		parent::__construct();
		$this->lang->load('common',$this->session->userdata("default_lang"));
		if(!getSession("user_logged")){
			r_fail("","Please log in first");
		}
	}

	public function bank_control_sheet(){
		$data['bank_control_list'] = $this->BankModel->get_bank_control_list();
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/bank/bank-control-sheet');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function salary_summary(){
		$data['salary_summery'] = $this->SettingModel->get_all_record("bee_salary_summer");

		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/bank/salary_summary');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function vehicle_insurance(){
		$data['vehicle_insurance'] = $this->SettingModel->get_all_record("bee_vehicle_insurance");

		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/bank/vehicle_insurance');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function rent_tracker(){
		$data['rent_tracker'] = $this->SettingModel->get_all_record("bee_rent_tracker");

		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/bank/rent_tracker');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

}
