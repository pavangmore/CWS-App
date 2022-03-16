<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Settings</li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/role-and-permission') ?>">Roles & Permission</a></li>
			<li class="breadcrumb-item active" aria-current="page">Roles</li>
		</ol>
	</nav>
	<div class="row mb-5  p-5">
		<div class="col-lg-4">
			<div class="card mb-4 mb-lg-0">
				<div class="card-header">
					<h5>Create Role</h5>
				</div>
				<?php
					if(getFlashdata("fail")!=""){
				?>
				<div class="card-footer">
					<strong class="text-danger"><?php echo getFlashdata("fail"); ?></strong>
				</div>
				<?php } ?>

				<?php
					if(getFlashdata("success")!=""){
				?>
				<div class="card-footer">
					<strong class="text-success"><?php echo getFlashdata("success"); ?></strong>
				</div>
				<?php } ?>
				<form action="<?php echo base_url('index.php/role/save'); ?>" method="post">
					<div class="card-body">
						<div class="mb-4">
							<label class="form-label req" for="roleName">Role</label>
							<input class="form-control" id="roleName" type="text" name="role_name" required>
						</div>
						<div class="mb-4">
							<label class="form-label" for="roleDescription">Description</label>
							<textarea name="role_description" class="form-control" cols="30" rows="5"></textarea>
						</div>
						<button class="btn btn-primary mb-4">Save</button>
					</div>
				</form>
			</div>
		</div>
		<div class="col-lg-8">
			<div class="card card-table">
				<div class="card-header">
					<h5>Role List</h5>
				</div>
				<form action="<?php echo base_url('index.php/role/delete') ?>" method="post">
					<div class="card-footer">
						<button type="button" class="btn delete"><i class="mdi mdi-trash-can"></i> Delete</button>
						<div class="modal" tabindex="-1" id="deleteDialouge">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">Delete Confirmation</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<p>Do you really want to delete this record?</p>
										<small class="text-danger">This process cannot be undone.</small>
									</div>
									<div class="modal-footer">
										<input type="hidden" id="url">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
										<button class="btn btn-danger">Delete</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card-body">
						<table class="table table-responsive" id="datatable">
							<thead>
								<th>#</th>
								<th>Role Name</th>
								<th>Role Description</th>
								<th></th>
							</thead>
							<tbody>
							<?php
								$sr=1;
								foreach ($role_list as $role){
							?>
								<tr>
									<td><label for="sr<?php echo $sr; ?>"><input type="checkbox" id="sr<?php echo $sr; ?>" name="ids[]" value="<?php echo $role['id']; ?>"> <?php echo $sr; ?></label></td>
									<td><?php echo ucwords($role['role_name']); ?></td>
									<td><?php echo $role['role_description']; ?></td>
									<td>
										<a href=""><i class="mdi mdi-account-edit mdi-24px"></i></a>
									</td>
								</tr>
							<?php
									$sr++;
								}
							?>
							</tbody>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
