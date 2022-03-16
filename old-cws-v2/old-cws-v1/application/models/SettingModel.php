<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SettingModel extends CI_Model{

	public function insert_record($table_name,$data){
		$q = $this->db->insert($table_name,$data);
		return $q;
	}

	public function update_record($table_name,$data,$where){
		$this->db->where($where);
		$q = $this->db->update($table_name,$data);
		return $q;
	}

	public function check_record($table,$where){
		$this->db->where($where);
		$q = $this->db->get($table);
		return $q->num_rows();
	}

	public function get_all_record($table){
		$q = $this->db->get($table);
		return $q->result_array();
	}

	public function get_record($table,$where,$multiple=false,$select=array()){
		if(sizeof($select)>0)
			$this->db->select($select);
		$this->db->where($where);
		$q = $this->db->get($table);
		if($multiple)
			return $q->result_array();
		else
			return $q->row_array();
	}

	public function delete_record($table,$where){
		$this->db->where($where);
		$q = $this->db->delete($table);
		return $q;
	}

	public function get_all_modules_with_submodule(){
		$sub_module = array();
		$data = array();
		$q = $this->db->get("bee_modules");
		$modules = $q->result_array();
		foreach ($modules as $module){
			$data['module_id'] = $module['module_id'];
			$data['module_name'] = $module['module_name'];
			$data['sub_module'] = $this->get_sub_module_of_module(array("module_id"=>$module['module_id']));
			$sub_module[] = $data;
		}
		return $sub_module;
	}

	public function get_sub_module_of_module($where){
		$this->db->where($where);
		$q = $this->db->get("bee_sub_modules");
		return $q->result_array();
	}

	public function get_permission_by_user_url($role_id,$url){
		$this->db->select("permission");
		$this->db->where("bee_permissions.role_id",$role_id);
		$this->db->where("bee_sub_modules.sm_url",$url);
		$this->db->join("bee_sub_modules","bee_sub_modules.sm_id=bee_permissions.sub_module_id");
		$q = $this->db->get("bee_permissions");
		return $q->row_array()['permission'];
	}

	public function get_permission_by_user_url_1($user,$url){
		$this->db->select("permission");
		$this->db->where("bee_permissions_user.user_id",$user);
		$this->db->where("bee_permissions_user.sub_module_url",$url);
		$q = $this->db->get("bee_permissions_user");
		return $q->row_array()['permission'];
	}

	public function get_permission_by_user($user,$menu_name){
		$this->db->where("role_id",$user);
		$this->db->where("module_id",$menu_name);
		$q = $this->db->get("bee_permission_module");
		return $q->row_array()['permission'];
	}

	public function get_email_template($template_id){
		$default = $this->get_default_value("email",$template_id);
		$this->db->where("template_id",$default['default_value']);
		$q = $this->db->get("bee_email_templates");
		return $q->row_array();
	}

	public function get_default_value($type,$functionality){
		$this->db->where("type_of",$type);
		$this->db->where("functionality",$functionality);
		$q = $this->db->get("bee_system_default");
		return $q->row_array();
	}

	public function get_notification_for_user(){
		$this->db->limit(10);
		$this->db->order_by("created_at","desc");
		$this->db->where("notification_to",getSession("logged_user_id"));
		$this->db->or_where("notification_to","all");
		$q = $this->db->get("bee_notification");
		return $q->result_array();
	}
}

?>
