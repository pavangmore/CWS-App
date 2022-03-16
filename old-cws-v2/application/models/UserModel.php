<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class UserModel extends CI_Model{

	public function user_list_with_auth(){
//		$this->db->join("bee_auth_users","bee_auth_users.user_id=bee_users.user_id",'left');
//		$this->db->join("bee_roles","bee_roles.role_id=bee_auth_users.role_id");
		$q = $this->db->get("bee_users");
		return $q->result_array();
	}

	public function get_user_status($where){
		$this->db->select("status");
		$this->db->where($where);
		$q = $this->db->get("bee_auth_users");
		return $q->row_array();
	}

	public function get_user_password($where){
		$this->db->select("password");
		$this->db->where($where);
		$q = $this->db->get("bee_auth_users");
		return $q->row_array();
	}

	public function get_user_with_auth($where){
		$this->db->where($where);
		$this->db->join("bee_auth_users","bee_auth_users.user_id=bee_users.user_id");
		$this->db->join("bee_roles","bee_roles.role_id=bee_auth_users.role_id");
		$q = $this->db->get("bee_users");
		return $q->row_array();
	}

	public function get_user_role($user_id){
		$this->db->select("bee_roles.role_id,role_name");
		$this->db->where("user_id",$user_id);
		$this->db->join("bee_roles","bee_roles.role_id=bee_auth_users.role_id");
		$q = $this->db->get("bee_auth_users");
		return $q->row_array();
	}
}
