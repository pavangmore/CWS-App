<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Settings</li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/email') ?>">Email Template</a></li>
			<li class="breadcrumb-item active" aria-current="page">Create Template</li>
		</ol>
	</nav>
	<div class="row p-5">
		<div class="col-12">
			<form action="<?php echo base_url('index.php/email/save-template') ?>" method="post">
				<div class="card mb-4 mb-lg-0">
					<div class="card-body">
						<div class="mb-4">
							<label class="form-label" for="categoryName">Template Name</label>
							<input class="form-control" name="template_name" id="categoryName" type="text">
							<div class="form-text"><small>The name is how it appears on your email subject.</small></div>
						</div>
						<div class="mb-4">
							<label class="form-label" for="categoryName">Template Identifier</label>
							<br>
							<code>{%company_name%} - For company name</code> |
							<code>{%contact%} - For contact number</code> |
							<code>{%email%} - For email address</code> |
							<code>{%user_id%} - For user's user id</code> |
							<code>{%full_name%} - For user's first name and last name</code> |
							<code>{%base_url%} - For base URL</code>
						</div>
						<div class="mb-4">
							<label class="form-label" for="categorySlug">Template Content</label>
							<textarea name="template_content" class="form-control" id="elm1" cols="30" rows="10"></textarea>
						</div>
						<div class="mb-4">
							<label class="form-label" for="categoryParent">Status</label>
							<select class="form-select" id="categoryParent" name="template_status">
								<option value="1">Active</option>
								<option value="0">Inactive</option>
							</select>
						</div>
						<button class="btn btn-primary mb-4">Save Template</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
