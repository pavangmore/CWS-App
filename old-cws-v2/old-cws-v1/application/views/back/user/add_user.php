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
			<form action="<?php echo base_url('index.php/user/save') ?>" method="post">
				<div class="card">
				<div class="card-header">
					<h5>Add User</h5>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col">
							<label for="fname">First Name</label>
							<input type="text" class="form-control" name="first_name" id="fname">
						</div>
						<div class="col">
							<label for="mname">Middle Name</label>
							<input type="text" class="form-control" name="middle_name" id="mname">
						</div>
						<div class="col">
							<label for="lname">Last Name</label>
							<input type="text" class="form-control" name="last_name" id="lname">
						</div>
					</div>
					<div class="row mt-3">
						<div class="col">
							<label for="email">Email</label>
							<input type="email" class="form-control" name="email" id="email">
						</div>
						<div class="col">
							<label for="mobile">Mobile</label>
							<input type="text" class="form-control" name="mobile" id="mobile" maxlength="10">
						</div>
						<div class="col">
							<label for="dob">DOB</label>
							<input type="date" class="form-control" name="dob" id="dob">
						</div>
					</div>
				</div>
				<div class="card-footer text-end">
					<button class="btn btn-primary">Save</button>
				</div>
			</div>
			</form>
		</div>
	</div>
</div>
