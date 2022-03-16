<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Users</li>
			<li class="breadcrumb-item active" aria-current="page">Manage</li>
		</ol>
	</nav>
	<div class="row mb-5 p-5">
		<div class="col-12">
			<div class="card card-table">
				<div class="card-header">
					<h5>Manage Users</h5>
				</div>
				<div class="card-footer">
					<a href="<?php echo base_url('index.php/user/add') ?>"><i class="mdi mdi-account-plus"></i> Add User</a>
				</div>
				<div class="card-body">
					<table class="table" id="datatable">
						<thead>
							<th><input type="checkbox" id="select_all"> #</th>
							<th>User ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Mobile</th>
							<th>Role</th>
							<th>Status</th>
							<th></th>
						</thead>
						<tbody>
						<?php
							$sr=1;
							foreach ($users as $user){
								$auth = $this->SettingModel->get_record("bee_auth_users",array("user_id"=>$user['user_id']))
						?>
							<tr>
								<td>
									<label for="<?php echo $user['user_id']; ?>">
										<input type="checkbox" name="ids" value="<?php echo $user['user_id']; ?>" id="<?php echo $user['user_id']; ?>">
										<?php echo $sr; ?>
									</label>

								</td>
								<td><?php echo $user['user_id']; ?></td>
								<td><?php echo $user['first_name']." ".$user['last_name']; ?></td>
								<td><?php echo $user['email']; ?></td>
								<td><?php echo $user['mobile']; ?></td>
								<td><?php echo ucwords($auth['role_id']); ?></td>
								<td><?php echo format_status($auth['status']); ?></td>
								<td>
									<a href="<?php echo base_url('index.php/user/edit/id/'.$user['user_id']); ?>"><i class="mdi mdi-account-edit mdi-24px"></i></a>
								</td>
							</tr>
						<?php
								$sr++;
							}
						?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
