<?php

function setFlashdata($key,$value){
	$ci =& get_instance();
	return $ci->session->set_flashdata($key,$value);
}

function getFlashdata($key){
	$ci =& get_instance();
	return $ci->session->flashdata($key);
}

function getSession($key){
	$ci =& get_instance();
	return $ci->session->userdata($key);
}

function setSession($key,$value){
	$ci =& get_instance();
	return $ci->session->set_userdata($key,$value);
}

function unsetSession($key){
	unset($_SESSION[$key]);
	return true;
}

function form_data($key){
	$ci =& get_instance();
	return $ci->session->flashdata("form_data")[$key];
}
