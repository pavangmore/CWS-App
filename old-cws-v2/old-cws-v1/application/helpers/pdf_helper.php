<?php

function writePDF($content){
	$ci =& get_instance();
	try{
		if($content==""){
			throw new Exception("Content can not be null");
		}
	}
	catch (Exception $e){
		echo 'Message: ' .$e->getMessage();
		write_file('application/log/pdf/pdf_error_'.date("Ymd").".txt", $e->getMessage());
	}
	$ci->beepdf->writePDF($content);
}
