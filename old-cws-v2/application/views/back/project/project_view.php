<div class="page-content mb-5">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/project') ?>">Project</a></li>
			<li class="breadcrumb-item active" aria-current="page">View</li>
			<li class="breadcrumb-item active" aria-current="page"><?php echo $project['project_name']; ?></li>
		</ol>
	</nav>
	<div class="row mt-5">
		<div class="col-lg-5">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-12 text-center">
							<h2><strong><?php echo $project['project_name']; ?></strong></h2>
							<h5>Project ID : <?php echo strtoupper($project['project_id']); ?></h5>
							<?php echo format_status($project['project_status']=="active"?1:0); ?>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-12 text-center">
							<p><?php echo $project['project_description']; ?></p>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-12 text-center">
							<small class="text-secondary">Created By : <?php echo $project['created_by']=="super"?"Super User":$project['created_by']; ?></small>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-7">
			<div class="row">
				<div class="col-4">
					<a href="<?php echo base_url('index.php/media/images/project/'.$project_id); ?>" data-toggle="tooltip" title="Images">
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col">
										<i class="mdi mdi-folder-image mdi-48px text-danger"></i>
									</div>
									<div class="col">
										<h2 class="mt-3"><strong><?php echo foldercount(ABS_PATH."media/project/".$project_id."/images"); ?></strong></h2>
									</div>
								</div>
								<div class="row">
									<div class="col text-center">
										<small><i class="mdi mdi-memory"></i> <?php echo format_size(foldersize(ABS_PATH."media/project/".$project_id."/images")) ?></small>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-4">
					<a href="<?php echo base_url('index.php/media/document/project/'.$project_id); ?>" data-toggle="tooltip" title="Documents">
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col">
										<i class="mdi mdi-file-document mdi-48px text-danger"></i>
									</div>
									<div class="col">
										<h2 class="mt-3"><strong><?php echo foldercount(ABS_PATH."media/project/".$project_id."/document"); ?></strong></h2>
									</div>
								</div>
								<div class="row">
									<div class="col text-center">
										<small><i class="mdi mdi-memory"></i> <?php echo format_size(foldersize(ABS_PATH."media/project/".$project_id."/document")) ?></small>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-4">
					<a href="" data-toggle="tooltip" title="Videos">
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col">
										<i class="mdi mdi-video mdi-48px text-danger"></i>
									</div>
									<div class="col">
										<h2 class="mt-3"><strong>0</strong></h2>
									</div>
								</div>
								<div class="row">
									<div class="col text-center">
										<small><i class="mdi mdi-memory"></i> <?php echo format_size(foldersize(ABS_PATH."media/project/".$project_id."/video")) ?></small>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
			<br>
			<hr>
			<br>
			<div class="row">
				<div class="col-6">
					<a href="<?php echo base_url('index.php/project/member/project-id/'.$project_id) ?>">
						<div class="card">
							<div class="card-body text-dark">
								<div class="row">
									<div class="col">
										<strong><i class="mdi mdi-account-plus mdi-48px"></i></strong>
									</div>
									<div class="col text-center">
										<h1 class="mt-2"><strong><?php echo $members; ?></strong></h1>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<h5>Members</h5>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
			<br>
			<hr>
		</div>
	</div>
	<div class="row mt-5">
		<div class="col">
			<a href="<?php echo base_url('index.php/project/task/'.$project_id); ?>" class="btn btn-primary"><i class="mdi mdi-plus-circle"></i> View Task</a>
		</div>
	</div>
	<div class="row mt-3">
		<div class="col">
			<div class="card">
				<div class="card-body text-primary">
					<div class="row">
						<div class="col">
							<strong><i class="mdi mdi-clipboard-check-multiple mdi-48px"></i></strong>
						</div>
						<div class="col text-center">
							<h1 class="mt-2"><strong>0</strong></h1>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<h5>Total Task</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card">
				<div class="card-body text-success">
					<div class="row">
						<div class="col">
							<strong><i class="mdi mdi-clipboard-check-multiple mdi-48px"></i></strong>
						</div>
						<div class="col text-center">
							<h1 class="mt-2"><strong>0</strong></h1>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<h5>Completed Task</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card">
				<div class="card-body text-secondary">
					<div class="row">
						<div class="col">
							<strong><i class="mdi mdi-clipboard-alert mdi-48px"></i></strong>
						</div>
						<div class="col text-center">
							<h1 class="mt-2"><strong>0</strong></h1>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<h5>Pending Task</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
