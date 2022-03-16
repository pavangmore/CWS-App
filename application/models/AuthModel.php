<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AuthModel extends CI_Model{

	public function check_super_user_auth($username,$password){
		$this->db->where("username",$username);
		$this->db->where("password",$password);
		$q=$this->db->get("bee_superuser");
		return $q->num_rows();
	}

}
