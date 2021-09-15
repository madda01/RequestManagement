<div
    class="container-fluid pt-1"
    style="
      background-color:#000000;
      padding-bottom: 0.5rem;
      position:sticky;
      top:0;
      z-index:100;
    "
  >
   <div class="row">
     <div class="col-sm form-inline mt-0">
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
     <div class="col-sm mt-3">
     <% if(request.getServletPath().equals("/index.jsp")){ %>
       <div class="input-group mb-3">
         <input
           type="text"
           class="form-control"
           aria-label="Default"
           aria-describedby="inputGroup-sizing-default"
         />
         <div class="input-group-prepend">
           <span class="input-group-text" id="inputGroup-sizing-default"
             ><i class="bi bi-search"></i
           ></span>
         </div>
       </div>
       <%} %>
     </div>
   </div>
 </div>
 <button
	 type="button"
	 class="btn btn-secondary btn-floating btn-lg"
	 id="btn-back-to-top"
	 style="
	 	position: fixed;
	 	bottom: 20px;
	 	right: 20px;
	 	display: none;">
	  <i class="fas fa-arrow-up"></i>
</button>