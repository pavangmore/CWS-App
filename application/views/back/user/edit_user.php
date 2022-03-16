<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Users</li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/users/manage') ?>">Manage</a></li>
			<li class="breadcrumb-item active" aria-current="page">Add User</li>
		</ol>
	</nav>
	<div class="row mb-5 p-5">
		<div class="col-12">
			<form action="<?php echo base_url('index.php/user/update') ?>" method="post">
				<div class="card">
					<div class="card-header">
						<h5>Edit User - <?php echo $user['first_name']." ".$user['last_name']; ?></h5>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col">
								<label for="fname">First Name</label>
								<input type="text" class="form-control" name="first_name" id="fname" value="<?php echo $user['first_name']; ?>">
							</div>
							<div class="col">
								<label for="mname">Middle Name</label>
								<input type="text" class="form-control" name="middle_name" id="mname" value="<?php echo $user['middle_name']; ?>">
							</div>
							<div class="col">
								<label for="lname">Last Name</label>
								<input type="text" class="form-control" name="last_name" id="lname" value="<?php echo $user['last_name']; ?>">
							</div>
						</div>
						<div class="row mt-3">
							<div class="col">
								<label for="email">Email</label>
								<input type="email" class="form-control" name="email" id="email" value="<?php echo $user['email']; ?>">
							</div>
							<div class="col">
								<label for="mobile">Mobile</label>
								<input type="text" class="form-control" name="mobile" id="mobile" maxlength="10" value="<?php echo $user['mobile']; ?>">
							</div>
							<div class="col">
								<label for="dob">DOB</label>
								<input type="date" class="form-control" name="dob" id="dob" value="<?php echo $user['dob']; ?>">
							</div>
						</div>
					</div>
					<div class="card-footer text-end">
						<input type="hidden" name="user_id" value="<?php echo $user['user_id']; ?>">
						<button class="btn btn-primary">Update</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
