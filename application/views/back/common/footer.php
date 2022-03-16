<div class="modal" tabindex="-1" id="deleteDialouge">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Delete Confirmation</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<p>Do you really want to delete this record?</p>
				<small class="text-danger">This process cannot be undone.</small>
			</div>
			<div class="modal-footer">
				<input type="hidden" id="url">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
				<button type="button" class="btn btn-danger">Delete</button>
			</div>
		</div>
	</div>
</div>

<input type="hidden" id="success" value="<?php echo getFlashdata("success") ?>">
<input type="hidden" id="fail" value="<?php echo getFlashdata("fail") ?>">

<div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
	<div class="toast success hide bg-success" role="alert" aria-live="assertive" aria-atomic="true">
		<div class="toast-header">
			<strong class="me-auto">Success</strong>
			<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
		</div>
		<div class="toast-body text-white">
			<?php echo getFlashdata("success") ?>
		</div>
	</div>
</div>

<div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
	<div class="toast fail hide bg-danger" role="alert" aria-live="assertive" aria-atomic="true">
		<div class="toast-header">
			<strong class="me-auto">Failed</strong>
			<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
		</div>
		<div class="toast-body text-white">
			<?php echo getFlashdata("fail") ?>
		</div>
	</div>
</div>
<!--Footer Script-->
<script src="<?php echo assets('vendor/jquery/jquery-3.6.0.min.js') ?>"></script>
<script src="<?php echo assets('vendor/jquery/jquery-ui.min.js') ?>"></script>
<script src="<?php echo assets('vendor/bootstrap/js/popper.min.js') ?>"></script>
<script src="<?php echo assets('vendor/bootstrap/js/bootstrap.js') ?>"></script>
<script src="<?php echo assets('vendor/datatable/js/jquery.dataTables.min.js') ?>"></script>
<script src="<?php echo assets('vendor/choices/js/choices.min.js') ?>"></script>
<script src="<?php echo assets('vendor/tinymce/tinymce.min.js') ?>"></script>
<script src="<?php echo assets('vendor/tinymce/jquery.form-editor.init.js') ?>"></script>
<script src="<?php echo assets('vendor/dropify/js/dropify.min.js') ?>"></script>
<script src="<?php echo assets('vendor/dropify/js/jquery.form-upload.init.js') ?>"></script>

<script src="<?php echo assets('vendor/datatable/js/dataTables.buttons.min.js') ?>"></script>
<script src="<?php echo assets('vendor/datatable/js/jszip.min.js') ?>"></script>
<script src="<?php echo assets('vendor/datatable/js/pdfmake.min.js') ?>"></script>
<script src="<?php echo assets('vendor/datatable/js/vfs_fonts.js') ?>"></script>
<script src="<?php echo assets('vendor/datatable/js/buttons.html5.min.js') ?>"></script>
<script src="<?php echo assets('vendor/datatable/js/buttons.print.min.js') ?>"></script>
<script src="<?php echo assets('vendor/datatable/js/lord-icon-2.0.2.js') ?>"></script>

<script src="<?php echo assets('vendor/map/mapdata.js') ?>"></script>
<script src="<?php echo assets('vendor/map/countrymap.js') ?>"></script>

<script src="https://cdn.jsdelivr.net/npm/chart.js@3.4.1/dist/chart.min.js"></script>

<script src="<?php echo assets('js/theme.js') ?>"></script>
<script src="<?php echo assets('js/bee_chart.js') ?>"></script>
</body>
</html>
