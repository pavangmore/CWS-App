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
		<div class="col">
			<div class="card">
				<div class="card-body">
					<div class="row">
					<?php
						foreach ($media as $file){
						if($file_type=="images"){
					?>

						<div class="col-2 mt-3">
							<img src="<?php echo $file['file_url'] ?>" class="img-fluid img-thumbnail" alt="<?php echo $file['file_name'] ?>">
						</div>

					<?php
						}
						else{
					?>
							<a target="_blank" href="<?php echo $file['file_url'] ?>"><?php echo $file['file_name']; ?></a>
					<?php
						}
						}
					?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
