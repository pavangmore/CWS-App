<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>CWS</title>

	<link rel="stylesheet" href="<?php echo assets('vendor/bootstrap/css/bootstrap.min.css'); ?>">
	<link rel="stylesheet" href="<?php echo assets('css/theme.css'); ?>">
</head>
<body>
<div class="page-holder align-items-center py-4 bg-gray-100 vh-100">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-6 px-lg-4">
				<div class="card">
					<div class="card-header">
						<h5>Login</h5>
					</div>
					<div class="card-body p-lg-5">

						<form id="loginForm" action="<?php echo base_url('index.php/check-authentication') ?>" method="post">
							<div class="form-floating mb-3">
								<input class="form-control" name="username" id="floatingInput" type="text" placeholder="name@example.com">
								<label for="floatingInput">Email address</label>
							</div>
							<div class="form-floating mb-3">
								<input class="form-control" name="password" id="floatingPassword" type="password" placeholder="Password">
								<label for="floatingPassword">Password</label>
							</div>
							<div class="form-check mb-3">
								<div class="row">
									<div class="col-6">
										<input class="form-check-input" type="checkbox" name="remember_me" id="remember_me">
										<label class="form-check-label" for="remember_me">Remember me</label>
									</div>
									<div class="col-6 text-end">
										<a href="">forgot password?</a>
									</div>
								</div>
							</div>
							<button class="btn btn-primary btn-lg" type="submit">Submit</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-xl-5 ms-xl-auto px-lg-4 text-center text-primary"><img class="img-fluid mb-4" width="150" src="<?php echo media('images/logo.png') ?>" alt="CWS">
				<h1 class="mb-4"><strong>Center for World Solidarity</strong></h1>
			</div>
		</div>
	</div>
</div>
<input type="hidden" id="success" value="<?php echo getFlashdata("success") ?>">
<input type="hidden" id="fail" value="<?php echo getFlashdata("fail") ?>">

<div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
	<div class="toast success hide bg-success" role="alert" aria-live="assertive" aria-atomic="true">
		<div class="toast-header">
			<strong class="me-auto">Success</strong>
			<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
		</div>
		<div class="toast-body text-white">
			<?php echo getFlashdata("success") ?>
		</div>
	</div>
</div>

<div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
	<div class="toast fail hide bg-danger" role="alert" aria-live="assertive" aria-atomic="true">
		<div class="toast-header">
			<strong class="me-auto">Failed</strong>
			<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
		</div>
		<div class="toast-body text-white">
			<?php echo getFlashdata("fail") ?>
		</div>
	</div>
</div>
<!--Footer Script-->
<script src="<?php echo assets('vendor/jquery/jquery-3.6.0.min.js') ?>"></script>
<script src="<?php echo assets('vendor/jquery/jquery-ui.min.js') ?>"></script>
<script src="<?php echo assets('vendor/bootstrap/js/popper.min.js') ?>"></script>
<script src="<?php echo assets('vendor/bootstrap/js/bootstrap.js') ?>"></script>
<script src="<?php echo assets('js/login.js') ?>"></script>
</body>
</html>
