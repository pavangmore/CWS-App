<div class="page-content section-role-permission">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Forms</li>
			<li class="breadcrumb-item active" aria-current="page">View</li>
			<li class="breadcrumb-item active" aria-current="page"><?php echo ucwords($forms['form_name_eng']); ?></li>
		</ol>
	</nav>
	<div class="row mt-5 mb-5">
		<div class="col-10 offset-1">
			<form action="<?php echo base_url('index.php/form/save/'.$forms['form_id']) ?>" method="post">
			<div class="card">
				<div class="card-header">
					<div class="card-heading"><?php echo ucwords($forms['form_name_eng']); ?></div>
				</div>
				<div class="card-body">
					<?php
						foreach ($form_fields as $ff){
					?>
					<div class="row mb-4">
						<div class="col <?php echo $ff['field_type']=="none"?"text-center":""; ?>">
							<label for="">
								<?php if($ff['field_type']=="none"){ ?>
								<strong><?php echo $ff['question_eng']; ?><br>
								<?php echo $ff['question_hin']; ?></strong>
								<?php }else{ ?>
									<?php echo $ff['question_eng']; ?><br>
									<?php echo $ff['question_hin']; ?>
								<?php } ?>
							</label>
						</div>
						<?php if($ff['field_type']!="none"){ ?>
						<div class="col">
							<div class="row">
								<?php
									if($ff['field_type']!="none"){
									if($ff['option1_eng']!=""){
									for ($i=1;$i<=10;$i++){
										if(isset($ff['option'.$i."_eng"]) && $ff['option'.$i."_eng"]!=""){
								?>
								<div class="col-lg-6">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="q<?php echo $ff['question_id']; ?>" id="q<?php echo $ff['question_id']; ?>_op1" value="<?php echo $ff['option'.$i."_eng"]; ?>">
										<label class="form-check-label" for="q<?php echo $ff['question_id']; ?>_op1">
											<?php echo $ff['option'.$i."_eng"]; ?> /
											<?php echo $ff['option'.$i."_hin"]; ?>
										</label>
									</div>
								</div>
								<?php
										} } }else{
								?>
								<div class="col-lg-12">
									<div class="form-floating mb-3">
										<input type="text" name="q<?php echo $ff['question_id']; ?>" class="form-control" id="q<?php echo $ff['question_id']; ?>" placeholder="Answer">
										<label for="q<?php echo $ff['question_id']; ?>">Answer</label>
									</div>
								</div>
								<?php
									} }
								?>
							</div>
						</div>
						<?php } ?>
					</div>
					<?php } ?>
				</div>
				<div class="card-footer">
					<input type="hidden" name="form_id" value="<?php echo $forms['form_id']; ?>">
					<button class="btn btn-primary">Submit</button>
				</div>
			</div>
			</form>
		</div>
	</div>
</div>
