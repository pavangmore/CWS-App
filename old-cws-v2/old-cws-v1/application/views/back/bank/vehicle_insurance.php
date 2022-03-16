<div class="page-content section-role-permission">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Bank</li>
			<li class="breadcrumb-item active" aria-current="page">Bank Control Sheet</li>
		</ol>
	</nav>
	<div class="row p-5">
		<div class="col-12">
			<div class="card card-table">
				<div class="card-header">
					<h5 class="d-inline">Vehicle Insurance</h5>
				</div>
				<div class="card-body overflow-scroll">
					<table class="table table-responsive" id="datatable">
						<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">name_of_the_office</th>
							<th scope="col">vehicle_reg_no</th>
							<th scope="col">vehicle_name</th>
							<th scope="col">model_year</th>
							<th scope="col">engine_no</th>
							<th scope="col">insurance_provider_name</th>
							<th scope="col">insurance_premium_amt</th>
							<th scope="col">insurance_valid_up_to</th>
							<th scope="col">custodian_of_the_vehicle</th>
						</tr>
						</thead>
						<tbody>
						<?php
						foreach ($vehicle_insurance as $vi){
							?>
							<tr>
								<th scope="row">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="chk1">
										<label class="form-check-label" for="chk1">
											<?php echo $vi['id']; ?>
										</label>
									</div>
								</th>
								<td><?php echo $vi['name_of_the_office']; ?></td>
								<td><?php echo $vi['vehicle_reg_no']; ?></td>
								<td><?php echo $vi['vehicle_name']; ?></td>
								<td><?php echo $vi['model_year']; ?></td>
								<td><?php echo $vi['engine_no']; ?></td>
								<td><?php echo $vi['insurance_provider_name']; ?></td>
								<td><?php echo $vi['insurance_premium_amt']; ?></td>
								<td><?php echo $vi['insurance_valid_up_to']; ?></td>
								<td><?php echo $vi['custodian_of_the_vehicle']; ?></td>
							</tr>
						<?php } ?>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>
</div>
