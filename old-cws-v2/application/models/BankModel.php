<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BankModel extends CI_Model{

	public function get_bank_control_list(){
		$q = $this->db->get("bee_bank_control_sheet");
		return $q->result_array();
	}

}
