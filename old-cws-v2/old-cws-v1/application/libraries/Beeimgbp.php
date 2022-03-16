<?php

//Source https://github.com/samayo/bulletproof

defined('BASEPATH') or exit('No direct script access allowed');

require 'vendor/autoload.php';

class Beeimgbp
{
	private $ci;

	public function __construct()
	{
		$this->ci =& get_instance();
	}

	public function upload_file($FILES,$type,$allowed,$file_name,$dimensions = array(),$size = array()){

		$config['upload_path']          = $_SERVER['DOCUMENT_ROOT'].$this->ci->config->item('media_folder')."/".$type;
		$config['allowed_types']        = $allowed;
		if(sizeof($size)>0){
			$config['max_size']         = $size[0];
		}
		else{
			$config['max_size']         = 2048;
		}
		if(sizeof($dimensions)>0){
			$config['max_width']        = $dimensions[0];
			$config['max_height']       = $dimensions[1];
		}
		if($file_name!=""){
			$config['file_name'] = $file_name;
		}

		$config['overwrite'] = true;

		$this->ci->load->library('upload', $config);

		if ( ! $this->ci->upload->do_upload($FILES))
		{
			$error = array('error' => $this->ci->upload->display_errors());
			write_file('logs/image_upload/image_upload_error_'.date("YmdHis").".txt", json_encode($error));
			return array("status"=>false,"error"=>str_replace('"',"",json_encode($error['error'])));
		}
		else
		{
			$data = array('upload_data' => $this->ci->upload->data());
			return array("status"=>true,"url"=>"{%base_url%}media/images/".$data['upload_data']['file_name']);
		}
	}

}

