<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ProjectModel extends CI_Model{

	public function user_list_with_project($where=array()){
		if(sizeof($where)>0)
			$this->db->where($where);
		$this->db->join("bee_projects","bee_projects.project_id=bee_project_member.project_id");
		$this->db->join("bee_users","bee_users.user_id=bee_project_member.user_id");
		$this->db->join("bee_auth_users","bee_auth_users.user_id=bee_project_member.user_id");
		$this->db->join("bee_roles","bee_roles.role_id=bee_auth_users.role_id");
		$q = $this->db->get("bee_project_member");
		return $q->result_array();
	}

	public function get_tasks_with_project_user($where,$all=false){
		$this->db->where($where);
		$this->db->join("bee_projects","bee_projects.project_id=bee_tasks.project_id");
		$this->db->join("bee_users","bee_users.user_id=bee_tasks.user_id");
		$q = $this->db->get("bee_tasks");
		if($all){
			return $q->result_array();
		}
		else{
			return $q->row_array();
		}
	}

}
