<g:form id = "customerForm" name="customerForm" controller="customer" action="create" method="post" data-toggle="validator">
  <div class="form-group">
    <label for="exampleInput1">First Name</label>
    <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter first name">
  </div>
  <div class="form-group">
    <label for="exampleInput2">Last Name</label>
    <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter last name">
  </div>
  <div class="form-group">
    <label for="exampleInput3">Phone Number</label>
    <input type="text" class="form-control" id="phoneNo" name="phoneNo" placeholder="Enter phone name">
  </div>
   <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="inputEmail1" name="inputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    <br/>
  <button type="submit" class="btn btn-primary">Save</button>
</g:form>