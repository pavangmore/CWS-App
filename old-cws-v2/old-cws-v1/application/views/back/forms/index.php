<div class="page-content section-role-permission">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Forms</li>
			<li class="breadcrumb-item active" aria-current="page">Overview</li>
		</ol>
	</nav>
	<div class="row mt-5">
		<div class="col-md-4 mb-4">
			<div class="card h-100">
				<div class="card-body text-center">
					<div class="icon icon-xl mx-auto mb-4 bg-danger-light">
						<i class="mdi mdi-file-document mdi-36px svg-icon text-danger"></i>
					</div>
					<h4 class="mt-3"><span class="fw-normal"> Domestic violence: Basic information of affected Persons and their cases</span></h4>
					<p class="mb-4">0 Response</p>
					<a href="<?php echo base_url('index.php/form/custom/domestic_violence') ?>" class="btn btn-secondary">View</a>
					<a href="<?php echo base_url('index.php/form/responses/') ?>" class="btn btn-secondary">Responses</a>
				</div>
			</div>
		</div>
		<?php
			$sr = 1;
			$color = array(
					1 => "danger",
					2 => "success",
					3 => "warning",
					4 => "primary",
					5 => "dark",
					6 => "info"
			);
			foreach ($forms as $form){
				if($sr>6){
					$sr=1;
				}
		?>
		<div class="col-md-4 mb-4">
			<div class="card h-100">
				<div class="card-body text-center">
					<div class="icon icon-xl mx-auto mb-4 bg-danger-light">
						<i class="mdi mdi-file-document mdi-36px svg-icon text-<?php echo $color[$sr]; ?>"></i>
					</div>
					<h4 class="mt-3"><span class="fw-normal"> <?php echo ucwords($form['form_name_eng']); ?></span></h4>
					<p class="mb-4"><?php echo sizeof($this->SettingModel->get_all_record("form_".$form['form_id'])); ?> Response</p>
					<a href="<?php echo base_url('index.php/form/view/'.$form['form_id']) ?>" class="btn btn-<?php echo $color[$sr]; ?>">View</a>
					<a href="<?php echo base_url('index.php/form/responses/'.$form['form_id']) ?>" class="btn btn-<?php echo $color[$sr]; ?>">Responses</a>
				</div>
			</div>
		</div>
		<?php
			$sr++; }
		?>
	</div>
</div>
