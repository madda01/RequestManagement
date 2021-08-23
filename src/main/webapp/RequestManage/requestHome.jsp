<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<meta charset="ISO-8859-1">
	 <link rel="stylesheet" href="css/requesthome.css">
	<title>Admin Home Page</title>
<!-- <style>
td, th {
  border: 1px solid #dddddd;
  text-align: center;
  padding: 3px;
} 
body {
  background-image: url('../img/s2.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
		
}
table { background-color:#C0C0C0;
font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 55%;
    border: 1px;
    margin-left: 10px;
    opacity:0.9;
 }
</style> -->
</head>
<body>
	<jsp:include page="../WEB-INF/views/common/adminHeader.jsp"></jsp:include> 
	
	<h5 align="center" class="capitalize" >Request Management</h5>
	 <hr>
	  
			<!--table to display data -->
			<table class="feedback">
				<tr>
					<th>Feedback ID</th>
					<th>Customer ID</th> <!-- paymentid is unique auto-incremented -->
					<th>Date</th>
					<th>Type</th>
					<th>Message</th>
					<th>Rating</th>
					<th>Status</th>
					<th colspan="2" style="text-align: center;">Action</th>
				</tr>	
			
					<!-- create a loop to display data in the table -->
					<!-- items name should be the name you gave in the setattribute in the servlet -->
					<c:forEach var="feedback" items="${feedbackdetails}">
					
					<!-- assign values for the variables -->
					<c:set var="Feedback_ID" value="${feedback.Feedback_ID}"> </c:set> <!-- feedbackid is unique auto-incremented -->
					<c:set var="Cus_ID" value="${feedback.Cus_ID}"> </c:set> <!-- customerid is unique auto-incremented -->
					<c:set var="Date" value="${feedback.Date}"> </c:set>
					<c:set var="Type" value="${feedback.Type}"> </c:set>
					<c:set var="Message" value="${feedback.Message}"> </c:set>
					<c:set var="Rating" value="${feedback.Rating}"> </c:set>
					<c:set var="Status" value="${feedback.Status}"> </c:set>
						
						<tr>
						<!-- print details inside the table -->
							<td>${feedback.Feedback_ID}</td> <!-- feedbackid is unique auto-incremented -->
							<td>${feedback.Cus_ID}</td> <!-- customerid is unique auto-incremented -->
							<td>${feedback.Date}</td>
							<td>${feedback.Type}</td>
							<td>${feedback.Message}</td>
							<td>${feedback.Rating}</td>
							<td>${feedback.Status}</td>
							
							<td>
								<!-- set the page that need to be navigated when updating as the value -->
								<c:url value="updateFeedback.jsp" var="feedbackupdate">
				
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
									<input type="button" name="update" value="Update">
								</a>
							</td>
								
							<td>
								<!-- set the page that need to be navigated when deleting as the value -->
								<c:url value="deleteFeedback.jsp" var="feedbackdelete">
									
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
									<input type="button" name="delete" value="Delete">
								</a>
							</td>
					</tr>	
				</c:forEach>
			</table>
	<jsp:include page="../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>