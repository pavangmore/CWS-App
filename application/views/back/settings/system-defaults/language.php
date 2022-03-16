<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Settings</li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/system/defaults') ?>">System Defaults</a></li>
			<li class="breadcrumb-item active" aria-current="page">Language</li>
		</ol>
	</nav>
	<div class="row p-5">
		<div class="col-lg-6 offset-3">
			<div class="card">
				<form action="<?php echo base_url('index.php/system/defaults/language/update') ?>" method="post">
					<div class="card-body">
						<label for="">Default System Language</label><br>
						<select name="default-language" class="form-control mt-3">
							<option value="">Select</option>
							<option value="english" <?php echo $defaults['default_value']=="english"?"selected":""; ?>>English</option>
							<option value="hindi" <?php echo $defaults['default_value']=="hindi"?"selected":""; ?>>Hindi</option>
							<option value="odia" <?php echo $defaults['default_value']=="odia"?"selected":""; ?>>Odia</option>
							<option value="telugu" <?php echo $defaults['default_value']=="telugu"?"selected":""; ?>>Telugu</option>
							<option value="tamil" <?php echo $defaults['default_value']=="tamil"?"selected":""; ?>>Tamil</option>
						</select>
						<br>
						<button class="btn btn-primary">Save</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
