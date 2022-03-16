<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Settings</li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/email') ?>">Email Template</a></li>
			<li class="breadcrumb-item active" aria-current="page">Edit Template</li>
		</ol>
	</nav>
	<div class="row p-5">
		<div class="col-12">
			<form action="<?php echo base_url('index.php/email/update-template') ?>" method="post">
				<div class="card mb-4 mb-lg-0">
					<div class="card-body">
						<div class="mb-4">
							<label class="form-label" for="categoryName">Template Name</label>
							<input class="form-control" name="template_name" id="categoryName" type="text" value="<?php echo $templates['template_name']; ?>">
							<div class="form-text"><small>The name is how it appears on your email subject.</small></div>
						</div>
						<div class="mb-4">
							<label class="form-label" for="categorySlug">Template Content</label>
							<textarea name="template_content" class="form-control" id="elm1"><?php echo $templates['template_content']; ?></textarea>
						</div>
						<div class="mb-4">
							<label class="form-label" for="categoryParent">Status</label>
							<select class="form-select" id="categoryParent" name="template_status">
								<option value="1" <?php echo $templates['status']==1?"selected":""; ?>>Active</option>
								<option value="0" <?php echo $templates['status']==0?"selected":""; ?>>Inactive</option>
							</select>
						</div>
						<input type="hidden" name="id" value="<?php echo $templates['id']; ?>">
						<button class="btn btn-primary mb-4">Save Template</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
