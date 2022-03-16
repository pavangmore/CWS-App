<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BeeDb{

	private $ci;

	public function __construct()
	{
		$this->ci =& get_instance();
	}

	public function insert_data($table,$data){
		$status = $this->ci->CommonModel->insert_data($table,$data);
		return $status;
	}

	public function update_data($table,$data,$where){
		$status = $this->ci->CommonModel->update_data($table,$data,$where);
		return $status;
	}

	public function all_data($table){
		$status = $this->ci->CommonModel->all_data($table);
		return $status;
	}

	public function get_data($table,$where){
		$status = $this->ci->CommonModel->get_data($table,$where);
		return $status;
	}

	public function delete_data($table,$where){
		$status = $this->ci->CommonModel->delete_data($table,$where);
		return $status;
	}

	public function get_enums($table,$column){
		$enum = $this->ci->CommonModel->getEnumValues($table,$column);
		$enum_string = str_replace(array("enum(",")","'"),array("","",""),$enum['enum_values']);
		return explode(",",$enum_string);
	}
}

?>
