<?php
function send_mail($type,$parameter){
	$ci =& get_instance();
	try {

		if(sizeof($parameter)<4){
			throw new Exception("Email parameter are required");
		}

		if($parameter['to']==""){
			throw new Exception("Email to can not be null");
		}
		if($parameter['sender_name']==""){
			throw new Exception("Email sender name can not be null");
		}
		if($parameter['subject']==""){
			throw new Exception("Email subject can not be null");
		}
		if($parameter['body']==""){
			throw new Exception("Email body can not be null");
		}

		if($type=="pm"){
			$ci->beeemailpm->mail_pm($parameter['to'],$parameter['sender_name'],$parameter['subject'],$parameter['body']);
		}
		else{
			$ci->beeemailsd->mail_sd($parameter['to'],$parameter['sender_name'],$parameter['subject'],$parameter['body']);
		}
	}
	catch (Exception $e){
		echo 'Message: ' .$e->getMessage();
		write_file('application/log/email/email_error_'.date("Ymd").".txt", $e->getMessage());
	}
}

function get_email_template($template_id){
	$ci =& get_instance();
	return $ci->SettingModel->get_email_template($template_id);
}

?>
