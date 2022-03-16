<div class="page-content section-role-permission">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Forms</li>
			<li class="breadcrumb-item active" aria-current="page">Overview</li>
		</ol>
	</nav>
	<div class="row mt-5">
		<div class="col-md-6 col-lg-3">
			<div class="card mb-4 bg-green-light">
				<div class="card-body d-flex align-items-center justify-content-between">
					<div>
						<h6><strong>Active Forms</strong></h6>
						<h3 class="mb-0 text-green"><strong>0</strong></h3>
					</div>
					<i class="text-green mdi mdi-file-document-multiple mdi-24px"></i>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-lg-3">
			<div class="card mb-4 bg-red-light">
				<div class="card-body d-flex align-items-center justify-content-between">
					<div>
						<h6><strong>Inactive Forms</strong></h6>
						<h3 class="mb-0 text-red"><strong>0</strong></h3>
					</div>
					<i class="text-red mdi mdi-file-document-multiple mdi-24px"></i>
				</div>
			</div>
		</div>

	</div>
	<div class="row">
		<div class="col-12">
			<div class="card card-table">
				<div class="card-header"></div>
				<div class="card-footer">
					<a href="<?php echo base_url('index.php/form/design') ?>"><i class="mdi mdi-plus-circle"></i> Design Form</a>
				</div>
				<div class="card-body">
					<table class="table table-scroll" id="datatable">
						<thead>
							<th>#</th>
							<th>Form ID</th>
							<th>Form Name</th>
							<th>Status</th>
							<th></th>
						</thead>
						<tbody>
						<?php
							$sr = 1;
							foreach ($forms as $form){
						?>
							<tr>
								<td><?php echo $sr; ?></td>
								<td><?php echo $form['form_id']; ?></td>
								<td><?php echo $form['form_name_eng']; ?></td>
								<td><?php echo format_status($form['status']); ?></td>
								<td>
									<a href="" data-toggle="tooltip" title="Edit Forms"><i class="mdi mdi-file-edit mdi-24px"></i></a>
									<i class="mdi mdi-drag-vertical-variant  mdi-24px"></i>
									<a href="<?php echo base_url('index.php/form/view-fields/'.$form['form_id']) ?>" data-toggle="tooltip" title="Add Fields"><i class="mdi mdi-file-plus mdi-24px"></i></a>
								</td>
							</tr>
						<?php
								$sr++; }
						?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
