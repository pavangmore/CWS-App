<div class="page-content section-role-permission">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Form</li>
			<li class="breadcrumb-item active" aria-current="page">Design</li>
		</ol>
	</nav>
	<div class="row p-5">
		<div class="col-8 offset-2">
			<form action="<?php echo base_url('index.php/form/design/save') ?>" method="post">
				<div class="card">
				<div class="card-header">
					<h5>Design Form</h5>
				</div>
				<div class="card-body">
					<div class="form-floating mb-3">
						<input type="text" name="form_name_eng" class="form-control" id="form_name_eng" placeholder="Form Name" required>
						<label for="form_name_eng">Form Name(English)</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" name="form_name_hin" class="form-control" id="form_name_hin" placeholder="Form Name">
						<label for="form_name_hin">Form Name(Hindi)</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" name="form_name_odia" class="form-control" id="form_name_odia" placeholder="Form Name">
						<label for="form_name_hin">Form Name(Odia)</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" name="form_name_tel" class="form-control" id="form_name_tel" placeholder="Form Name">
						<label for="form_name_hin">Form Name(Telgu)</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" name="form_name_tel" class="form-control" id="form_name_tel" placeholder="Form Name">
						<label for="form_name_hin">Form Name(Tamil)</label>
					</div>
					<div class="form-floating mb-3">
						<textarea name="form_decs_eng" class="form-control" id="form_decs_eng" placeholder="Form Description" rows="10" required></textarea>
						<label for="form_decs_eng">Form Description(English)</label>
					</div>
					<div class="form-floating mb-3">
						<textarea name="form_decs_hin" class="form-control" id="form_decs_hin" placeholder="Form Description" rows="10"></textarea>
						<label for="form_decs_hin">Form Description(Hindi)</label>
					</div>
					<div class="form-floating mb-3">
						<textarea name="form_decs_odia" class="form-control" id="form_decs_odia" placeholder="Form Description" rows="10" required></textarea>
						<label for="form_decs_eng">Form Description(Odia)</label>
					</div>
					<div class="form-floating mb-3">
						<textarea name="form_decs_tel" class="form-control" id="form_decs_tel" placeholder="Form Description" rows="10"></textarea>
						<label for="form_decs_hin">Form Description(Telgu)</label>
					</div>
					<div class="form-floating mb-3">
						<textarea name="form_decs_tam" class="form-control" id="form_decs_tam" placeholder="Form Description" rows="10"></textarea>
						<label for="form_decs_hin">Form Description(Tamil)</label>
					</div>
				</div>
				<div class="card-footer">
					<button class="btn btn-primary">Save</button>
				</div>
			</div>
			</form>
		</div>
	</div>
</div>
