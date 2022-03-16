<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SettingControl extends CI_Controller{

	function __construct() {
		parent::__construct();
		$this->lang->load('common',$this->session->userdata("default_lang"));
		if(!getSession("user_logged")){
			r_fail("","Please log in first");
		}
	}

	public function role_permission(){
		$data['role_list'] = $this->SettingModel->get_all_record("bee_roles");
		$data['modules'] = $this->SettingModel->get_all_modules_with_submodule();
		$data['title']="CWS - Settings | Role Permission";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/settings/role/role-and-permission');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function roles(){
		$data['role_list'] = $this->SettingModel->get_all_record("bee_roles");
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/settings/role/role-add');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function role_save(){

		$count = $this->SettingModel->check_record("bee_roles",array("role_name"=>strtolower($_POST['role_name'])));
		if($count>0){
			r_fail("roles","Role with given name is already exists!");
		}
		else{
			$data = array(
				"role_id"=>"ro_".str_replace(" ","_",strtolower($_POST['role_name'])),
				"role_name"=>strtolower($_POST['role_name']),
				"role_description"=>$_POST['role_description'],
				"modified_at"=>date("Y-m-d H:i:s")
			);

			$res = $this->SettingModel->insert_record("bee_roles",$data);
			if($res){
				r_success("roles","Role added successfully");
			}
			else{
				r_fail("roles","Failed to add role");
			}
		}
	}

	public function role_delete(){
		foreach ($_POST['ids'] as $id){
			$res = $this->SettingModel->delete_record("bee_roles",array("id"=>$id));
		}

		if($res){
			r_success("roles","Role deleted successfully");
		}
		else{
			r_fail("roles","Failed to delete role");
		}
	}

	public function email(){
		$data['templates'] = $this->SettingModel->get_all_record("bee_email_templates");
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/settings/email/email');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function email_edit_template($id){
		$data['templates'] = $this->SettingModel->get_record("bee_email_templates",array("id"=>$id));
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/settings/email/edit');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function email_create_template(){
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/settings/email/create');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function email_save_template(){
		$data = array(
			"template_id"=>str_replace(" ","_",strtolower($_POST['template_name'])),
			"template_name"=>$_POST['template_name'],
			"template_content"=>$_POST['template_content'],
			"status"=>$_POST['template_status'],
			"created_at"=>CREATED_AT,
			"updated_at"=>CREATED_AT,
		);

		$res = $this->SettingModel->insert_record("bee_email_templates",$data);
		if($res){
			r_success("email","Email template added successfully!");
		}
		else{
			r_fail("email","Failed to add email template");
		}
	}

	public function email_update_template(){
		$data = array(
			"template_name"=>$_POST['template_name'],
			"template_content"=>$_POST['template_content'],
			"status"=>$_POST['template_status'],
			"updated_at"=>CREATED_AT,
		);

		$res = $this->SettingModel->update_record("bee_email_templates",$data,array("id"=>$_POST['id']));
		if($res){
			r_success("email","Email template updated successfully!");
		}
		else{
			r_fail("email","Failed to update email template");
		}
	}

	public function appearance(){
		$title = read_file(sys("title.txt"));
		$data['title']="CWS - Appearance";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/settings/appearance/index');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function appearance_update_logo(){
		$res = $this->beeimgbp->upload_file('logo','img','png',"logo.png",array(256,256));
		if($res['status']){
			send_notification("appearance",getSession("logged_user_id"),"all","Logo Updated!","Backend logo is updated!");
			r_success("appearance","Logo updated successfully");
		}
		else{
			r_fail("appearance",$res['error']);
		}
	}

	public function appearance_update_favicon(){
		$res = $this->beeimgbp->upload_file('favicon','img','png',"favicon.png",array(50,50));
		if($res['status']){
			send_notification("appearance",getSession("logged_user_id"),"all","Favicon Updated!","Backend favicon is updated!");
			r_success("appearance","Favicon updated successfully");
		}
		else{
			r_fail("appearance",$res['error']);
		}

	}

	public function appearance_header_footer_update(){
		$res = write_file(ABS_PATH."assets/system/title.txt",$_POST['title'],"w");
		$res = write_file(ABS_PATH."assets/system/footer.txt",$_POST['footer_text'],"w");
		if($res){
			r_success("appearance","Header or Footer updated successfully!");
		}
		else{
			r_fail("appearance","Failed to update!");
		}
	}

//	Module Functions
	public function modules(){
		$data['module_list'] = $this->SettingModel->get_all_record("bee_modules");
		$data['title']="CWS - Appearance";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/settings/modules/index');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function module_save(){
		$data = array(
			"module_id"=>str_replace(" ","_",strtolower($_POST['module_name'])),
			"module_name"=>$_POST['module_name'],
			"module_description"=>$_POST['module_description'],
		);

		$res = $this->SettingModel->insert_record("bee_modules",$data);
		if($res){
			r_success("modules","Module added successfully");
		}
		else{
			r_fail("modules","Failed to add module");
		}
	}

	public function module_update(){
		$data = array(
			"module_name"=>$_POST['module_name'],
			"module_description"=>$_POST['module_description'],
		);

		$res = $this->SettingModel->update_record("bee_modules",$data,array("module_id"=>$_POST['module_id']));
		if($res){
			r_success("modules","Module updated successfully");
		}
		else{
			r_fail("modules","Failed to update module");
		}
	}

	public function module_sub_module($id){
		$data['sub_module_list'] = $this->SettingModel->get_record("bee_sub_modules",array("module_id"=>$id),true);
		$data['module'] = $this->SettingModel->get_record("bee_modules",array("module_id"=>$id));
		$data['title']="CWS - Appearance";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/settings/modules/sub_module');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function module_sub_module_save(){
		$data = array(
			"module_id"=>$_POST['module_id'],
			"sm_id"=>str_replace(" ","_",strtolower($_POST['sub_module_name'])),
			"sm_name"=>$_POST['sub_module_name'],
			"sm_url"=>$_POST['sub_module_url'],
		);

		$res = $this->SettingModel->insert_record("bee_sub_modules",$data);
		if($res){
			r_success("module/sub-module/".$_POST['module_id'],"Sub Module added successfully");
		}
		else{
			r_fail("module/sub-module/".$_POST['module_id'],"Failed to add sub module");
		}
	}

	public function role_permission_update(){


		$module_list = $this->SettingModel->get_all_record("bee_modules");

		foreach ($module_list as $module){

			$status = $this->SettingModel->check_record("bee_permission_module",array("module_id"=>$module['module_id'],"role_id"=>$_POST['role_id']));
			if(!$status){
				$data_module = array(
					"role_id"=>$_POST['role_id'],
					"module_id"=>$module['module_id']
				);
				$res = $this->SettingModel->insert_record("bee_permission_module",$data_module);
			}

			$permission1 = 0;
			if(isset($_POST["menu_".$module['module_id']])){
				$permission1 = 1;
			}
			else{
				$permission1 = 0;
			}

			$data = array(
				"permission"=>$permission1
			);

			$res = $this->SettingModel->update_record("bee_permission_module",$data,array("role_id"=>$_POST['role_id'],"module_id"=>$module['module_id']));
		}

		$sub_module_list = $this->SettingModel->get_all_record("bee_sub_modules");
		foreach ($sub_module_list as $sm){
			$permission = 0;
			if(isset($_POST[$sm['sm_id']])){
				$permission = 1;
			}
			else{
				$permission = 0;
			}

			$count = $this->SettingModel->check_record("bee_permissions",array("role_id"=>$_POST['role_id'],"sub_module_id"=>$sm['sm_id']));
			if($count>0){
				$data = array(
					"permission"=>$permission
				);

				$res = $this->SettingModel->update_record("bee_permissions",$data,array("role_id"=>$_POST['role_id'],"sub_module_id"=>$sm['sm_id']));
			}
			else{
				$data = array(
					"role_id"=>$_POST['role_id'],
					"sub_module_id"=>$sm['sm_id'],
					"permission"=>$permission
				);
				$res = $this->SettingModel->insert_record("bee_permissions",$data);
			}
		}
		r_success("role-and-permission","Permission updated!");
	}

	//System Defaults
	public function system_defaults(){
		$data['defaults'] = $this->SettingModel->get_all_record("bee_system_default");
		$data['title']="CWS - Appearance";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/settings/system-defaults/index');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function system_defaults_email(){
		$data['defaults'] = $this->SettingModel->get_record("bee_system_default",array("type_of"=>"email"),true);
		$data['templates'] = $this->SettingModel->get_all_record("bee_email_templates");
		$data['title']="CWS - Appearance";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/settings/system-defaults/email');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function system_defaults_language(){
		$data['defaults'] = $this->SettingModel->get_record("bee_system_default",array("type_of"=>"language"));
		$data['title']="CWS - Appearance";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/settings/system-defaults/language');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function system_defaults_email_update(){

		$res = true;
		foreach ($_POST as $key=>$value){
			if($key!="type"){
				$data = array(
					"default_value"=>$value
				);

				$res = $this->SettingModel->update_record("bee_system_default",$data,array("type_of"=>$_POST['type'],"functionality"=>$key));
			}
		}

		if($res){
			r_success("system/defaults/email","Default email templates updated");
		}
		else{
			r_fail("system/defaults/email","Failed to update default templates");
		}
	}

	public function system_defaults_language_update(){
		$data = array(
			"default_value"=>$_POST['default-language']
		);

		$res = $this->SettingModel->update_record("bee_system_default",$data,array("type_of"=>"language"));

		if($res){
			r_success("system/defaults/language","Default language updated");
		}
		else{
			r_fail("system/defaults/language","Failed to update language");
		}
	}
}
