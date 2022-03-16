<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ProjectControl extends CI_Controller{

	function __construct() {
		parent::__construct();
		$this->lang->load('common',$this->session->userdata("default_lang"));
		if(!getSession("user_logged")){
			r_fail("","Please log in first");
		}
	}

	public function project(){
		$data['projects'] = $this->SettingModel->get_all_record("bee_projects");
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/project/index');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function project_create(){
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/project/project_create');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function project_view($project_id){
		$data['project'] = $this->SettingModel->get_record("bee_projects",array("project_id"=>$project_id));
		$data['members'] = $this->SettingModel->check_record("bee_project_member",array("project_id"=>$project_id));
		$data['project_id'] = $project_id;
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/project/project_view');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function project_edit($project_id){
		$data['project'] = $this->SettingModel->get_record("bee_projects",array("project_id"=>$project_id));
		$data['members'] = $this->SettingModel->check_record("bee_project_member",array("project_id"=>$project_id));
		$data['project_id'] = $project_id;
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/project/project_edit');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function project_save(){

		$project_id = str_replace(" ","-",strtolower($_POST['project_name']));

		$data =array(
			"project_id"=>$project_id,
			"project_name"=>$_POST['project_name'],
			"project_description"=>$_POST['project_description'],
			"project_status"=>"active",
			"created_at"=>CREATED_AT,
			"created_by"=>getSession("logged_user_id"),
			"last_updated"=>CREATED_AT,
			"last_updated_by"=>getSession("logged_user_id")
		);

		$res = $this->SettingModel->insert_record("bee_projects",$data);
		if($res){
			mkdir(ABS_PATH."media/project/".$project_id, 0777, true);
			sleep(1);
			mkdir(ABS_PATH."media/project/".$project_id."/images", 0777, true);
			sleep(1);
			mkdir(ABS_PATH."media/project/".$project_id."/document", 0777, true);
			sleep(1);
			mkdir(ABS_PATH."media/project/".$project_id."/video", 0777, true);
			sleep(1);
			r_success("project","Project created successfully! Now you can view project and start creating task");
		}
		else{
			r_fail("project","Failed to create project");
		}
	}

	public function project_update(){
		$project_id = str_replace(" ","-",strtolower($_POST['project_name']));

		$data =array(
			"project_name"=>$_POST['project_name'],
			"project_description"=>$_POST['project_description'],
			"last_updated"=>CREATED_AT,
			"last_updated_by"=>getSession("logged_user_id")
		);

		$res = $this->SettingModel->update_record("bee_projects",$data,array("project_id"=>$_POST['project_id']));
		if($res){
			r_success("project","Project updated successfully!");
		}
		else{
			r_fail("project","Failed to update project");
		}
	}

	public function project_member_id($project_id){
		$data['users'] = $this->UserModel->user_list_with_auth();
		$data['members'] = $this->ProjectModel->user_list_with_project(array("bee_project_member.project_id"=>$project_id));
		$data['project'] = $this->SettingModel->get_record("bee_projects",array("project_id"=>$project_id));
		$data['project_id'] = $project_id;
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/project/project_member');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function project_member_update(){
		$data = array(
			"project_id"=>$_POST['project_id'],
			"user_id"=>$_POST['user_id']
		);

		$res = $this->SettingModel->insert_record("bee_project_member",$data);
		if($res){
			r_success("project/member/project-id/".$_POST['project_id'],"Member added successfully!");
		}
		else{
			r_fail("project/member/project-id/".$_POST['project_id'],"Failed to add member");
		}
	}

	public function project_member_remove($project_id,$id){
		$where = array(
			"user_id"=>$id
		);

		$res = $this->SettingModel->delete_record("bee_project_member",$where);
		if($res){
			r_success("project/member/project-id/".$project_id,"Member removed successfully!");
		}
		else{
			r_fail("project/member/project-id/".$project_id,"Failed to remove member");
		}
	}

	public function project_task($project_id){
		$data['project'] = $this->SettingModel->get_record("bee_projects",array("project_id"=>$project_id));
		$data['tasks'] = $this->ProjectModel->get_tasks_with_project_user(array("bee_tasks.project_id"=>$project_id),true);
		$data['members'] = $this->ProjectModel->user_list_with_project(array("bee_project_member.project_id"=>$project_id));
		$data['project_id'] = $project_id;
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/project/task/index');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

	public function project_task_save(){
		$res = true;
		$type="";
		$allowed="";
		if($_FILES['attachment']['type']=="image/png"){
			$type = "project/".$_POST['project_id']."/images";
			$allowed = "png|jpeg|jpg|bmp|tiff|gif";
		}
		else{
			$type = "project/".$_POST['project_id']."/document";
			$allowed="pdf|xlsx|xls|doc|docx|ppt|pptx|txt";
		}
		$url = $this->beeimgbp->upload_file('attachment',$type,$allowed,"");
		$task_id = UNIQUE_ID;
		foreach ($_POST['user_assigned'] as $user){
			$data = array(
				"project_id"=>$_POST['project_id'],
				"task_id"=>$task_id,
				"task_title"=>$_POST['task_title'],
				"task_content"=>$_POST['task_description'],
				"user_id"=>$user,
				"task_priority"=>$_POST['priority'],
				"due_date"=>format_date($_POST['due_date']),
				"created_at"=>CREATED_AT,
				"last_modified"=>CREATED_AT,
			);
			$res = $this->SettingModel->insert_record("bee_tasks",$data);
			send_notification("task",getSession("logged_user_id"),$user,"Task Assigned!","Task is assigned to you with due date of ".$_POST['due_date']." and priority is ".$_POST['priority']);
		}


		//Attchemnt Here
		$data_media = array(
			"task_id"=>$task_id,
			"media_type"=>$type,
			"media"=>$url['status']?$url['url']:""
		);
		$res = $this->SettingModel->insert_record("bee_task_media",$data_media);

		if($res){
			r_success("project/task/".$_POST['project_id'],"Task assigned successfully!");
		}
		else{
			r_fail("project/task/".$_POST['project_id'],"Failed to assign task!");
		}
	}

}

?>
