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

$('document').ready(function(){
//	dataTableCustomer = $('#customerDataTable').DataTable();
	loadCustomerTable();
	
	$(document).on('click', '#deleteCustomerBtn', function() {
		var custId = $("#deleteCustomerBtn").attr('data-cust-id');
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
	
//	$('#deleteCustomerBtn').click(function(e) {
//		e.preventDefault();
//		
//	)};
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
//		    		window.location.href = "/"+ appDefaults.appName + "/customer/index";
		    		window.location.reload();
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
