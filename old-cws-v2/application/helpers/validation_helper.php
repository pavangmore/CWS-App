<?php

function check_validation($field){

	$ci =& get_instance();

	if(in_array("email",$field)){
		$ci->form_validation->set_rules('email', 'Email', 'required|valid_email',
			array(
				'required' => 'Email field is required',
				'valid_email' => 'Email address is not valid'
			)
		);
	}

	if(in_array("mobile",$field)){
		$ci->form_validation->set_rules('mobile', 'Mobile', 'required|max_length[10]|min_length[10]|numeric',
			array(
				'required'   => 'Mobile field is required',
				'max_length' => 'Mobile number must be 10 digit',
				'min_length' => 'Mobile number must be 10 digit',
				'numeric' => 'Mobile number must be numeric'
			)
		);
	}

	if(in_array("dob",$field)){
		$ci->form_validation->set_rules('reg[dob]', 'Date Of Birth',array('regex_match[/^((0[1-9]|[12][0-9]|3[01])[- \/.](0[1-9]|1[012])[- \/.](19|20)\d\d)$/]'));
	}

	return $ci->form_validation->run();

}

?>
