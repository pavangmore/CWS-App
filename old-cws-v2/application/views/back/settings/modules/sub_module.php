<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Settings</li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/modules') ?>">Modules</a></li>
			<li class="breadcrumb-item active" aria-current="page">Sub Modules</li>
		</ol>
	</nav>
	<div class="row mb-5  p-5">
		<div class="col-lg-4">
			<div class="card mb-4 mb-lg-0">
				<div class="card-header">
					<h5>Create Sub Module</h5>
				</div>
				<form action="<?php echo base_url('index.php/module/sub_module/save'); ?>" method="post">
					<div class="card-body">
						<div class="mb-4">
							<label class="form-label req" for="moduleName">Module</label>
							<input class="form-control" id="moduleName" type="text" name="module_name" value="<?php echo $module['module_name']; ?>" required readonly>
							<input type="hidden" name="module_id" value="<?php echo $module['module_id']; ?>" required readonly>
						</div>
						<div class="mb-4">
							<label class="form-label req" for="subModuleName">Sub Module Name</label>
							<input class="form-control" id="subModuleName" type="text" name="sub_module_name" required>
						</div>
						<div class="mb-4">
							<label class="form-label req" for="moduleUrl">Module URL</label>
							<input class="form-control" id="moduleUrl" type="text" name="sub_module_url" required>
						</div>
						<button class="btn btn-primary mb-4">Save</button>
					</div>
				</form>
			</div>
		</div>
		<div class="col-lg-8">
			<div class="card card-table">
				<div class="card-header">
					<h5>Sub Modules List</h5>
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
							<th>Name</th>
							<th>URL</th>
							<th>Status</th>
							<th></th>
							</thead>
							<tbody>
							<?php
								$sr=1;
							foreach ($sub_module_list as $module){
								?>
								<tr>
									<td><label for="sr<?php echo $sr; ?>"><input type="checkbox" id="sr<?php echo $sr; ?>" name="ids[]" value="<?php echo $module['id']; ?>"> <?php echo $sr; ?></label></td>
									<td><?php echo ucwords($module['sm_name']); ?></td>
									<td><?php echo $module['sm_url']; ?></td>
									<td>
										<?php echo format_status($module['sm_status']); ?>
									</td>
									<td>
										<a href="<?php echo base_url('index.php/module/sub-module/'.$module['sm_id']) ?>" data-toggle="tooltip" title="Edit"><i class="mdi mdi-pencil"></i></a>
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
