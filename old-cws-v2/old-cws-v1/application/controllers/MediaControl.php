<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MediaControl extends CI_Controller{

	function __construct() {
		parent::__construct();
		$this->lang->load('common',$this->session->userdata("default_lang"));
		if(!getSession("user_logged")){
			r_fail("","Please log in first");
		}
	}

	public function media($type,$what,$id){

		$path = "";
		$count = 0;
		$media = array();

		if($what=="application"){

		}
		elseif($what=="project"){
			if($id=="all"){

			}
			else{
				$data['project'] = $this->SettingModel->get_record("bee_projects",array("project_id"=>$id));
				$path = ABS_PATH."media/project/".$id."/".$type."/";
				if($dh = opendir($path)) {
					while (($file = readdir($dh)) !== false) {
						if ($file != "." && $file != "..") {
							$count++;
							$media[] = array(
								"file_url"=>base_url('media/'.$what."/".$id."/".$type."/".$file),
								"file_name"=>$file
							);
						}
					}
				}
			}
		}
		$data['media'] = $media;
		$data['total_files'] = $count;
		$data['file_type'] = $type;
		$data['title']="CWS - Media";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		if(menu_access(getSession("logged_user_role"),$this->uri->uri_string()))
		{
			$this->load->view('back/media/index');
		}
		else{
			$this->load->view('back/settings/permission-denied');
		}
		$this->load->view('back/common/footer');
	}

}
