<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Settings</li>
			<li class="breadcrumb-item active" aria-current="page">Email Template</li>
		</ol>
	</nav>
	<div class="row p-5">
		<div class="col-12">
			<div class="card card-table">
				<div class="card-header">
					<h5 class="d-inline">Email Templates </h5>
				</div>
				<div class="card-footer">
					<a href="<?php echo base_url('index.php/email/create-template') ?>"><i class="mdi mdi-plus-circle"></i> Create Template</a>
				</div>
				<div class="card-body">
					<table class="table" id="datatable">
						<thead>
						<tr>

							<th scope="col">#</th>
							<th scope="col">Subject</th>
							<th scope="col">Status</th>
							<th scope="col"></th>
						</tr>
						</thead>
						<tbody>
							<?php
								$sr=1;
								foreach ($templates as $template){
							?>
								<tr>
									<th scope="row">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="<?php echo $template['id']; ?>" id="chk1">
											<label class="form-check-label" for="chk1">
												<?php echo $sr; ?>
											</label>
										</div>
									</th>
									<td><?php echo $template['template_name']; ?></td>
									<td><div class="badge bg-success"><?php echo format_status($template['status']); ?></div></td>
									<td class="action">
										<a href="<?php echo base_url('index.php/email/edit-template/'.$template['id']) ?>"><i class="mdi mdi-email-edit mdi-24px"></i></a>&emsp;
										<a href="javascript:void(0)"><i class="mdi mdi-trash-can mdi-24px"></i></a>&emsp;
									</td>
								</tr>
							<?php $sr++; } ?>
 						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>
</div>
