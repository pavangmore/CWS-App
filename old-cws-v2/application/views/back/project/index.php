<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Project</li>
			<li class="breadcrumb-item active" aria-current="page">Lists</li>
		</ol>
	</nav>
	<div class="row mt-5">
		<div class="col-12 text-end">
			<a href="<?php echo base_url('index.php/project/create') ?>" class="btn btn-primary"><i class="mdi mdi-plus-circle"></i> Create Project</a>
		</div>
	</div>
	<div class="row mt-3">
		<?php
			foreach ($projects as $project){
		?>
		<div class="col-md-4 mb-4">
			<div class="card h-100 project-card">
				<div class="card-header">
					<h6 class="card-heading text-primary"><i class="mdi mdi-circle mdi-36px"></i></h6>
				</div>
				<div class="card-body">
					<h2 class="mb-3"><?php echo $project['project_name'] ?></h2>
					<div class="row">
						<div class="col-auto">
							<p class="text-muted text-sm mt-2"></p>
						</div>
					</div>
					<div class="progress">
						<div class="progress-bar bg-primary" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width:0%"></div>
					</div>
				</div>
				<div class="card-footer text-end">
					<a href="<?php echo base_url('index.php/project/id/'.$project['project_id']) ?>" class="btn btn-primary">View Project</a>
				</div>
			</div>
		</div>
		<?php } ?>
	</div>
</div>
