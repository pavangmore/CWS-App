<div class="page-content mb-5">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/project') ?>">Project</a></li>
			<li class="breadcrumb-item active" aria-current="page">View</li>
			<li class="breadcrumb-item active" aria-current="page"><?php echo $project['project_name']; ?></li>
		</ol>
	</nav>
	<div class="row mt-5">
		<div class="col-10 offset-1">
			<div class="card">
				<div class="card-header">
					<div class="row">
						<div class="col-8">
							<h4>Members of <u><?php echo $project['project_name']; ?></u> Project</h4>
						</div>
						<div class="col-4 text-end">
							<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addMember">
								<i class="mdi mdi-account-plus"></i> Add Member
							</button>

						</div>
					</div>
				</div>
				<div class="card-body">
					<table class="table">
						<thead>
							<th>#</th>
							<th>Name</th>
							<th>Role</th>
							<th>Team Leader</th>
							<th></th>
						</thead>
						<tbody>
						<?php
							$sr=1;
							foreach ($members as $user){
						?>
							<tr>
								<td><?php echo $sr; ?></td>
								<td><?php echo $user['first_name']." ".$user['last_name']; ?></td>
								<td><?php echo ucwords($user['role_name']); ?></td>
								<td><?php echo $user['is_team_leader']?"Yes":"No"; ?></td>
								<td>
									<a href="<?php echo base_url('index.php/project/member/remove/'.$project_id.'/'.$user['user_id']) ?>"><i class="mdi mdi-account-remove mdi-24px"></i></a>
								</td>
							</tr>
						<?php
							$sr++; }
						?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="addMember" tabindex="-1" aria-labelledby="addMemberLabel" aria-hidden="true">

	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<form action="<?php echo base_url('index.php/project/member/update') ?>" method="post">
			<div class="modal-header">
				<h5 class="modal-title" id="addMemberLabel">Choose Member</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col">
						<select name="user_id"  id="choices-single-default" class="form-control">
							<option value="">Select</option>
							<?php
								foreach ($users as $user){
							?>
							<option value="<?php echo $user['user_id']; ?>"><?php echo $user['first_name']." ".$user['last_name']; ?></option>
							<?php
								}
							?>
						</select>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<input type="hidden" name="project_id" value="<?php echo $project_id; ?>">
				<button class="btn btn-primary">Add</button>
			</div>
			</form>
		</div>
	</div>
</div>
