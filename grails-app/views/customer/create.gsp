<!doctype html>
<html>
<head>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">


<title>Insert title here</title>
</head>
<body>
<g:render template="navBar"/>
<br/><br/>
<div class="container">
<g:form name="customerForm" controller="customer" action="create" method="post" data-toggle="validator">
	  <g:hiddenField id="customerId" name="customerId" value="${customer ? customer.id : ""}"/>
  <div class="form-group">
    <label for="firstName">First Name</label>
    <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter first name" value="${customer ? customer.firstName : ""}">
  </div>
  <div class="form-group">
    <label for="lastName">Last Name</label>
    <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter last name" value="${customer ? customer.lastName : ""}">
  </div>
  <div class="form-group">
    <label for="exampleInput3">Phone Number</label>
    <input type="text" class="form-control" id="phoneNo" name="phoneNo" placeholder="Enter phone name" value="${customer ? customer.phone : ""}">
  </div>
   <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="inputEmail1" name="inputEmail1" aria-describedby="emailHelp" placeholder="Enter email" value="${customer ? customer.phone : ""}">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    <br/>
  <button type="submit" class="btn btn-primary">Save</button>
</g:form>
</div>>
</body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>
<g:javascript src = "customer.js"></g:javascript>
</html>