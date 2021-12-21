$(document).ready(function(){
    $('#customerForm').on('submit', function(e){
    	e.preventDefault();
    	console.log("button clicked");
        // prevents default behaviour
        // Prevents event propagation
    	$.ajax({
    		url: this.action,
    		type: this.method,
    		data: $(this).serialize(),
    		success: function(msg){
    		if(msg == 'success') {
    		alert("Successfully Save!!");
    		location.reload();
    		}
    		else alert("Failed!!!")
    		}
    		});
    });
});
