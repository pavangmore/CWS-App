<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>CWS - Activation Success</title>

	<link rel="stylesheet" href="<?php echo assets('vendor/bootstrap/css/bootstrap.min.css'); ?>">
	<link rel="stylesheet" href="<?php echo assets('vendor/material/css/materialdesignicons.min.css'); ?>">
	<link rel="stylesheet" href="<?php echo assets('vendor/choices/css/choices.min.css'); ?>">
	<link rel="stylesheet" href="<?php echo assets('css/theme.css'); ?>">
</head>
<body>
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
		<?php
			if(getSession("user_logged")){
		?>
		<ul class="navbar-nav ms-auto mb-lg-0">
			<li class="nav-item dropdown pe-3">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					<i class="mdi mdi-message-reply-outline"></i>
				</a>
				<ul class="dropdown-menu dropdown-menu-lg-end dropdown-menu-animated" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#">Action</a></li>
					<li><a class="dropdown-item" href="#">Another action</a></li>
					<li><hr class="dropdown-divider"></li>
					<li><a class="dropdown-item" href="#">Something else here</a></li>
				</ul>
			</li>
			<li class="nav-item dropdown pe-3">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					<i class="mdi mdi-bell-ring"></i>
				</a>
				<ul class="dropdown-menu dropdown-menu-lg-end dropdown-menu-animated" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#">Action</a></li>
					<li><a class="dropdown-item" href="#">Another action</a></li>
					<li><hr class="dropdown-divider"></li>
					<li><a class="dropdown-item" href="#">Something else here</a></li>
				</ul>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					<i class="mdi mdi-account-circle"></i>
				</a>
				<ul class="dropdown-menu dropdown-menu-lg-end dropdown-menu-animated" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="<?php echo base_url('index.php/my-profile'); ?>"><i class="mdi mdi-account"></i>&emsp;Profile</a></li>
					<li><a class="dropdown-item" href="<?php echo base_url('index.php/my-settings'); ?>"><i class="mdi mdi-cog"></i>&emsp;Settings</a></li>
					<li><a class="dropdown-item" href="#"><i class="mdi mdi-bell"></i>&emsp;Notifications</a></li>
					<li><hr class="dropdown-divider"></li>
					<li><a class="dropdown-item" href="<?php echo base_url('index.php/logout'); ?>"><i class="mdi mdi-logout"></i>&emsp;Logout</a></li>
				</ul>
			</li>
		</ul>
		<?php
			}
		?>
	</div>
</nav>

<div class="container">
	<div class="row">
		<div class="col-12 text-center">
			<h1 class="xy-center text-success"><i class="mdi mdi-check-circle-outline"></i>
				<br>
				Email Verified Successfully
				<br><br>
				<?php
				if(getSession("user_logged")){
				?>
				<a href="<?php echo base_url('index.php/dashboard'); ?>" class="btn btn-primary">Go To Dashboard</a>
					<?php
				}
				else{
				?>
					<a href="<?php echo base_url(''); ?>" class="btn btn-primary">Go To Login</a>
					<?php
				}
				?>
			</h1>
		</div>
	</div>
</div>
<!--Footer Script-->
<script src="<?php echo assets('vendor/jquery/jquery-3.6.0.min.js') ?>"></script>
<script src="<?php echo assets('vendor/jquery/jquery-ui.min.js') ?>"></script>
<script src="<?php echo assets('vendor/bootstrap/js/popper.min.js') ?>"></script>
<script src="<?php echo assets('vendor/bootstrap/js/bootstrap.js') ?>"></script>
<script src="<?php echo assets('js/theme.js') ?>"></script>
</body>
</html>
