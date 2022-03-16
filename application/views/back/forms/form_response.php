<div class="page-content section-role-permission">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Forms</li>
			<li class="breadcrumb-item active" aria-current="page">Responses</li>
			<li class="breadcrumb-item active" aria-current="page"><?php echo ucwords($forms['form_name_eng']); ?></li>
		</ol>
	</nav>
	<div class="row mt-5 mb-5">
		<div class="col-12">
			<div class="card card-table">
				<div class="card-header"></div>
				<div class="card-body">
					<table class="table overflow-scroll" id="datatable-btn">
						<thead>
							<th>#</th>
						<?php
						foreach ($form_fields as $ff){
						if($ff['field_type']!="none"){
						?>
							<th>
								<?php echo $ff['question_eng']; ?><br>
								<?php echo $ff['question_hin']; ?>
							</th>
						<?php
						}}
						?>
						</thead>
						<tbody>
							<?php
							$sr=1;
								foreach ($responses as $response){
							?>
									<tr>
										<td><?php echo $sr; ?></td>
							<?php
									foreach ($form_fields as $ff){
									if($ff['field_type']!="none"){
							?>

									<td><?php echo $response["q".$ff['question_id']]; ?></td>

							<?php
									}}
							?>
									</tr>
							<?php
									$sr++;
								}
							?>
						</tbody>
					</table>
				</div>
				<div class="card-footer"></div>
			</div>
		</div>
	</div>
</div>
