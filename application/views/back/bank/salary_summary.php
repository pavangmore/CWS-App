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
					<h5 class="d-inline">Salary Summary</h5>
				</div>
				<div class="card-body overflow-scroll">
					<table class="table table-responsive" id="datatable">
						<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">month</th>
							<th scope="col">name</th>
							<th scope="col">designation</th>
							<th scope="col">basic</th>
							<th scope="col">da</th>
							<th scope="col">hra</th>
							<th scope="col">cca</th>
							<th scope="col">gross</th>
							<th scope="col">total_gross</th>
							<th scope="col">net</th>
							<th scope="col">covid_contribution</th>
							<th scope="col">net_payable</th>
						</tr>
						</thead>
						<tbody>
						<?php
						foreach ($salary_summery as $ss){
							?>
							<tr>
								<th scope="row">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="chk1">
										<label class="form-check-label" for="chk1">
											<?php echo $ss['id']; ?>
										</label>
									</div>
								</th>
								<td><?php echo $ss['month']; ?></td>
								<td><?php echo $ss['name']; ?></td>
								<td><?php echo $ss['designation']; ?></td>
								<td><?php echo $ss['basic']; ?></td>
								<td><?php echo $ss['da']; ?></td>
								<td><?php echo $ss['hra']; ?></td>
								<td><?php echo $ss['cca']; ?></td>
								<td><?php echo $ss['gross']; ?></td>
								<td><?php echo $ss['total_gross']; ?></td>
								<td><?php echo $ss['net']; ?></td>
								<td><?php echo $ss['covid_contribution']; ?></td>
								<td><?php echo $ss['net_payable']; ?></td>
							</tr>
						<?php } ?>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>
</div>
