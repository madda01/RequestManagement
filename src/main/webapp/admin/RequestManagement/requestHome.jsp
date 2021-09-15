<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
     <%@ page import="java.io.PrintWriter"%>
<%
if (request.getSession().getAttribute("Logged") != null) {
    //request.getSession().setAttribute("Logged", "Guest");
%>
    
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<meta charset="ISO-8859-1">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/requesthome.css">
	<title>Admin Home Page</title>

</head>
<body class="hbody">
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include> 
	<div class="row">
	<jsp:include page="../../WEB-INF/views/Request/AdminRequestnavbar.jsp"></jsp:include> 
	
	<div class="col-9">
	<br>
		<div>
			<form action="${pageContext.request.contextPath}/searchfeedback" method="post" class="searchbar">
				<input type="text" id="myInput" class="form-control" name="search" placeholder="search feedbacks by status.."/>
	 		</form> 
 		</div> <br>
			<!--table to display data -->
			<div class="col-8">
			<table class="table table-hover table table-sm table table-striped">
			<!-- <table class="feedback"> -->
			<thead class="thead-dark">
				<tr>
					<th scope="col">Feedback ID</th>
					<th scope="col">Customer ID</th> <!-- feedbackid is unique auto-incremented -->
					<th scope="col">Date</th>
					<th scope="col">Type</th>
					<th scope="col">Message</th>
					<th scope="col">Rating</th>
					<th scope="col">Status</th>
					<th scope="col" colspan="2" style="text-align: center;">Action</th>
					<th scope="col">Confirmation Email</th>
				</tr>	
			</thead>
			<tbody>
					<!-- create a loop to display data in the table -->
					<!-- items name should be the name you gave in the setattribute in the servlet -->
					<c:forEach var="feedback" items="${feedbackdetails}">
					
					<!-- assign values for the variables -->
					<c:set var="Feedback_ID" value="${feedback.feedback_ID}"> </c:set> <!-- feedbackid is unique auto-incremented -->
					<c:set var="Cus_ID" value="${feedback.cus_ID}"> </c:set> <!-- customerid is unique auto-incremented -->
					<c:set var="Date" value="${feedback.date}"> </c:set>
					<c:set var="Type" value="${feedback.type}"> </c:set>
					<c:set var="Message" value="${feedback.message}"> </c:set>
					<c:set var="Rating" value="${feedback.rating}"> </c:set>
					<c:set var="Status" value="${feedback.status}"> </c:set>
						
						<tr>
						<!-- print details inside the table -->
							<td>${feedback.feedback_ID}</td> <!-- feedbackid is unique auto-incremented -->
							<td>${feedback.cus_ID}</td> <!-- customerid is unique auto-incremented -->
							<td>${feedback.date}</td>
							<td>${feedback.type}</td>
							<td>${feedback.message}</td>
							<td>${feedback.rating}</td>
							<td>${feedback.status}</td>
							
							<td>
								<!-- set the page that need to be navigated when updating as the value -->
								<c:url value="admin/RequestManagement/updateFeedback.jsp" var="feedbackupdate">
				
									<!-- data to take to the navigated page -->
									<c:param name="Feedback_ID" value="${Feedback_ID}"></c:param> <!-- feedbackid is unique auto-incremented -->
									<c:param name="Cus_ID" value="${Cus_ID}"></c:param> <!-- customerid is unique auto-incremented -->
									<c:param name="Date" value="${Date}"></c:param>
									<c:param name="Type" value="${Type}"></c:param>
									<c:param name="Message" value="${Message}"></c:param>
									<c:param name="Rating" value="${Rating}"></c:param>
									<c:param name="Status" value="${Status}"></c:param>
							
								</c:url>
						
								<a href="${feedbackupdate}"> <!-- pass the variable name -->
									<!-- <input type="button" name="update" value="Update"> -->
									<button type="button" class="btn btn-outline-dark">Update</button>
								</a>
							</td>
								
							<td>
								<!-- set the page that need to be navigated when deleting as the value -->
								<c:url value="admin/RequestManagement/deleteFeedback.jsp" var="feedbackdelete">
									
									<!-- data to take to the navigated page -->
									<c:param name="Feedback_ID" value="${Feedback_ID}"></c:param> <!-- feedbackid is unique auto-incremented -->
									<c:param name="Cus_ID" value="${Cus_ID}"></c:param> <!-- customerid is unique auto-incremented -->
									<c:param name="Date" value="${Date}"></c:param>
									<c:param name="Type" value="${Type}"></c:param>
									<c:param name="Message" value="${Message}"></c:param>
									<c:param name="Rating" value="${Rating}"></c:param>
									<c:param name="Status" value="${Status}"></c:param>
						
								</c:url>
						
								<a href="${feedbackdelete}"> <!-- pass the variable name -->
									<!-- <input type="button" name="delete" value="Delete"> -->
									<button type="button" class="btn btn-outline-dark">Delete</button>
								</a>
							</td>
							
							<td>
						
								<c:url value="admin/RequestManagement/feedbackEmail.jsp" var="feedbackemail">
						
								</c:url>
								<a href="feedbackemail"> <!-- pass the variable name -->
									<button type="button" class="btn btn-outline-dark">Send</button>
								</a>
							</td>
					</tr>	
				</c:forEach>
				</tbody>
			</table>
		</div>
	<br>
	<div class="col-10">
			<form action=<%=request.getContextPath() + "/feedbackreport"%> method="post" class="reportform">
			
				<div class="mb-4">
							<h6 style="padding: 10px">Date</h6>
							<input type="date" name="fdate" class="form-control" id="formGroupExampleInput" style="width: 300px">
				</div>
				<!-- <button type="button" class="btn btn-outline-dark" style="margin: 10px">Generate Report </button> -->
				<div class="submit">
		      <input type="submit" value="Generate Report" id="form_button" style="width: 50%"/>
		    </div>
			</form>
		</div>
		</div><br><br>
		</div><br><br>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>
<%
} else {
    PrintWriter redirect = response.getWriter();
    redirect.println("<script>");
    redirect.println("location='../../login.jsp'");//put the location from your jsp file
    redirect.println("</script>");
}
%>