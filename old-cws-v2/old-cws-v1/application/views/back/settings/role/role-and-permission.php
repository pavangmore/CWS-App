<div class="page-content section-role-permission">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Settings</li>
			<li class="breadcrumb-item active" aria-current="page">Roles & Permission</li>
		</ol>
	</nav>
	<div class="row mt-5">
		<div class="col-6">
			<?php
				echo "<span class='text-success'>".getFlashdata("success")."</span>";
			?>
		</div>
		<div class="col-6 text-end">
			<a href="<?php echo base_url('index.php/roles') ?>" class="btn btn-primary"><i class="mdi mdi-plus-circle"></i> Manage Role</a>
		</div>
		<div class="col-12 mt-3">
			<div class="card">
				<div class="card-header">
					<p>A role is a collection of permissions defined for the whole system that you can assign to specific users in specific contexts. The combination of roles and context define a specific user's ability to do something on backend system.</p>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col-3">
							<div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
								<!-------------------------------------------------------------------------------------------------->
								<?php
									$active = "active";
									foreach ($role_list as $role){
								?>
								<button class="nav-link text-start mt-2 <?php echo $active ?>" id="v-info-tab" data-bs-toggle="pill" data-bs-target="#v-<?php echo $role['role_id']; ?>" type="button" role="tab" aria-controls="v-users" aria-selected="true"><?php echo ucwords($role['role_name']); ?></button>
								<?php
										$active = "";
									}
								?>
<!-------------------------------------------------------------------------------------------------->
							</div>
						</div>
						<div class="col-9">
							<div class="tab-content" id="v-pills-tabContent">
							<?php
								$active = "active";
								foreach ($role_list as $role){
							?>
								<div class="tab-pane p-3 <?php echo $active ?>" id="v-<?php echo $role['role_id']; ?>" role="tabpanel" aria-labelledby="v-pills-users-tab">
									<form action="<?php echo base_url('index.php/role/permission/update') ?>" method="post">
										<div class="row">
											<div class="col-12">
												<h5><?php echo ucwords($role['role_name']); ?> Permissions</h5>
											</div>
										</div>
										<hr>
										<?php
											foreach ($modules as $module){
										?>
										<div class="row">
											<div class="col-12">
												<h5>
													<label for="<?php echo "id_".$module['module_id'].$role['role_id']; ?>">
														<input type="checkbox" name="<?php echo "menu_".$module['module_id']; ?>" value="1" id="<?php echo "id_".$module['module_id'].$role['role_id']; ?>" class="main_module" <?php echo main_menu_access($role['role_id'],$module['module_id'])?"checked":""; ?>>
														<strong><?php echo $module['module_name']; ?></strong>
													</label>
												</h5>
											</div>
										</div>
										<div class="row">
											<?php
												if(sizeof($module['sub_module'])>0){
												foreach ($module['sub_module'] as $sm){
											?>
												<div class="col-4">
													<div class="form-check">
														<input class="form-check-input <?php echo "menu_".$module['module_id']; ?>" type="checkbox" value="1" id="<?php echo $sm['sm_id']; ?>" name="<?php echo $sm['sm_id']; ?>" <?php echo $this->SettingModel->get_permission_by_user_url($role['role_id'],$sm['sm_url'])?"checked":""; ?> <?php echo main_menu_access($role['role_id'],$module['module_id'])?"":"disabled"; ?>>
														<label class="form-check-label" for="<?php echo $sm['sm_id']; ?>">
															<?php echo $sm['sm_name']; ?>
														</label>
													</div>
												</div>
											<?php
												}}
												else{
											?>
												<p>No sub module found</p>
											<?php
												}
											?>
										</div>
										<hr>
										<?php
											}
										?>
										<div class="row">
											<div class="col text-end">
												<input type="hidden" name="role_id" value="<?php echo $role['role_id']; ?>">
												<button class="btn btn-primary">Update</button>
											</div>
										</div>
									</form>
								</div>
							<?php
									$active = "";
								}
							?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
