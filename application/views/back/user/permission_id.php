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
			<form action="<?php echo base_url('index.php/user/permission/update') ?>" method="post">
			<div class="card">
				<div class="card-header">
					<h4>Permssion for <?php echo $user_id ?></h4>
				</div>
				<div class="card-body">
					<label for="note" class="alert alert-warning">
						Checkbox with <input type="checkbox" class="form-check-input check-success" id="note" checked> was role permission and you can overwrite that permission here
					</label>
					<?php
						foreach ($modules as $module){
					?>
						<div class="row">
							<div class="col-12">
								<h5>
									<label for="<?php echo "id_".$module['module_id'].$user_id; ?>">
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
											<input class="form-check-input <?php echo $this->SettingModel->get_permission_by_user_url($role_id,$sm['sm_url'])?"check-success":""; ?> <?php echo "menu_".$module['module_id']; ?>" type="checkbox" value="1" id="<?php echo $sm['sm_id']; ?>" name="<?php echo $sm['sm_id']; ?>" <?php echo $this->SettingModel->get_permission_by_user_url_1($user_id,$sm['sm_url'])?"checked":""; ?>>
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
				</div>
				<div class="card-footer">
					<input type="hidden" name="user_id" value="<?php echo $user_id ?>">
					<button class="btn btn-warning">Update</button>
				</div>
			</div>
			</form>
		</div>
	</div>
</div>

