<div class="page-content section-role-permission">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Forms</li>
			<li class="breadcrumb-item active" aria-current="page">Overview</li>
		</ol>
	</nav>
	<div class="row mt-5">
		<div class="col-10 offset-1">
			<div class="card card-table">
				<div class="card-header"></div>
				<div class="card-footer">
					<a href="#" data-bs-toggle="modal" data-bs-target="#addField"><i class="mdi mdi-plus-circle"></i> Add Form Fields</a>
				</div>
				<div class="card-body">
					<table class="table table-scroll" id="datatable">
						<thead>
							<th>#</th>
							<th>Question</th>
							<th></th>
						</thead>
						<tbody>
						<?php
						$sr = 1;
						foreach ($form_questions as $fq){
							?>
							<tr>
								<td><?php echo $sr; ?></td>
								<td>
									<?php echo $fq['question_eng']; ?><br>
									<?php echo $fq['question_hin']; ?>
								</td>
								<td>
									<a href=""><i class="mdi mdi-pencil"></i></a>
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
<form action="<?php echo base_url('index.php/form/field/save') ?>" method="post">
	<div class="modal fade" id="addField" tabindex="-1" aria-labelledby="addField" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Field</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="form-floating mb-3">
						<input type="text" name="question_eng" class="form-control" id="question_eng" placeholder="Form Name" required>
						<label for="question_eng">Form Name(English)</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" name="question_hin" class="form-control" id="question_hin" placeholder="Form Name">
						<label for="question_hin">Form Name(Hindi)</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" name="question_odia" class="form-control" id="question_odia" placeholder="Form Name" required>
						<label for="question_eng">Form Name(Odia)</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" name="question_tel" class="form-control" id="question_tel" placeholder="Form Name">
						<label for="question_hin">Form Name(Telgu)</label>
					</div>
					<?php
						for($i=1;$i<=10;$i++){
					?>
					<div class="row">
						<div class="col-6">
							<div class="form-floating mb-3">
								<input type="text" name="option<?php echo $i; ?>_eng" class="form-control" id="option<?php echo $i; ?>_eng" placeholder="Option <?php echo $i; ?> English">
								<label for="option<?php echo $i; ?>_eng">Option <?php echo $i; ?> (English)</label>
							</div>
						</div>
						<div class="col-6">
							<div class="form-floating mb-3">
								<input type="text" name="option<?php echo $i; ?>_hin" class="form-control" id="option<?php echo $i; ?>_hin" placeholder="Form Name">
								<label for="option<?php echo $i; ?>_hin">Option <?php echo $i; ?> (Hindi)</label>
							</div>
						</div>
						<div class="col-6">
							<div class="form-floating mb-3">
								<input type="text" name="option<?php echo $i; ?>_odia" class="form-control" id="option<?php echo $i; ?>_odia" placeholder="Option <?php echo $i; ?> English">
								<label for="option<?php echo $i; ?>_eng">Option <?php echo $i; ?> (Odia)</label>
							</div>
						</div>
						<div class="col-6">
							<div class="form-floating mb-3">
								<input type="text" name="option<?php echo $i; ?>_tel" class="form-control" id="option<?php echo $i; ?>_tel" placeholder="Form Name">
								<label for="option<?php echo $i; ?>_hin">Option <?php echo $i; ?> (Telgu)</label>
							</div>
						</div>
					</div>
							<hr>
					<?php
						}
					?>
				</div>
				<div class="modal-footer">
					<input type="hidden" name="form_id" value="<?php echo $form_id; ?>">
					<button class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
</form>
