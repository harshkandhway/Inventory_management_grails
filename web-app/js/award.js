var dataTableAward;
var deleteId = "";

function deleteAward(){
	console.log("award update delete button");
	$.ajax({
		url: "/Inventory_Management/award/deleteAward",
		type: "POST",
		data: {deleteId : deleteId},
		success: function(msg){
			if(msg==="success"){
				alert("delete successfull");
				dataTableAward.ajax.reload();
				$('#awardDash').show();
				$('.create-dash').hide();
			}
			else
				alert("failed to delete");
		}
	})
}
	
$('document').ready(function(){
	
	$('#awardDash').hide();
	$('.create-dash').show();
	console.log("award jflakj")
	$('#awardForm').on('submit', function(e){
		e.preventDefault();
		console.log($(this).serialize());
		$.ajax({
			url: this.action,
			type: this.method,
			data: $(this).serialize(),
			success: function(msg){
				if(msg==="success"){
					alert("save successfull")
				}
			}
		})
	})
	$(document).on('click', '.all-award', function(e){
		$('#awardDash').show();
		$('.create-dash').hide();
		console.log('all awards clicked');
		dataTableAward = $('#awardDataTable').DataTable({
			"ajax" : {
			"url": "/Inventory_Management/award/getAward",
			"type" : "POST"
			},
			"bSort": false,
			"processing": true
			});
	})
	
	$(document).on('click', '.award-edit-btn', function(e){
		console.log('update award button clicked');
		$('#awardDash').hide();
		$('.create-dash').show();
		var awardId = $(".award-edit-btn").attr('data-award-id');
		deleteId = awardId
		$.ajax({
			url: "/Inventory_Management/award/updateAward",
			type: 'POST',
			data: {awardId : awardId},
			success: function(res){
				$('#point').val(res.point);
			}
		})
	})
	
	

})