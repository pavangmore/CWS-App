<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<title><?php echo $title; ?></title>
	<link rel="shortcut icon" href="<?php echo media('images/favicon.png') ?>">
	<link rel="stylesheet" href="<?php echo assets('vendor/bootstrap/css/bootstrap.min.css'); ?>">
	<link rel="stylesheet" href="<?php echo assets('vendor/material/css/materialdesignicons.min.css'); ?>">
	<link rel="stylesheet" href="<?php echo assets('vendor/datatable/css/jquery.dataTables.min.css'); ?>">
	<link rel="stylesheet" href="<?php echo assets('vendor/choices/css/choices.min.css'); ?>">
	<link rel="stylesheet" href="<?php echo assets('vendor/dropify/css/dropify.min.css'); ?>">
	<link rel="stylesheet" href="<?php echo assets('vendor/org_chart/style.css'); ?>">
	<link rel="stylesheet" href="<?php echo assets('css/theme.css'); ?>">
</head>
<body>
<div class="loader">
	<div class="xy-center">
		<div class="sk-chasing-dots">
			<div class="sk-child sk-dot1"></div>
			<div class="sk-child sk-dot2"></div>
		</div>
	</div>
</div>
<input type="hidden" id="base_url" value="<?php echo base_url(); ?>">
<nav class="navbar navbar-expand-lg px-4 py-2 bg-white fixed-top shadow">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">
			<img src="<?php echo media('images/logo.png') ?>" class="img-fluid" width="50px" alt="CWS LOGO">
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<i class="mdi mdi-menu"></i>
		</button>
		<ul class="navbar-nav me-auto mb-2 mb-lg-0">
			<li class="nav-item pe-3">
				<a href="javascript:void(0)" class="nav-link menu-open"><i class="mdi mdi-menu-open mdi-24px"></i></a>
			</li>
		</ul>
		<ul class="navbar-nav mx-auto mb-2 mb-lg-0">
			<li class="nav-item pe-3">
				<h3 class="nav-link"><strong><?php echo sys("title.txt",true); ?></strong></h3>
			</li>
		</ul>
		<ul class="navbar-nav ms-auto mb-lg-0">
			<?php
				$notification = $this->SettingModel->get_notification_for_user();
				$read_status = 0;
				foreach ($notification as $noti){
					if($noti['read_status']){
						$read_status = 1;
					}
				}
			?>
			<li class="nav-item dropdown pe-3">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					<i class="mdi mdi-bell<?php echo $read_status?"-ring":""; ?>"></i>
				</a>

				<ul class="dropdown-menu dropdown-menu-lg-end dropdown-menu-animated" aria-labelledby="navbarDropdown">
					<?php
						foreach ($notification as $noti){
					?>
					<li>
						<a class="dropdown-item" href="<?php echo base_url('index.php/notification'); ?>">
							<span class="row">
								<span class="col-2">
									<span class="icon-circle">
										<i class="<?php echo get_noti_icon($noti['notification_type']); ?>"></i>
									</span>
								</span>
								<span class="col-10">
									<?php echo $noti['notification_title']; ?>
									<br>
									<small class="text-end"><?php echo time_ago($noti['created_at']); ?></small>
								</span>
							</span>
						</a>
					</li>
					<?php } ?>
				</ul>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					<i class="mdi mdi-account-circle"></i>
				</a>
				<ul class="dropdown-menu dropdown-menu-lg-end dropdown-menu-animated" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="<?php echo base_url('index.php/my-profile'); ?>"><i class="mdi mdi-account"></i>&emsp;Profile</a></li>
					<li><hr class="dropdown-divider"></li>
					<li><a class="dropdown-item" href="<?php echo base_url('index.php/logout'); ?>"><i class="mdi mdi-logout"></i>&emsp;Logout</a></li>
				</ul>
			</li>
		</ul>
	</div>
</nav>
