<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class UserControl extends CI_Controller{

	function __construct() {
		parent::__construct();
		$this->lang->load('common',$this->session->userdata("default_lang"));
		if(!getSession("user_logged")){
			r_fail("","Please log in first");
		}
	}

	public function user_profile(){
		$data['user'] = $this->UserModel->get_user_with_auth(array("bee_users.user_id"=>getSession("logged_user_id")));
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/user/profile');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function user_manage(){
		$data['users'] = $this->UserModel->user_list_with_auth();
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/user/manage');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function user_assign(){
		$data['users'] = $this->UserModel->user_list_with_auth();
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/user/assign');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function user_add(){

		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/user/add_user');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function user_edit($id){
		$data['user'] = $this->SettingModel->get_record("bee_users",array("user_id"=>$id));
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/user/edit_user');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function user_save(){

		$data = array(
			"user_id"=>UNIQUE_ID,
			"first_name"=>$_POST['first_name'],
			"middle_name"=>$_POST['middle_name'],
			"last_name"=>$_POST['last_name'],
			"email"=>$_POST['email'],
			"mobile"=>$_POST['mobile'],
			"dob"=>$_POST['dob'],
			"created_at"=>CREATED_AT,
			"updated_at"=>CREATED_AT,
		);

		$res = $this->SettingModel->insert_record("bee_users",$data);
		if($res){
			r_success("users/manage","User added successfully");
		}
		else{
			r_fail("users/manage","Failed to add user");
		}
	}

	public function user_update(){

		$data = array(
			"first_name"=>$_POST['first_name'],
			"middle_name"=>$_POST['middle_name'],
			"last_name"=>$_POST['last_name'],
			"email"=>$_POST['email'],
			"mobile"=>$_POST['mobile'],
			"dob"=>$_POST['dob'],
			"updated_at"=>CREATED_AT,
		);

		$res = $this->SettingModel->update_record("bee_users",$data,array("user_id"=>$_POST['user_id']));

		if($res){
			r_success("users/manage","User updated successfully");
		}
		else{
			r_fail("users/manage","Failed to update user");
		}
	}

	public function user_profile_update(){

		$data = array(
			"first_name"=>$_POST['first_name'],
			"middle_name"=>$_POST['middle_name'],
			"last_name"=>$_POST['last_name'],
			"email"=>$_POST['email'],
			"mobile"=>$_POST['mobile'],
			"dob"=>$_POST['dob'],
			"updated_at"=>CREATED_AT,
		);

		$res = $this->SettingModel->update_record("bee_users",$data,array("user_id"=>$_POST['user_id']));

		if($res){
			r_success("my-profile","Profile updated successfully");
		}
		else{
			r_fail("my-profile","Failed to update profile");
		}
	}

	public function password_update(){
		if(strcmp($_POST['password'],$_POST['confirm_password'])==0){
			$data = array(
				"password"=>md5($_POST['password'])
			);

			$res = $this->SettingModel->update_record("bee_auth_users",$data,array("user_id"=>getSession("logged_user_id")));

			if($res){
				r_success("my-profile","Password updated!");
			}
			else{
				r_fail("my-profile","Failed to update password");
			}
		}
		else{
			r_fail("my-profile","Password and confirm password is not same");
		}
	}

	public function user_role_assign(){
		$user_list = array();
		foreach ($_POST['ids'] as $user_id){
			$user = $this->SettingModel->get_record("bee_users",array("user_id"=>$user_id));
			$user_list[] = $user;
		}
		$data['users'] = $user_list;
		$data['role_list'] = $this->SettingModel->get_all_record("bee_roles");
		$data['title']="CWS - Role Assign";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/user/role_assign');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function user_role_assign_save(){
		sleep(5);
		$count = $this->SettingModel->check_record("bee_auth_users",array("user_id"=>$_POST['user_id']));
		if($count>0){
			$data = array(
				"role_id"=>$_POST['role_id']
			);

			$res = $this->SettingModel->update_record("bee_auth_users",$data,array("user_id"=>$_POST['user_id']));
		}
		else{
			$data = array(
				"user_id"=>$_POST['user_id'],
				"role_id"=>$_POST['role_id']
			);

			$res = $this->SettingModel->insert_record("bee_auth_users",$data);
		}

	}

	public function user_activate_deactivate(){
		$user_list = array();
		foreach ($_POST['ids'] as $user_id){
			$user = $this->SettingModel->get_record("bee_users",array("user_id"=>$user_id));
			$user_list[] = $user;
		}
		$data['users'] = $user_list;
		$data['role_list'] = $this->SettingModel->get_all_record("bee_roles");
		$data['title']="CWS - Role Assign";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/user/activate_deactivate');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function user_status_update(){
		sleep(5);
		$count = $this->SettingModel->check_record("bee_auth_users",array("user_id"=>$_POST['user_id']));
		$status = $this->UserModel->get_user_status(array("user_id"=>$_POST['user_id']));
		$updated_status = (int)$_POST['status'];
		if($updated_status==$status['status']){
			echo "Already ".($updated_status?"Activated":"Deactivated");
		}
		else{
			if($count>0){
				$password_status = $this->UserModel->get_user_password(array("user_id"=>$_POST['user_id']));
				$data = array();
				if($password_status['password']!=""){
					$data = array(
						"status"=>$updated_status
					);
				}
				else{
					$data = array(
						"password"=>md5($_POST['user_id']),
						"status"=>$updated_status
					);
				}
				$res = $this->SettingModel->update_record("bee_auth_users",$data,array("user_id"=>$_POST['user_id']));
			}
			else{
				$data = array(
					"user_id"=>$_POST['user_id'],
					"password"=>md5($_POST['user_id']),
					"status"=>$updated_status
				);

				$res = $this->SettingModel->insert_record("bee_auth_users",$data);
			}
		}

	}

	public function user_permission(){
		$data['users'] = $this->UserModel->user_list_with_auth();
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/user/permission');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function user_permission_by_id($user_id){
		$data['modules'] = $this->SettingModel->get_all_modules_with_submodule();
		$data['title']="CWS - Settings";
		$data['user_id'] = $user_id;
		$data['role_id'] = $this->SettingModel->get_record('bee_auth_users',array("user_id"=>$user_id),false,array("role_id"))['role_id'];
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/user/permission_id');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function user_permission_update(){
		$sub_modules = $this->SettingModel->get_all_record("bee_sub_modules");
		$module_permission_allowed = array();
		foreach ($sub_modules as $sb){
			$count = $this->SettingModel->check_record("bee_permissions_user",array("sub_module_id"=>$sb['sm_id'],"user_id"=>$_POST['user_id']));
			print_r($count);
			if($count==0){
				$data = array(
					"user_id"=>$_POST['user_id'],
					"sub_module_id"=>$sb['sm_id'],
					"sub_module_url"=>$sb['sm_url']
				);

				$this->SettingModel->insert_record("bee_permissions_user",$data);
			}

			$permission = 0;
			if(isset($_POST[$sb['sm_id']])){
				$permission = 1;
				$module_permission_allowed[] = $sb['sm_name'];
			}

			$data_sub = array(
				"permission"=>$permission
			);

			$res = $this->SettingModel->update_record("bee_permissions_user",$data_sub,array("sub_module_id"=>$sb['sm_id'],"user_id"=>$_POST['user_id']));
		}

		if($res){
			send_notification("permission",getSession("logged_user_id"),$_POST['user_id'],"Permission Updated!",implode(" , ",$module_permission_allowed)." these module(s) permissions are updated");
			r_success("/user/permission/id/".$_POST['user_id'],"Permission updated!");
		}
	}
}

?>
