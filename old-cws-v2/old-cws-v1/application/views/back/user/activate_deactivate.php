<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Users</li>
			<li class="breadcrumb-item active" aria-current="page">Assign</li>
			<li class="breadcrumb-item active" aria-current="page">Role Assign</li>
		</ol>
	</nav>
	<div class="row mb-5 p-5">
		<div class="col-10 offset-1">
			<div class="card">
				<div class="card-header">
					<h5>Choose Role</h5>
					<select name="status" id="status" class="form-control">
						<option value="1">Active</option>
						<option value="0">Deactive</option>
					</select>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col-6">
							<h6>User</h6>
						</div>
						<div class="col-2">
							<h6>Status</h6>
						</div>
						<div class="col-4">
							<h6>Error</h6>
						</div>
					</div>
					<?php
					foreach ($users as $user){
						?>
						<div class="row">
							<div class="col-6">
								<?php
								echo $user['first_name']." ".$user['last_name'];
								?>
							</div>
							<div class="col-2">
								<i class="mdi mdi-close-circle mdi-24px first_process text-danger" id="spin_<?php echo $user['user_id'] ?>"></i>
								<i class="mdi mdi-loading mdi-spin mdi-24px second_process text-warning hide" id="spin_<?php echo $user['user_id'] ?>"></i>
								<i class="mdi mdi-check-circle mdi-24px third_process text-success hide" id="spin_<?php echo $user['user_id'] ?>"></i>
								<input type="hidden" class="user" id="<?php echo $user['user_id'] ?>" value="<?php echo $user['user_id'] ?>">
							</div>
							<div class="col-4">
								<div id="error_<?php echo $user['user_id'] ?>" class="text-danger">

								</div>
							</div>
						</div>
						<?php
					}
					?>
				</div>
				<div class="card-footer text-end">
					<button class="btn btn-primary" type="button" id="activate_user">Apply</button>
				</div>
			</div>
		</div>
	</div>
</div>
