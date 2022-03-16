$(document).ready(function () {

	if ($("#success").val() != "") {
		$('.toast.success').toast('show');
	}

	if ($("#fail").val() != "") {
		$('.toast.fail').toast('show');
	}
});
