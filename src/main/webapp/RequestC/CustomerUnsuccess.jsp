<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <jsp:include page="../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<style>
.contt{
	background-color:#f0f5f5;
		width: 700px;
		border: 15px black;
		font: 16px;
		padding: 20px 12px 10px 20px;
		outline-style: double;
		outline-color: black;
		float:center;
		opacity:0.8;
		margin: 0 auto; 
		text-align: center;
	
}
</style>
</head>
<body>
 <jsp:include page="../WEB-INF/views/common/header.jsp"></jsp:include>
<br>
	<div class ="contt">
	<form action="../backtoinsert" method="post" align="center">
		<h4>Something went wrong.</h4>
		<p>The submission wasn't successful.<br>Please re-fill the Feedback Form.</p>
		<input type="submit" name="backbtn" value="Go back to Feedback Insert-Form">
	</form>
	</div>
<jsp:include page="../WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>