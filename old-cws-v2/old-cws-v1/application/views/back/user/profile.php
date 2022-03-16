<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Reports</li>
			<li class="breadcrumb-item active" aria-current="page">Monthly</li>
		</ol>
	</nav>
	<div class="row">
		<div class="col-lg-5">
			<div class="card card-profile mb-4">
				<div class="card-header" style="background-image: url(https://d19m59y37dris4.cloudfront.net/bubbly/1-1/img/photos/paul-morris-116514-unsplash.jpg);"> </div>
				<div class="card-body text-center"><img class="card-profile-img bg-white" src="<?php echo base_url('media/images/profile.png') ?>" alt="<?php echo getSession("logged_user_name"); ?>">
					<h3 class="mb-3"><?php echo getSession("logged_user_name"); ?></h3>
					<p class="mb-4"></p>
					<button class="btn btn-sm" type="button" id="editProfile_btn" title="Edit Profile" data-toggle="tooltip"><span class="mdi mdi-pencil"></span></button>
					<button class="btn btn-sm" type="button" id="updatePassword_btn" title="Change Password" data-toggle="tooltip"><span class="mdi mdi-lock"></span></button>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col-3">
							<label for="">Mobile : </label>
						</div>
						<div class="col-9">
							<label for=""><?php echo $user['mobile']; ?></label>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-3">
							<label for="">Email : </label>
						</div>
						<div class="col-9">
							<label for=""><?php echo $user['email']; ?></label>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-3">
							<label for="">DOB : </label>
						</div>
						<div class="col-9">
							<label for=""><?php echo format_date($user['dob']); ?></label>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-7">
			<form action="<?php echo base_url('index.php/user/profile/update') ?>" method="post">
				<div class="card hide" id="editProfile">
					<div class="card-header">
						<h4 class="card-heading">Edit Profile</h4>
					</div>
					<div class="card-body">
						<form action="<?php echo base_url('index.php/user/update') ?>" method="post">
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
						</form>
					</div>
					<div class="card-footer text-end">
						<input type="hidden" name="user_id" value="<?php echo $user['user_id']; ?>">
						<button class="btn btn-secondary" id="cancelEditProfile" type="button">Cancel</button>
						<button class="btn btn-primary">Update</button>
					</div>
				</div>
			</form>
				<div class="card hide" id="updatePassword">
					<div class="card-header">
						<h4 class="card-heading">Update Password</h4>
					</div>
					<form action="<?php echo base_url('index.php/update/password') ?>" method="post">
						<div class="card-body">

								<div class="row">
									<div class="col">
										<label for="password">Password</label>
										<input type="password" class="form-control" name="password" id="password">
									</div>
									<div class="col">
										<label for="confirm_password">Confirm Password</label>
										<input type="password" class="form-control" name="confirm_password" id="confirm_password">
									</div>
								</div>

						</div>
						<div class="card-footer text-end">
							<input type="hidden" name="user_id" value="<?php echo $user['user_id']; ?>">
							<button class="btn btn-secondary" id="cancelUpdatePassword" type="button">Cancel</button>
							<button class="btn btn-primary">Update</button>
						</div>
					</form>
				</div>
		</div>
	</div>
</div>
