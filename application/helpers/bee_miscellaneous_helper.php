<?php
	function get_active_url($url){
		return str_replace("{%base_url%}",base_url(),$url);
	}

	function assets($url){
		return base_url()."assets/".$url;
	}

	function media($url){
		return base_url()."media/".$url;
	}

	function sys($url,$read=false){
		if($read){
			return read_file(base_url()."assets/system/".$url);
		}
		else{
			return base_url()."assets/system/".$url;
		}
	}

	function str_contains($string,$search_string){
		if (strpos($string, $search_string) !== false) {
			return true;
		}
		else{
			return false;
		}
	}

	function format_status($status){
		if($status){
			return "<div class='badge bg-success'>Active</div>";
		}
		else{
			return "<div class='badge bg-danger'>Inactive</div>";
		}
	}

	function menu_access($role_id,$url,$user_permission=false){
		$ci =& get_instance();
		if($role_id=="super"){
			return true;
		}
		else{
			$by_role = $ci->SettingModel->get_permission_by_user_url($role_id,$url);
			if($user_permission){
				$by_user = $ci->SettingModel->get_permission_by_user_url_1(getSession("logged_user_id"),$url);
				if($by_role || $by_user){
					return true;
				}
				else{
					return false;
				}
			}
			else{
				return $by_role;
			}
		}
	}

	function main_menu_access($user,$menu_name){
		$ci =& get_instance();
		if($user=="super"){
			return true;
		}
		else{
			return $ci->SettingModel->get_permission_by_user($user,$menu_name);
		}
	}

	function get_module_name($module_id){
		$ci =& get_instance();
		$data = $ci->SettingModel->get_record("bee_modules",array("module_id"=>$module_id),false,array("module_name"));
		return $data['module_name'];
	}

	function send_notification($type,$sender_id,$receiver_id,$title,$content,$url=""){
		$ci =& get_instance();
		$data = array(
			"notification_type"=>$type,
			"notification_from"=>$sender_id,
			"notification_to"=>$receiver_id,
			"notification_title"=>$title,
			"notification_content"=>$content,
			"notification_url"=>$url,
			"created_at"=>CREATED_AT,
		);

		$res = $ci->SettingModel->insert_record("bee_notification",$data);
		return $res;
	}

	function get_noti_icon($icon){
		$icons = array(
			"email"=>"mdi mdi-email",
			"password"=>"mdi mdi-key",
			"system"=>"mdi mdi-application-cog",
			"appearance"=>"mdi mdi-puzzle",
			"role"=>"mdi mdi-account-supervisor-circle",
			"permission"=>"mdi mdi-security",
			"user"=>"mdi mdi-account",
			"report"=>"mdi mdi-file-document-multiple",
			"dashboard"=>"mdi mdi-desktop-mac-dashboard",
			"project"=>"mdi mdi-cube",
			"task"=>"mdi mdi-clipboard-list",
		);

		return $icons[$icon];
	}

	function time_Diff_Minutes($startTime, $endTime) {
		date_default_timezone_set("Asia/Calcutta");
		$to_time = strtotime($endTime);
		$from_time = strtotime($startTime);
		$minutes = ($from_time - $to_time) / 60;
		return ($minutes < 0 ? 0 : abs($minutes));

	}

	function time_ago($datetime){
		date_default_timezone_set("Asia/Calcutta");
		$minutes = time_Diff_Minutes(date("Y-m-d H:i:s"),$datetime);
		$str = "";
		if($minutes<1){
			$second = $minutes*100;
			$str = ($second/10)." seconds ago";
		}
		else if($minutes>1 && $minutes<60){
			$str = $minutes." minutes ago";
		}
		else if($minutes>59 && $minutes<1440){
			$hour = $minutes/60;
			if($hour==1){
				$str = round($hour)." hour ago";
			}
			else{
				$str = round($hour)." hours ago";
			}
		}
		else{
			$day = ($minutes/60) / 24;
			if(round($day)==1){
				$str = round($day)." day ago";
			}
			else{
				$str = round($day)." days ago";
			}
		}
		return $str;
	}

	function foldercount($path){
		$fi = new FilesystemIterator($path, FilesystemIterator::SKIP_DOTS);
		return iterator_count($fi);
	}

	function foldersize($path) {
		$total_size = 0;
		$files = scandir($path);
		$cleanPath = rtrim($path, '/'). '/';

		foreach($files as $t) {
			if ($t<>"." && $t<>"..") {
				$currentFile = $cleanPath . $t;
				if (is_dir($currentFile)) {
					$size = foldersize($currentFile);
					$total_size += $size;
				}
				else {
					$size = filesize($currentFile);
					$total_size += $size;
				}
			}
		}

		return $total_size;
	}



	function format_size($size) {
		$units = explode(' ', 'B KB MB GB TB PB');

		$mod = 1024;

		for ($i = 0; $size > $mod; $i++) {
			$size /= $mod;
		}

		$endIndex = strpos($size, ".")+3;

		return substr( $size, 0, $endIndex).' '.$units[$i];
	}

	function getLang($line){
		$ci =& get_instance();
		return $ci->lang->line($line);
	}

