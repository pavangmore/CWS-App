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
					<h5 class="d-inline">Bank Control Sheet </h5>
				</div>
				<div class="card-body">
					<table class="table table-responsive" id="datatable">
						<thead>
						<tr>

							<th scope="col">#</th>
							<th scope="col">Name of the bank account</th>
							<th scope="col">A/c No.</th>
							<th scope="col">Bank & Branch</th>
							<th scope="col">Location</th>
							<th scope="col">Authorised Signatory 1</th>
							<th scope="col">Authorised Signatory 2</th>
							<th scope="col">Authorised Signatory 3</th>
							<th scope="col">Status</th>
							<th scope="col"></th>
						</tr>
						</thead>
						<tbody>
						<?php
							foreach ($bank_control_list as $bcl){
						?>
							<tr>
								<th scope="row">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="chk1">
										<label class="form-check-label" for="chk1">
											<?php echo $bcl['id']; ?>
										</label>
									</div>
								</th>
								<td><?php echo $bcl['account_holder']; ?></td>
								<td><?php echo $bcl['account_number']; ?></td>
								<td><?php echo $bcl['bank_name']; ?></td>
								<td><?php echo $bcl['location']; ?></td>
								<td><?php echo $bcl['authorised_signatory_1']; ?></td>
								<td><?php echo $bcl['authorised_signatory_2']; ?></td>
								<td><?php echo $bcl['authorised_signatory_3']; ?></td>
								<td><div class="badge bg-success">ACTIVE</div></td>
								<td class="action">

								</td>
							</tr>
						<?php } ?>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>
</div>
