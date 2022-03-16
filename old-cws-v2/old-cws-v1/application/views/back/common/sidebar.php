<div class="sidebar" id="sidebar">
	<?php
		if(main_menu_access(getSession("logged_user_role"),"dashboard")){
	?>
	<div class="row mt-4">
		<div class="col-12 side-item">
			<a href="<?php echo base_url('index.php/dashboard') ?>" role="button" class="side-link">
				<span class="side-icon ps-2">
					<i class="mdi mdi-desktop-mac-dashboard"></i>
				</span>
				<span class="side-text ps-2">
					<?php echo getLang(get_module_name("dashboard")); ?>
				</span>
			</a>
		</div>
	</div>
	<?php } ?>
	<div class="row mt-3">
		<div class="col-12 side-item">
			<a href="<?php echo base_url('index.php/project') ?>" role="button" class="side-link">
				<span class="side-icon ps-2">
					<i class="mdi mdi-hospital-building"></i>
				</span>
				<span class="side-text ps-2">
					Admin & Finance
				</span>
			</a>
		</div>
	</div>
	<?php
		if(main_menu_access(getSession("logged_user_role"),"projects")){
	?>
		<div class="row mt-3">
			<div class="col-12 side-item">
				<a href="<?php echo base_url('index.php/project') ?>" role="button" class="side-link">
				<span class="side-icon ps-2">
					<i class="mdi mdi-hospital-building"></i>
				</span>
					<span class="side-text ps-2">
					<?php echo getLang(get_module_name("projects")); ?>
				</span>
				</a>
			</div>
		</div>
	<?php } ?>
	<?php
		if(main_menu_access(getSession("logged_user_role"),"banks")){
	?>
	<div class="row mt-3">
		<div class="col-12 side-item">
			<a data-bs-toggle="collapse" class="side-link link-collapse collapsed" href="#bank" role="button" aria-expanded="false" aria-controls="bank">
				<span class="side-icon ps-2">
					<i class="mdi mdi-bank"></i>
				</span>
				<span class="side-text ps-2">
					<?php echo getLang(get_module_name("banks")); ?>
				</span>
			</a>
			<div class="collapse" id="bank">
				<div class="card card-body">
					<?php
						if(menu_access(getSession("logged_user_role"),$this->uri->uri_string())){
					?>
					<a href="<?php echo base_url('index.php/bank/bank-control-sheet') ?>">Bank Control Sheet</a>
							<span class="side-divider"></span>
					<a href="<?php echo base_url('index.php/bank/salary-summary') ?>">Salary Summary</a>
							<span class="side-divider"></span>
					<a href="<?php echo base_url('index.php/bank/vehicle-insurance') ?>">Vehicle Insurance</a>
							<span class="side-divider"></span>
					<a href="<?php echo base_url('index.php/bank/rent-tracker') ?>">Rent Tracker</a>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
	<?php } ?>

	<?php
		if(main_menu_access(getSession("logged_user_role"),"organigram")){
	?>
	<div class="row mt-3">
		<div class="col-12 side-item">
			<a data-bs-toggle="collapse" class="side-link link-collapse collapsed" href="#organigram" role="button" aria-expanded="false" aria-controls="bank">
				<span class="side-icon ps-2">
					<i class="mdi mdi-bank"></i>
				</span>
				<span class="side-text ps-2">
					<?php echo getLang("Organigram"); ?>
				</span>
			</a>
			<div class="collapse" id="organigram">
				<div class="card card-body">
					<?php
					if(menu_access(getSession("logged_user_role"),"organigram")){
						?>
						<a href="<?php echo base_url('index.php/organigram') ?>"><?php echo getLang("organigram"); ?></a>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
		<?php } ?>
	<?php
	if(main_menu_access(getSession("logged_user_role"),"cws_forms")){
		?>
		<div class="row mt-3">
			<div class="col-12 side-item">
				<a data-bs-toggle="collapse" class="side-link link-collapse collapsed" href="#cswforms" role="button" aria-expanded="false" aria-controls="bank">
				<span class="side-icon ps-2">
					<i class="mdi mdi-file-document"></i>
				</span>
					<span class="side-text ps-2">
					<?php echo getLang(get_module_name("cws_forms")); ?>
				</span>
				</a>
				<div class="collapse" id="cswforms">
					<div class="card card-body">
						<?php
						if(menu_access(getSession("logged_user_role"),"forms")){
							?>
							<a href="<?php echo base_url('index.php/forms') ?>"><?php echo getLang("forms"); ?></a>

						<?php } ?>
						<?php
						if(menu_access(getSession("logged_user_role"),"form/settings")){
							?>
							<span class="side-divider"></span>
							<a href="<?php echo base_url('index.php/form/settings') ?>"><?php echo getLang("form-settings"); ?></a>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	<?php } ?>

	<?php
	//if(main_menu_access(getSession("logged_user_role"),"theme")){
	?>
<!--	<div class="row mt-3">-->
<!--		<div class="col-12 side-item">-->
<!--			<a data-bs-toggle="collapse" class="side-link link-collapse collapsed" href="#theme" role="button" aria-expanded="false" aria-controls="bank">-->
<!--				<span class="side-icon ps-2">-->
<!--					<i class="mdi mdi-bank"></i>-->
<!--				</span>-->
<!--				<span class="side-text ps-2">-->
<!--					Theme-->
<!--				</span>-->
<!--			</a>-->
<!--			<div class="collapse" id="theme">-->
<!--				<div class="card card-body">-->
<!--					--><?php
//						if(menu_access(getSession("logged_user_role"),'human-dignity')){
//					?>
<!--					<a href="--><?php //echo base_url('index.php/theme/human-dignity') ?><!--">Human Dignity</a>-->
<!--							<span class="side-divider"></span>-->
<!--					--><?php //} ?>
<!--					--><?php
//					if(menu_access(getSession("logged_user_role"),'livelihood')){
//					?>
<!--					<a href="--><?php //echo base_url('index.php/theme/livelihood') ?><!--">Livelihood</a>-->
<!--							<span class="side-divider"></span>-->
<!--					--><?php //} ?>
<!--					--><?php
//					if(menu_access(getSession("logged_user_role"),'governance')){
//					?>
<!--					<a href="--><?php //echo base_url('index.php/theme/governance') ?><!--">Governance</a>-->
<!--					--><?php //} ?>
<!--				</div>-->
<!--			</div>-->
<!--		</div>-->
<!--	</div>-->
	<?php //} ?>
	<?php
	if(main_menu_access(getSession("logged_user_role"),"reports")){
	?>
	<div class="row mt-3">
		<div class="col-12 side-item">
			<a data-bs-toggle="collapse" class="side-link link-collapse collapsed" href="#reports" role="button" aria-expanded="false" aria-controls="collapseExample">
				<span class="side-icon ps-2">
					<i class="mdi mdi-chart-areaspline"></i>
				</span>
				<span class="side-text ps-2">
					<?php echo getLang(get_module_name("reports")); ?>
				</span>
			</a>
			<div class="collapse" id="reports">
				<div class="card card-body">
					<?php
						if(menu_access(getSession("logged_user_role"),"report/general")){
					?>
					<a href="<?php echo base_url('index.php/report/general') ?>"><?php echo getLang("general-report"); ?></a>
					<?php } ?>

					<?php
						if(menu_access(getSession("logged_user_role"),"report/hr")){
					?>
							<span class="side-divider"></span>
					<a href="<?php echo base_url('index.php/report/hr') ?>"><?php echo getLang("hr-report"); ?></a>
					<?php } ?>

					<?php
					if(menu_access(getSession("logged_user_role"),"report/finance")){
						?>
						<span class="side-divider"></span>
						<a href="<?php echo base_url('index.php/report/finance') ?>"><?php echo getLang("finance-report"); ?></a>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
	<?php } ?>
	<?php
	if(main_menu_access(getSession("logged_user_role"),"user")){
	?>
	<div class="row mt-3">
		<div class="col-12 side-item">
			<a data-bs-toggle="collapse" class="side-link link-collapse collapsed" href="#users" role="button" aria-expanded="false" aria-controls="collapseExample">
				<span class="side-icon ps-2">
					<i class="mdi mdi-account"></i>
				</span>
				<span class="side-text ps-2">
					<?php echo getLang(get_module_name("user")); ?>
				</span>
			</a>
			<div class="collapse" id="users">
				<div class="card card-body">
					<?php
						if(menu_access(getSession("logged_user_role"),$this->uri->uri_string())){
					?>
						<a href="<?php echo base_url('index.php/users/manage') ?>"><?php echo getLang("manage-user"); ?></a>

					<?php } ?>
					<?php
						if(menu_access(getSession("logged_user_role"),"users/assign")){
					?>
							<span class="side-divider"></span>
						<a href="<?php echo base_url('index.php/users/assign') ?>"><?php echo getLang("assign-user"); ?></a>
					<?php } ?>
					<?php
					if(menu_access(getSession("logged_user_role"),"users/assign")){
						?>
						<span class="side-divider"></span>
						<a href="<?php echo base_url('index.php/users/permission') ?>"><?php echo getLang("user-permission"); ?></a>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
	<?php } ?>
	<?php
	if(main_menu_access(getSession("logged_user_role"),"settings")){
	?>
	<div class="row mt-3">
		<div class="col-12 side-item">
			<a data-bs-toggle="collapse" class="side-link link-collapse collapsed" href="#settings" role="button" aria-expanded="false" aria-controls="collapseExample">
				<span class="side-icon ps-2">
					<i class="mdi mdi-cog"></i>
				</span>
				<span class="side-text ps-2">
					<?php echo getLang(get_module_name("settings")); ?>
				</span>
			</a>
			<div class="collapse" id="settings">
				<div class="card card-body">
					<?php
						if(menu_access(getSession("logged_user_role"),"email")){
					?>
					<a href="<?php echo base_url('index.php/email') ?>"><?php echo getLang("email"); ?></a>
					<span class="side-divider"></span>
					<?php } ?>
					<?php
						if(menu_access(getSession("logged_user_role"),"role-and-permission")){
					?>
					<a href="<?php echo base_url('index.php/role-and-permission') ?>"><?php echo getLang("role-permission"); ?></a>
					<span class="side-divider"></span>
					<?php } ?>
					<?php
						if(menu_access(getSession("logged_user_role"),"modules")){
					?>
					<a href="<?php echo base_url('index.php/modules') ?>"><?php echo getLang("module"); ?></a>
					<span class="side-divider"></span>
					<?php } ?>
					<?php
						if(menu_access(getSession("logged_user_role"),"appearance")){
					?>
					<a href="<?php echo base_url('index.php/appearance') ?>"><?php echo getLang("appearance"); ?></a>
					<span class="side-divider"></span>
					<?php } ?>
					<?php
						if(menu_access(getSession("logged_user_role"),"system/defaults")){
					?>
					<a href="<?php echo base_url('index.php/system/defaults') ?>"><?php echo getLang("system-defaults"); ?></a>
					<span class="side-divider"></span>
					<?php } ?>
					<?php
					if(menu_access(getSession("logged_user_role"),"appearance")){
						?>
						<a href="<?php echo base_url('index.php/help') ?>"><?php echo getLang("help"); ?></a>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
	<?php } ?>
	<div class="footer_info">
		<?php echo read_file(sys("footer.txt")); ?>
	</div>
</div>
