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
					<h5 class="d-inline">Rent Tracker</h5>
				</div>
				<div class="card-body overflow-scroll">
					<table class="table table-responsive" id="datatable">
						<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">name_of_the_office</th>
							<th scope="col">premises_address</th>
							<th scope="col">owner_name</th>
							<th scope="col">rental_agreement_start_date</th>
							<th scope="col">rental_agreement_end_date</th>
							<th scope="col">monthly_rent</th>
							<th scope="col">payment_due_date</th>
							<th scope="col">owner_pan</th>
							<th scope="col">owner_bank_account_details</th>
						</tr>
						</thead>
						<tbody>
						<?php
						foreach ($rent_tracker as $vi){
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
								<td><?php echo $vi['premises_address']; ?></td>
								<td><?php echo $vi['owner_name']; ?></td>
								<td><?php echo $vi['rental_agreement_start_date']; ?></td>
								<td><?php echo $vi['rental_agreement_end_date']; ?></td>
								<td><?php echo $vi['monthly_rent']; ?></td>
								<td><?php echo $vi['payment_due_date']; ?></td>
								<td><?php echo $vi['owner_pan']; ?></td>
								<td><?php echo $vi['owner_bank_account_details']; ?></td>
							</tr>
						<?php } ?>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>
</div>
