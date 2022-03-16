<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class ApiControl extends  CI_Controller{

	function __construct() {
		parent::__construct();
		$this->load->model("ApiModel");
	}

	public function format_output($data){
		header('Content-Type: application/json');
		echo json_encode($data,JSON_PRETTY_PRINT);
	}

	public function get_user($parameter){
		if($parameter=="all"){
			$result = $this->ApiModel->get_all_users();
			$this->format_output($result);
		}
		else{
			$result = $this->ApiModel->get_user($parameter);
			$this->format_output($result);
		}

	}

	public function get_project($parameter){
		if($parameter=="all"){
			$result = $this->ApiModel->get_all_projects();
			$this->format_output($result);
		}
		else{
			$result = $this->ApiModel->get_project($parameter);
			$this->format_output($result);
		}

	}

	public function get_project_task($parameter,$task_id=""){
		$result = $this->ApiModel->get_project_tasks($parameter,$task_id);
		$this->format_output($result);
	}
}
