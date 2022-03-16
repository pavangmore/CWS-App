<div class="page-content">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Reports</li>
			<li class="breadcrumb-item active" aria-current="page">General</li>
			<li class="breadcrumb-item active" aria-current="page">Generate</li>
		</ol>
	</nav>
	<div class="row mt-5">
		<div class="col-12">
			<div class="card card-table overflow-scroll report-table">
				<div class="card-body">
					<table class="table table-bordered" id="datatable-btn">
						<thead>
						<?php
							$header = array();
							foreach ($report_data[0] as $key=>$value){
								$header[] = $key;
						?>
							<th><?php echo $key; ?></th>
						<?php
							}
						?>
						</thead>
						<tbody>
						<?php
							foreach ($report_data as $rdata){
						?>
								<tr>
						<?php
								foreach ($header as $h){
						?>

							<td><?php echo $rdata[$h]; ?></td>

						<?php
							}
						?>
								</tr>
						<?php
							}
						?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
