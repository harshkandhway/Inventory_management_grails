<div class="container customerFormDiv">
<g:form name="customerForm" controller="customer" action="create" method="post" data-toggle="validator" class="customer-form">
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
    <label for="phone">Phone Number</label>
    <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter phone name" value="${customer ? customer.phone : ""}">
  </div>
   <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="inputEmail" name="inputEmail" aria-describedby="emailHelp" placeholder="Enter email" value="${customer ? customer.email : ""}">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    <br/>
  <button type="submit" class="btn btn-primary">Save</button>
</g:form>
</div>