<?php
	function r_success($url,$message){
		$ci =& get_instance();
		$ci->session->set_flashdata("success",$message);
		header("Location:".base_url()."index.php/".$url);
	}

	function r_fail($url,$message){
		$ci =& get_instance();
		$ci->session->set_flashdata("fail",$message);
		header("Location:".base_url()."index.php/".$url);
	}

?>
