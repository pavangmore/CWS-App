<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class ApiModel extends CI_Model{

	public function get_all_users(){
		$q = $this->db->get("bee_users");
		return $q->result_array();
	}

	public function get_user($parameter){
		$this->db->where("user_id",$parameter);
		$q = $this->db->get("bee_users");
		return $q->row_array();
	}

	public function get_all_projects(){
		$q = $this->db->get("bee_projects");
		return $q->result_array();
	}

	public function get_project($parameter){
		$this->db->where("project_id",$parameter);
		$q = $this->db->get("bee_projects");
		return $q->row_array();
	}

	public function get_project_tasks($parameter,$task_id){
		if($task_id!="")
			$this->db->where("task_id",$task_id);
		$this->db->where("project_id",$parameter);
		$q = $this->db->get("bee_tasks");
		if($task_id!="")
			return $q->row_array();
		else
			return $q->result_array();
	}
}
