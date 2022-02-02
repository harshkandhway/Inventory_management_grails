 <!doctype html>
<html>
<head>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">
<title>Insert title here</title>
</head>
<body>
<g:render template="/navBar"/>
<br/><br/>
  <div class="container">
	  <div class="customerTable">
		  <table class="table table-striped" id="customerDataTable">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Email</th>
		      <th scope="col">First</th>
		      <th scope="col">Last</th>
		      <th scope="col">Phone</th>
		      <th scope="col">Points</th>
		      <th scope="col">Delete</th>
		    </tr>
		  </thead>
		  <%-- <tbody>
		  <g:each in="${customerInstanceList}" var="thisCustomer" id="gEachInTable">
		    <tr>
		      <th scope="row"> <a href="/${grailsApplication.metadata['app.name']}/customer/update?id=${thisCustomer.id}">${thisCustomer.id}</a></th>
		      <td>${thisCustomer.email}</td>
		      <td>${thisCustomer.firstName}</td>
		      <td>${thisCustomer.lastName}</td>
		      <td>${thisCustomer.phone}</td>
		      <td><button type="button" id="deleteCustomerBtn" data-cust-id="${thisCustomer.id}" class="btn btn-danger">Delete</button></td>
		    </tr>
		    </g:each>
		  </tbody> --%> 
		</table>
	</div>
	<div class = "customer-form">
	<g:render template="create"/>
	</div>
  </div>
  
</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>

<g:javascript src = "customer.js"></g:javascript>
<g:javascript src = "index.js"></g:javascript>
</html>	

