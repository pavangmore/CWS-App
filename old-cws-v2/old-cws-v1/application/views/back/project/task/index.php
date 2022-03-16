<div class="page-content mb-5">
	<nav  aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo base_url('index.php/dashboard') ?>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/project') ?>">Project</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo base_url('index.php/project/id/'.$project['project_id']) ?>"><?php echo $project['project_name']; ?></a></li>
			<li class="breadcrumb-item active" aria-current="page">Task</li>
		</ol>
	</nav>
	<div class="row mt-5">
		<div class="col-12">
			<div class="card card-table">
				<div class="card-header">
					<h5 class="d-inline">Tasks </h5>
				</div>
				<div class="card-footer">
					<button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal">
						<i class="mdi mdi-plus-circle"></i> Create Task
					</button>
				</div>
				<div class="card-body">
					<table class="table table-responsive" id="datatable">
						<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Task ID</th>
							<th scope="col">Title</th>
							<th scope="col">For Project</th>
							<th scope="col">User Assigned</th>
							<th scope="col">Due Date</th>
							<th scope="col">Status</th>
							<th scope="col"></th>
						</tr>
						</thead>
						<tbody>
						<?php
							$sr = 1;
							foreach ($tasks as $task){
						?>
							<tr>
								<td><?php echo $sr; ?></td>
								<td><?php echo $task['task_id'] ?></td>
								<td><?php echo $task['task_title'] ?></td>
								<td><?php echo $task['project_name'] ?></td>
								<td><?php echo $task['first_name']." ".$task['last_name']; ?></td>
								<td><?php echo $task['due_date'] ?></td>
								<td><?php echo $task['task_status'] ?></td>
								<td>
									<a href=""><i class="mdi mdi-view-module mdi-24px"></i></a>
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

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Create Task</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<form action="<?php echo base_url('index.php/project/task-save') ?>" method="post" enctype="multipart/form-data">
				<div class="modal-body p-5">
					<div class="row mb-4">
						<div class="col">
							<div class="form-floating">
								<input type="text" class="form-control" id="title" name="task_title" placeholder="Task Title">
								<label for="title">Title</label>
							</div>
						</div>
					</div>
					<div class="row mb-4">
						<div class="col">
							<div class="form-floating">
								<textarea name="task_description" class="form-control" id="title" placeholder="Task Title"></textarea>
								<label for="title">Description</label>
							</div>
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-12">
							<label for="" class="d-block">Assign User</label>
							<br>
							<select
									class="form-control"
									name="user_assigned[]"
									id="choices-multiple-remove-button"
									placeholder="This is a placeholder"
									multiple
							>
								<option value="">Select</option>
								<?php
									foreach ($members as $member){
								?>
									<option value="<?php echo $member['user_id']; ?>"><?php echo $member['first_name']." ".$member['last_name']; ?></option>
								<?php
									}
								?>
							</select>
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-3">
							<label for="">Priority</label>
							<br>
							<div class="form-check mt-2">
								<input class="form-check-input" type="radio" name="priority" id="high" value="high">
								<label class="form-check-label" for="high">
									High
								</label>
							</div>
						</div>
						<div class="col-3">
							<br>
							<div class="form-check mt-2">
								<input class="form-check-input" type="radio" name="priority" id="medium" value="medium">
								<label class="form-check-label" for="medium">
									Medium
								</label>
							</div>
						</div>
						<div class="col-3">
							<br>
							<div class="form-check mt-2">
								<input class="form-check-input" type="radio" name="priority" id="low" value="low">
								<label class="form-check-label" for="low">
									Low
								</label>
							</div>
						</div>
					</div>
					<div class="row mb-4">
						<div class="col">
							<div class="form-floating">
								<input type="date" class="form-control" id="due_date" name="due_date" placeholder="Due Date">
								<label for="title">Due Date</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="">
								<label for="attachment" class="form-label">Attachment</label>
								<input class="form-control" type="file" id="attachment" name="attachment">
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<input type="hidden" name="project_id" value="<?php echo $project_id; ?>">
					<button class="btn btn-primary">Save</button>
				</div>
			</form>
		</div>
	</div>
</div>
