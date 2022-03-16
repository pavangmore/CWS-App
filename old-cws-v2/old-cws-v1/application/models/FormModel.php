<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class FormModel extends CI_Model{

	public function check_table_exists($form_id){
		$q = $this->db->get("form_".$form_id);
		if(!$q){
			return false;
		}
		else{
			return true;
		}
	}

	public function create_table($table_name){
		$q = $this->db->query("create table ".$table_name."(id int(11) NOT NULL AUTO_INCREMENT , PRIMARY KEY(id))");
		return $q;
	}

	public function create_field($table_name,$field_name){
		$q = $this->db->query("alter table ".$table_name." ADD COLUMN ".$field_name." VARCHAR(50) NULL");
		return $q;
	}

}
