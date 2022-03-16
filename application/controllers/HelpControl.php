<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class HelpControl extends CI_Controller
{

	public function index()
	{
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		$this->load->view('back/help/index');
		$this->load->view('back/common/footer');
	}

	public function pages()
	{
		$data['title']="CWS - Settings";
		$this->load->view('back/common/header',$data);
		$this->load->view('back/common/sidebar');
		$this->load->view('back/help/pages');
		$this->load->view('back/common/footer');
	}

	public function geo_chart()
	{
		$this->load->view('back/help/pages/geo_chart');

	}

}

?>
