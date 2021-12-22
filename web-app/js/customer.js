$(document).ready(function(){
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
