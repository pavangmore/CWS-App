<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/project') ?>">Project</a></li>
			<li class="breadcrumb-item active" aria-current="page">Create Project</li>
		</ol>
	</nav>
	<div class="row mt-5">
		<div class="col-6 offset-3">
			<form action="<?php echo base_url('index.php/project/update') ?>" method="post">
				<div class="card">
					<div class="card-header">
						<div class="card-heading">
							<h4>Edit Project</h4>
						</div>
					</div>
					<div class="card-body">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="project_name" name="project_name" placeholder="Project Name" value="<?php echo $project['project_name']; ?>">
							<label for="project_name">Project Name</label>
							<span class="badge bg-warning">Symbol '@','#','!','$','%','&' is not allowed</span>
						</div>
						<div class="form-floating mb-3">
							<textarea class="form-control" id="project_description" name="project_description" rows="10" placeholder="Project Description"><?php echo $project['project_description']; ?></textarea>
							<label for="project_description">Project Description</label>
						</div>
					</div>
					<div class="card-footer">
						<input type="hidden" name="project_id" value="<?php echo $project['project_id']; ?>">
						<button class="btn btn-primary">Save Project</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
