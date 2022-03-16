<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Settings</li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/email') ?>">System Defaults</a></li>
		</ol>
	</nav>
	<div class="row p-5">
		<div class="col-md-4 mb-4">
			<div class="card h-100">
				<div class="card-body text-center">
					<div class="icon icon-xl mx-auto mb-4 bg-danger-light">
						<i class="text-danger mdi mdi-email-box mdi-48px"></i>
					</div>
					<a href="<?php echo base_url('index.php/system/defaults/email') ?>" class="btn btn-danger">Manage Email</a>
				</div>
			</div>
		</div>
		<div class="col-md-4 mb-4">
			<div class="card h-100">
				<div class="card-body text-center">
					<div class="icon icon-xl mx-auto mb-4 bg-danger-light">
						<i class="text-info mdi mdi-theme-light-dark mdi-48px"></i>
					</div>
					<button class="btn btn-info">Manage Theme</button>
				</div>
			</div>
		</div>
		<div class="col-md-4 mb-4">
			<div class="card h-100">
				<div class="card-body text-center">
					<div class="icon icon-xl mx-auto mb-4">
						<i class="text-warning mdi mdi-format-font mdi-48px"></i>
					</div>
					<a href="<?php echo base_url('index.php/system/defaults/language') ?>" class="btn btn-warning">Manage Language</a>
				</div>
			</div>
		</div>
	</div>
</div>
