<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Settings</li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/system/defaults') ?>">System Defaults</a></li>
			<li class="breadcrumb-item active" aria-current="page">Email</li>
		</ol>
	</nav>
	<div class="row p-5">
		<div class="col-lg-6 offset-3">
			<form action="<?php echo base_url('index.php/system/defaults/email/update') ?>" method="post">
				<div class="card">
					<div class="card-header">
						<h5>Email Defaults</h5>
					</div>
					<div class="card-body">
						<?php
							foreach ($defaults as $email){
						?>
						<div class="row mt-3">
							<div class="col-5">
								<?php
									echo ucwords(str_replace("_"," ",$email['functionality']));
								?>
							</div>
							<div class="col-7">
								<select name="<?php echo $email['functionality']; ?>" class="form-control">
									<option value="">Select</option>
									<?php
										foreach ($templates as $template){
									?>
									<option value="<?php echo $template['template_id']; ?>" <?php echo $template['template_id']==$email['default_value']?"selected":""; ?>><?php echo $template['template_name']; ?></option>
									<?php
										}
									?>
								</select>
							</div>
						</div>
								<hr>
						<?php
							}
						?>
					</div>
					<div class="card-footer text-end">
						<input type="hidden" name="type" value="email">
						<button class="btn btn-primary">Update</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
