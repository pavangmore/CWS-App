<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class FormControl extends CI_Controller{

	function __construct() {
		parent::__construct();
		$this->lang->load('common',$this->session->userdata("default_lang"));
		if(!getSession("user_logged")){
			r_fail("","Please log in first");
		}
	}

	public function forms(){
		$data['forms'] = $this->SettingModel->get_all_record("bee_forms");
		$data['title']="CWS - Forms";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/forms/index');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function custom_form_domestic_violence(){
		$data['forms'] = $this->SettingModel->get_all_record("bee_forms");
		$data['title']="CWS - Forms";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/forms/custom_form/domestic_violence');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function form_view($form_id){
		$data['forms'] = $this->SettingModel->get_record("bee_forms",array("form_id"=>$form_id));
		$data['form_fields'] = $this->SettingModel->get_record("bee_form_question",array("form_id"=>$form_id),true);
		$data['title']="CWS - Forms";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
//		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
//		{
			$this->load->view('back/forms/form_view');
//		}
//		else{
//			$this->load->view('back/settings/permission-denied');
//		}
		$this->load->view('back/common/footer');
	}

	public function form_responses($form_id){
		$data['forms'] = $this->SettingModel->get_record("bee_forms",array("form_id"=>$form_id));
		$data['form_fields'] = $this->SettingModel->get_record("bee_form_question",array("form_id"=>$form_id),true);
		$data['responses'] = $this->SettingModel->get_all_record("form_".$form_id);
		$data['title']="CWS - Forms";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/forms/form_response');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function form_settings(){
		$data['forms'] = $this->SettingModel->get_all_record("bee_forms");
		$data['title']="CWS - Forms";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/forms/form_settings');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function form_design(){
		$data['title']="CWS - Form Design";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/forms/design');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function form_design_save(){

		$data = array(
			"form_id"=>UNIQUE_ID,
			"form_name_eng"=>$_POST['form_name_eng'],
			"form_name_hin"=>$_POST['form_name_hin'],
			"form_description_eng"=>$_POST['form_decs_eng'],
			"form_description_hin"=>$_POST['form_decs_hin'],
			"created_at"=>CREATED_AT,
		);

		$res = $this->SettingModel->insert_record("bee_forms",$data);
		if($res){
			r_success("form/settings","Form ID created successfully now you can add form questions in it.");
		}
		else{
			r_fail("form/settings","Failed to design form. Please try again later");
		}
	}

	public function form_view_fields($id){
		$data['form_questions'] = $this->SettingModel->get_record("bee_form_question",array("form_id"=>$id),true);
		$data['form_id'] = $id;
		$data['title']="CWS - Form Design";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		//if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		//{
			$this->load->view('back/forms/view_fields');
		//}
//		else{
//			$this->load->view('back/settings/permission-denied');
//		}
		$this->load->view('back/common/footer');
	}

	public function form_field_save(){

		$q_id = UNIQUE_ID;
		$data = array(
			"form_id"=>$_POST['form_id'],
			"question_id"=>$q_id,
			"question_eng"=>$_POST['question_eng'],
			"question_hin"=>$_POST['question_hin'],
		);

		$status = $this->FormModel->check_table_exists("form_".$_POST['form_id']);
		if(!$status){
			$table_status = $this->FormModel->create_table("form_".$_POST['form_id']);
		}

		$this->FormModel->create_field("form_".$_POST['form_id'],"q".$q_id);

		$res = $this->SettingModel->insert_record("bee_form_question",$data);

		for($i=1;$i<=10;$i++){
			$data = array(
				"option".$i."_eng"=>$_POST['option'.$i."_eng"],
				"option".$i."_hin"=>$_POST['option'.$i."_hin"]
			);

			$res = $this->SettingModel->update_record("bee_form_question",$data,array("question_id"=>$q_id));
		}

		if($res){
			r_success("form/view-fields/".$_POST['form_id'],"Field added successfully");
		}
		else{
			r_fail("form/view-fields/".$_POST['form_id'],"Failed to add field. Please try again later");
		}
	}

	public function form_save(){
		$data = array();

		foreach ($_POST as $key=>$value){
			if($key!="form_id"){
				$data[$key] = $value;
			}
		}
		print_r($data);
//		die;
//		$data = array(
//			"q20210630122843"=>$_POST['q20210630122843'],
//			"q20210630011956"=>$_POST['q20210630011956'],
//			"q20210630012020"=>$_POST['q20210630012020'],
//			"q20210630012046"=>$_POST['q20210630012046'],
//			"q20210630012106"=>$_POST['q20210630012106'],
//			"q20210630012121"=>$_POST['q20210630012121'],
//			"q20210630012136"=>$_POST['q20210630012136'],
//			"q20210630012151"=>$_POST['q20210630012151'],
//			"created_at"=>CREATED_AT,
//		);

		$res = $this->SettingModel->insert_record("form_".$_POST['form_id'],$data);
		if($res){
			r_success("form/view/".$_POST['form_id'],"Form response saved successfully");
		}
		else{
			r_fail("form/view/".$_POST['form_id'],"Failed to save form response. Please try again later");
		}
	}
}
