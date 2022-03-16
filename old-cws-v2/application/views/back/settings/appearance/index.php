<div class="page-content appearance">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Settings</li>
			<li class="breadcrumb-item active" aria-current="page">Appearance</li>
		</ol>
	</nav>
	<div class="row p-5">
		<div class="col-12">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item" role="presentation">
					<button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#heading" type="button" role="tab" aria-controls="heading" aria-selected="true">Logo & Favicon</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#footer" type="button" role="tab" aria-controls="footer" aria-selected="false">Header & Footer Text</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="theme-tab" data-bs-toggle="tab" data-bs-target="#themes" type="button" role="tab" aria-controls="theme" aria-selected="false">Theme</button>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active p-5" id="heading" role="tabpanel" aria-labelledby="home-tab">

					<div class="row mt-3">
						<style>
							.logo-dropify .dropify-wrapper{
								width: 210px;
								height: 210px;
							}

							.dropify-message p{
								font-size: 12px !important;
							}
						</style>

						<div class="col-6 logo-dropify">
							<form action="<?php echo base_url('index.php/appearance/update-logo') ?>" method="post" enctype="multipart/form-data">
								<label for="title mb-3">Logo</label>
								<input type="file" name="logo" class="dropify" data-default-file="<?php echo base_url('media/images/logo.png'); ?>">
								<small class="badge bg-secondary text-center">Size : 210px X 210px recommended</small>
								<br>
								<button class="btn btn-primary mt-3">Update</button>
							</form>
						</div>

						<style>
							.favicon-dropify .dropify-wrapper{
								width: 50px;
								height: 50px;
							}

							.favicon-dropify .dropify-wrapper .dropify-message span.file-icon{
								font-size: 23px;
							}

							.favicon-dropify .dropify-message p{
								display: none;
							}
						</style>
						<div class="col-6 favicon-dropify">
							<form action="<?php echo base_url('index.php/appearance/update-favicon') ?>" method="post" enctype="multipart/form-data">
								<label for="title mb-3">Favicon</label>
								<input type="file" name="favicon" class="dropify" data-default-file="<?php echo base_url('media/images/favicon.png'); ?>">
								<small class="badge bg-secondary text-center">Size : 50px X 50px recommended</small>
								<br>
								<button class="btn btn-primary mt-3">Update</button>
							</form>
						</div>
					</div>
				</div>
				<div class="tab-pane fade p-5" id="footer" role="tabpanel" aria-labelledby="footer-tab">
					<form action="<?php echo base_url('index.php/appearance/header-footer-update') ?>" method="post">
						<div class="row">
							<div class="col-12">
								<div class="form-floating mb-3">
									<input type="text" class="form-control" name="title" id="title" placeholder="Title" value="<?php echo sys("title.txt",true); ?>">
									<label for="title">Title</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<div class="form-floating mb-3">
									<input type="text" class="form-control" name="footer_text" id="title" placeholder="Footer Text" value="<?php echo sys("footer.txt",true); ?>">
									<label for="title">Footer Text</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<button class="btn btn-primary mt-3">Update</button>
							</div>
						</div>
					</form>
				</div>
				<div class="tab-pane fade p-5" id="themes" role="tabpanel" aria-labelledby="theme-tab">
					<div class="row">
						<div class="col-4">
							<label for="choose-theme">Theme</label>
							<select name="theme" id="choose-theme" class="form-control">
								<option value="">Default</option>
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
