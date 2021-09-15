<div
    class="container-fluid"
    style="
      padding-top: 1rem;
      background-color:#000000;
      padding-bottom: 0.5rem;
      position:sticky;
      top:0;
      z-index:100;
    "
  >
  <div class="row">
    <div class="col-sm form-inline">
      <div>
        <img src=<%=request.getContextPath()+"/img/Logo.png" %> height="50" width="50" />
      </div>
      <div
        style="
          color:#ffffff;
          padding-left: 2rem;
          font-size: 1.5rem;
          font-family: 'Noto Serif', serif;
        "
      >
        SMD Distributors
      </div>
    </div>
   
    <div class="col-sm d-flex justify-content-end">
      <i
        class="bi bi-person-circle"
        style="font-size: 2.5rem; padding-right: 1.5rem"></i>
      <divstyle="padding-right: 1.5rem" class="mt-3 mr-0 ml-0">
	      <form action="logout" method="post">
	      	<button type="submit" class="btn btn-outline-danger">LogOut</button>
	      </form>
      </div>
    </div>
  </div>
</div>