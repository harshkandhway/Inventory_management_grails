var dataTableCustomer;
function loadCustomerTable() {
//	alert();
//	if ($.fn.dataTable.isDataTable('#customerDataTable')) 
//		dataTableCustomer.destroy();
		
//	alert($.fn.dataTable.isDataTable('#customerDataTable'));
	dataTableCustomer = $('#customerDataTable').DataTable({
		"ajax" : {
		"url": "/Inventory_Management/customer/getData",
		"type" : "POST"
		},
//		"bDestroy": true,
		"bSort": false,
		"processing": true
		});
	
//	$.ajax({
//		url: "/Inventory_Management/customer/getData",
//		type: 'GET',
//		success: function(data){
//			$("#gEachInTable").attr('in',data);
//			console.log(data);
//		}
//	});
}

function deleteCustomer() {
	
}

function updateCustomer(e){
//	e.preventDefault();
	
}



$('document').ready(function(){
//	dataTableCustomer = $('#customerDataTable').DataTable();
	loadCustomerTable();
	$('.customerFormDiv').hide();
	
	console.log($('#custId'));
	$(document).on('click', '.cust-id', function(e){
		console.log('update button clicked', e);
		var elementId = e.currentTarget.id;
		var custId = $("#"+elementId).attr('data-cust-id');
		console.log(custId)
		$.ajax({
			url: "/Inventory_Management/customer/update",
			type: 'POST',
			data: {custId: custId},
			success: function(res){
				console.log("res",res);
				$('#firstName').val(res.firstName);
				$('#lastName').val(res.lastName);
				$('#phone').val(res.phone);
				$('#inputEmail').val(res.email);
//				$('.customer-form').html(res);
				$('.customerFormDiv').show();
				$('.customerTable').hide();
			}
		});
		
	});
	$(document).on('click', '.customer-delete-btn', function(e){
		console.log('delete button clicked');
		var custId = $(".customer-delete-btn").attr('data-cust-id');
		console.log(custId);
		$.ajax({
			url: "/Inventory_Management/customer/deleteCustomer",
			type: 'POST',
			data: {custId : custId},
			success: function(msg){
				if(msg == 'success') {
		    		alert("Successfully Deleted!!");
		    		dataTableCustomer.ajax.reload();
//		    		loadCustomerTable();
//		    		window.location.reload();
	    		} else alert("Failed!!!")
	    	}
		});
	});
	
    $('#customerForm').on('submit', function(e){
    	if(!e.isDefaultPrevented()){
	    	e.preventDefault();
	    	console.log("button clicked");
	        // prevents default behaviour
	        // Prevents event propagation
	    	console.log($(this).serialize())
	    	$.ajax({
	    		url: this.action,
	    		type: this.method,
	    		data: $(this).serialize(),
	    		success: function(msg){
	    		if(msg == 'success') {
	    			
		    		alert("Successfully Save!!");
		    		dataTableCustomer.ajax.reload();
		    		$('.customerFormDiv').hide();
					$('.customerTable').show();
//		    		window.location.href = "/"+ appDefaults.appName + "/customer/index";
//		    		window.location.reload();
	    		}
	    		else alert("Failed!!!")
	    		}
	    	});
    	}
    });
});
    
//    <tr>
//    
//    <td>${thisCustomer.email}</td>
//    <td>${thisCustomer.firstName}</td>
//    <td>${thisCustomer.lastName}</td>
//    <td>${thisCustomer.phone}</td>
//  </tr>
//
//function loadCustomer(){
//	$.ajax({
//		url: "/"+ appDefaults.appName + "/customer/create",
//		type: "POST",
//		success: function(data){
//			var tbHTML = '';
//			if(data){
//				$.each(data, function(idx, val){
//					console.log(val);
//					tbHTML = '<tr>';
//						tbHTML += '<th scope="row">'+val.id+'</th>'
//						tbHTML += '<td>'+val.productName+'</td>';
//						tbHTML += '<td>'+val.price+'</td>';
//						tbHTML += '<td>'+val.sku+'</td>';
//					tbaHTML = '</tr>';
//				});
//				$("#productTable").find('tbody').html(tbHTML);
//			}
//		}
//	});
//}
