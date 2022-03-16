<?php
	if(!$verified){
?>
<div class="email-error">
	<div class="xy-center">
		<i class="mdi mdi-email-remove mdi-36px"></i>
		<h3>Email verification pending!</h3>
		<p>Please check your email for a link to verify your email address. <br><br> Once verified, you'll be able to continue. <br><br>Didn't receive an email? <a href="<?php echo base_url('index.php/verification-email/resend') ?>">Resend</a></p>
	</div>
</div>
<?php } ?>
<div class="page-content">
	<div class="container">
		<div class="row">
			<div class="col-7">
				<div class="row">
					<div class="col-4">
						<div class="card-widget h-100">
							<div class="card-widget-body">
								<div class="dot me-3 bg-primary"></div>
								<div class="text">
									<h6 class="mb-0">Dashlet1</h6><span class="text-gray-500">145,14 GB</span>
								</div>
							</div>
							<div class="icon text-white bg-primary"><i class="mdi mdi-server"></i></div>
						</div>
					</div>
					<div class="col-4">
						<div class="card-widget h-100">
							<div class="card-widget-body">
								<div class="dot me-3 bg-success"></div>
								<div class="text">
									<h6 class="mb-0">Dashlet2</h6><span class="text-gray-500">32</span>
								</div>
							</div>
							<div class="icon text-white bg-success"><i class="far fa-clipboard"></i></div>
						</div>
					</div>
					<div class="col-4">
						<div class="card-widget h-100">
							<div class="card-widget-body">
								<div class="dot me-3 bg-danger"></div>
								<div class="text">
									<h6 class="mb-0">Dashlet3</h6><span class="text-gray-500">32</span>
								</div>
							</div>
							<div class="icon text-white bg-danger"><i class="far fa-clipboard"></i></div>
						</div>
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="col mt-5">
						<div class="card">
							<div class="card-header">
								Bar Chart
							</div>
							<div class="card-body">
								<canvas id="myChart" width="100%" height="100%"></canvas>
							</div>
						</div>
					</div>
					<div class="col mt-5">
						<div class="card">
							<div class="card-header">
								Doughnut Chart
							</div>
							<div class="card-body">
								<canvas id="donatChart" width="100%" height="100%"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-5 map">
				<div id="map"></div>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-8">
				<div class="card">
					<div class="card-header">
						State Active Users
					</div>
					<div class="card-body">
						<table class="table table-striped table-hover">
							<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">First</th>
								<th scope="col">Last</th>
								<th scope="col">Handle</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td colspan="2">Larry the Bird</td>
								<td>@twitter</td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-4">
				<canvas id="donatChart1" width="100%" height="100%"></canvas>
			</div>
		</div>
	</div>
</div>


