<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/${grailsApplication.metadata['app.name']}/customer/index/">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/${grailsApplication.metadata['app.name']}/customer/index/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
         <a class="nav-link" id="addCustomer" style="cursor:pointer">Add Customer</a>
        <%-- <g:createLink class="nav-link" controller="customer" action="showTable" >Add Customer</g:createLink> --%>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Awards
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" id="create-award" href="/${grailsApplication.metadata['app.name']}/award/">Create Award</a>
          <a class="dropdown-item all-award" style="cursor:pointer">All Award</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Users
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" id="create-award" href="/${grailsApplication.metadata['app.name']}/user/">Create Award</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <%--<li class="nav-item">
        <a class="nav-link" id="addAward" href="/${grailsApplication.metadata['app.name']}/award/index/"  aria-disabled="true">Awards</a>
      </li> --%>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>