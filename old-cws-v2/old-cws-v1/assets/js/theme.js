$(document).ready(function () {

	$(".loader").fadeOut(2000);

	if($("#success").val()!=""){
		$('.toast.success').toast('show');
	}

	if($("#fail").val()!=""){
		$('.toast.fail').toast('show');
	}


	$(".menu-open").click(function (){
		$(".sidebar").toggleClass('shrink');
		$(".page-content").toggleClass('expand');
	});

	$(".side-link").click(function (){
		console.log("ok");
		$(".collapse").removeClass("show");
		$(".side-link").addClass("collapsed")
		$(this).removeClass("collapsed")
	});

	//Tooltip
	$('[data-toggle="tooltip"]').tooltip();

	//Datatable
	$('#datatable').DataTable();

	$('#datatable-btn').DataTable({
		dom: 'Bfrtip',
		buttons: [
			'copy', 'csv', 'excel', 'pdf', 'print'
		],
	});

	$(".paginate_button.previous").html("<<");
	$(".paginate_button.next").html(">>");

	$(".delete").click(function (){
		$("#deleteDialouge").modal("show");
	});

	//Choices
	if ($('#choices-single-default').length){
		var choice = new Choices(document.getElementById('choices-single-default'));
	}

	if($("#choices-multiple-remove-button").length){
		var multipleCancelButton = new Choices(
			'#choices-multiple-remove-button',
			{
				removeItemButton: true,
			}
		);
	}

	$("#assign_role").click(function (){
		$("#formMulti").attr("action",$("#base_url").val()+"index.php/user/role/assign");
		$("#formMulti").submit();
	});

	$("#active_deactive_user").click(function (){
		$("#formMulti").attr("action",$("#base_url").val()+"index.php/user/activate-deactivate");
		$("#formMulti").submit();
	});

	//Apply Role
	$("#apply_role").click(function (){
		$( ".user" ).each(function( index ) {
			$("#spin_"+$(this).attr("id")+".first_process").hide();
			$("#spin_"+$(this).attr("id")+".second_process").show();
			$("#spin_"+$(this).attr("id")+".third_process").hide();
			$id = $(this).attr("id");
			$.ajax({
				type:"POST",
				url:$("#base_url").val() + "index.php/user/role/assign/save",
				data:{"user_id":$(this).attr("id"),"role_id":$("#choices-single-default").val()},
				async: true,
				success:function (response){
					console.log(response);
					$("#spin_"+$id+".first_process").hide();
					$("#spin_"+$id+".second_process").hide();
					$("#spin_"+$id+".third_process").show();
				}
			});

		});
		window.location.href = $("#base_url").val()  + "index.php/users/assign";
	});

	$("#activate_user").click(function (){
		$( ".user" ).each(function( index ) {
			$("#spin_"+$(this).attr("id")+".first_process").hide();
			$("#spin_"+$(this).attr("id")+".second_process").show();
			$("#spin_"+$(this).attr("id")+".third_process").hide();
			$id = $(this).attr("id");
			$.ajax({
				type:"POST",
				url:$("#base_url").val() + "index.php/user/status/update",
				data:{"user_id":$(this).attr("id"),"status":$("#status").val()},
				async: true,
				success:function (response){
					console.log(response);
					$("#spin_"+$id+".first_process").hide();
					$("#spin_"+$id+".second_process").hide();
					$("#spin_"+$id+".third_process").show();
					$("#error_"+$id).html(response);
				},
				error:function (response){
					console.log(response);
				}
			});

		});
		window.location.href = $("#base_url").val()  + "index.php/users/assign";
	});

	$(".main_module").click(function (){
		if($(this).prop("checked")){
			$("."+$(this).attr("name")).prop("disabled",false);
		}
		else{
			console.log($(this).attr("id"));
			$("."+$(this).attr("name")).prop("checked",false);
			$("."+$(this).attr("name")).prop("disabled",true);
		}
	});

	$("#editProfile_btn").click(function (){
		$("#editProfile").show();
	});

	$("#updatePassword_btn").click(function (){
		$("#updatePassword").show();
	});

	$("#cancelEditProfile").click(function (){
		$("#editProfile").hide();
	});

	$("#cancelUpdatePassword").click(function (){
		$("#updatePassword").hide();
	});

	//Module ID
	$(".editModule").click(function (){
		$module_id = $(this).attr("rel");
		$("#editModuleName").val($("#"+$module_id+"_name").val());
		$("#editModuleDescription").val($("#"+$module_id+"_description").val());
		$("#editModuleId").val($module_id);
		$("#card_create_module").addClass("hide");
		$("#card_edit_module").removeClass("hide");
	});

	$("#cancel_card_edit_module").click(function (){
		$("#card_create_module").removeClass("hide");
		$("#card_edit_module").addClass("hide");
	});

});
function sleep(ms) {
	return new Promise(resolve => setTimeout(resolve, ms));
}
