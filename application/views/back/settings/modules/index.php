<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Settings</li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/role-and-permission') ?>">Modules</a></li>
		</ol>
	</nav>
	<div class="row mb-5  p-5">
		<div class="col-lg-4">
			<div class="card mb-4 mb-lg-0" id="card_create_module">
				<div class="card-header">
					<h5>Create Module</h5>
				</div>
				<form action="<?php echo base_url('index.php/module/save'); ?>" method="post">
					<div class="card-body">
						<div class="mb-4">
							<label class="form-label req" for="moduleName">Module Name</label>
							<input class="form-control" id="moduleName" type="text" name="module_name" required>
						</div>
						<div class="mb-4">
							<label class="form-label" for="roleDescription">Description</label>
							<textarea name="module_description" class="form-control" cols="30" rows="5"></textarea>
						</div>
						<button class="btn btn-primary mb-4">Save</button>
					</div>
				</form>
			</div>
			<div class="card mb-4 mb-lg-0 hide" id="card_edit_module">
				<div class="card-header">
					<h5>Edit Module</h5>
				</div>
				<form action="<?php echo base_url('index.php/module/update'); ?>" method="post">
					<div class="card-body">
						<div class="mb-4">
							<label class="form-label req" for="editModuleName">Module Name</label>
							<input class="form-control" id="editModuleName" type="text" name="module_name" required>
						</div>
						<div class="mb-4">
							<label class="form-label" for="editModuleDescription">Description</label>
							<textarea id="editModuleDescription" name="module_description" class="form-control" cols="30" rows="5"></textarea>
						</div>
						<input type="hidden" name="module_id" id="editModuleId" value="">
						<button class="btn btn-primary mb-4">Update</button>
						<button class="btn btn-secondary mb-4" id="cancel_card_edit_module" type="button">Cancel</button>
					</div>
				</form>
			</div>
		</div>
		<div class="col-lg-8">
			<div class="card card-table">
				<div class="card-header">
					<h5>Modules List</h5>
				</div>
				<div class="card-body">
						<table class="table table-responsive" id="datatable">
							<thead>
							<th>#</th>
							<th>Module ID</th>
							<th>Module Name</th>
							<th>Status</th>
							<th></th>
							</thead>
							<tbody>
							<?php
							$sr=1;
							foreach ($module_list as $module){
								?>
								<tr>
									<td><label for="sr<?php echo $sr; ?>"><input type="checkbox" id="sr<?php echo $sr; ?>" name="ids[]" value="<?php echo $module['id']; ?>"> <?php echo $sr; ?></label></td>
									<td><?php echo $module['module_id']; ?></td>
									<td><?php echo ucwords($module['module_name']); ?></td>
									<td>
										<?php echo $module['status']?"Active":"Inactive"; ?>
									</td>
									<td>
										<a href="<?php echo base_url('index.php/module/sub-module/'.$module['module_id']) ?>" data-toggle="tooltip" title="Sub Module"><i class="mdi mdi-view-module mdi-24px"></i></a>&emsp;

										<input type="hidden" id="<?php echo $module['module_id']; ?>_name" value="<?php echo $module['module_name']; ?>">
										<input type="hidden" id="<?php echo $module['module_id']; ?>_description" value="<?php echo $module['module_description']; ?>">
										<a href="javascript:void(0)" class="editModule" rel="<?php echo $module['module_id']; ?>" data-toggle="tooltip" title="Edit"><i class="mdi mdi-pencil"></i></a>
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
