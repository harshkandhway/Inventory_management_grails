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
  <g:render template="newForm"/>
  <br/><br/>
  <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Email</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Phone</th>
    </tr>
  </thead>
  <tbody>
  <g:each in="${customerInstanceList}" var="thisCustomer">
    <tr>
      <th scope="row">${thisCustomer.id}</th>
      <td>${thisCustomer.email}</td>
      <td>${thisCustomer.firstName}</td>
      <td>${thisCustomer.lastName}</td>
      <td>${thisCustomer.phone}</td>
    </tr>
    </g:each>
  </tbody>
</table>
  </div>
  
</body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<g:javascript src = "customer.js"></g:javascript>
</html>

