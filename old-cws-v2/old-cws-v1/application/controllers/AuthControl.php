<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AuthControl extends CI_Controller{

	public function index(){
		$this->load->view('back/auth/login');
	}

	public function check_authentication(){

		$username = $_POST['username'];
		$password = md5($_POST['password']);

		if($_POST["remember_me"]=='1' || $_POST["remember_me"]=='on') {
			$hour = time() + 3600 * 24 * 30;
			setcookie('username', $username, $hour);
			setcookie('password', $password, $hour);
		}

		if(str_contains($username,"super")){
			$res = $this->AuthModel->check_super_user_auth($username,$password);
			if($res>0){
				setSession("user_logged",true);
				setSession("logged_user_role","super");
				setSession("logged_user_name","Super User");
				setSession("logged_user_id","super");
				$system_defaults = $this->SettingModel->get_record("bee_system_default",array("type_of"=>"language"));
				setSession("default_lang",$system_defaults['default_value']);
				r_success("dashboard","Welcome Super User");
			}
			else{
				r_fail("","Username or password is incorrect");
			}
		}
		else{
			$res = $this->SettingModel->get_record("bee_users",array("email"=>$username),false,array("user_id","first_name","last_name"));

			if(isset($res['user_id']) && $res['user_id']!=""){
				$where = array(
					"password"=>$password,
					"user_id"=>$res['user_id']
				);
				$data_user = $this->SettingModel->get_record("bee_auth_users",$where);
				if($data_user['password']!=""){
					$data_login = array(
						"user_id"=>$res['user_id'],
						"last_login"=>CREATED_AT
					);

					$this->SettingModel->insert_record("bee_user_login_log",$data_login);
					setSession("user_logged",true);
					setSession("logged_user_role",$data_user['role_id']);
					setSession("logged_user_id",$res['user_id']);
					setSession("logged_user_name",$res['first_name']." ".$res['last_name']);
					r_success("dashboard","Welcome ".$res['first_name']." ".$res['last_name']);
				}
				else{
					r_fail("","Username or password is incorrect!");
				}
			}
			else{
				r_fail("","Username is doesn't exists!");
			}
		}
	}

	public function logout(){
		session_destroy();
		r_success("","Successfully logged out");
	}

	public function verification_email_resend(){
		$user = $this->SettingModel->get_record("bee_users",array("user_id"=>getSession("logged_user_id")),false,array('email','first_name','last_name'));

		$template_content = get_email_template("welcome");

		$temp_id = UNIQUE_ID.rand(1,9999999);

		$data = array(
			"temp_id"=>$temp_id,
			'user_id'=>getSession("logged_user_id"),
			"created_at"=>CREATED_AT
		);

		$this->SettingModel->delete_record("bee_verify_account",array("user_id"=>getSession("logged_user_id")));
		$this->SettingModel->insert_record("bee_verify_account",$data);

		$from = array(
			"{%base_url%}",
			"{%user_name%}",
			"{%company_name%}",
			"{%contact%}",
			"{%email%}",
			"{%user_id%}"
		);

		$to = array(
			base_url(),
			$user['first_name']." ".$user['last_name'],
			"CWS",
			"+91-8888888888",
			"shailesh@pioniumtech.com",
			$temp_id
		);

		$content = str_replace($from,$to,$template_content['template_content']);

		send_mail("sd",array(
			"to"=>$user['email'],
			"sender_name"=>$user['first_name']." ".$user['last_name'],
			"subject"=>$template_content['template_name'],
			"body"=>$content,
		));

		r_success("dashboard","Email sent successfully");
	}

	public function activate_account($id){
		$user_id = $this->SettingModel->get_record("bee_verify_account",array("temp_id"=>$id));
		$where = array(
			"user_id"=>$user_id['user_id']
		);

		$data = array(
			"email_verified"=>1
		);

		$res = $this->SettingModel->update_record("bee_users",$data,$where);
		if($res){
			r_success("activation/success","success");
		}
		else{
			r_success("activation/failed","failed");
		}
	}

	public function activation($status){
		$this->load->view('back/auth/activation');
	}
}
