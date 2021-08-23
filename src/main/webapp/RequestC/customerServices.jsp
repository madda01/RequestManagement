<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Customer Services</title>
    <jsp:include page="../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
    <!-- <link rel="stylesheet" href="../css/rating.css"> -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <style>
form{
	background-color:#ffffff;
	width: 40%;
	border: 7px black;
	margin: 20px;
	font: 13px "";
	padding: 20px 12px 10px 20px;
	outline-color: black;
	outline-style: groove;
	float:center;
	opacity:0.8;
}
div.stars {
  width: 270px;
  display: inline-block;
}

input.star { display: none; }

label.star {
  float: right;
  padding: 10px;
  font-size: 36px;
  color: #444;
  transition: all .2s;
}

input.star:checked ~ label.star:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}

input.star-5:checked ~ label.star:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}

input.star-1:checked ~ label.star:before { color: #F62; }

label.star:hover { transform: rotate(-15deg) scale(1.3); }

label.star:before {
  content: '\f006';
  font-family: FontAwesome;
}
body {
  background-image: url('../img/service3.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  min-height:100vh;
  position:relative;
		
}
</style>
</head>
<body>
    <jsp:include page="../WEB-INF/views/common/header.jsp"></jsp:include>
    
    <div class="mydiv">
    
            <center>
			<form name="feedback" method="post" action="../addfeedback" style="text-align: left;">
                <h2 style="text-align: center;">Send Us A Feedback</h2><br>
                <h6 class="fw-light" style="text-align: center;">We would love to hear your thoughts. <br>
                         Get connected with us!</h6><br><br>
                        
				<lable for="date">Date</lable>
					<input type="date" id="Date" name="Date" required><br><br><br>

				<label>Feedback type: </label><br>
                    <input type="radio" id="Type" name="Type" value="I" checked> Complaint
	              	<input type="radio" id="Type" name="Type" value="C">Comment               
           			<input type="radio" id="Type" name="Type" value="Q">Question
        	 <br><br><br>
						
                <label for="message">Type your message</label><br>
                    <textarea id="Message" name="Message" style="height: 180px; width: 500px;" required></textarea><br><br><br>

				<h6>How Did You Like Us?</h6>
                <div class="stars">
				    <input class="star star-5" id="star-5" type="radio" name="Rating" value="5"/>
				    <label class="star star-5" for="star-5"></label>
				    <input class="star star-4" id="star-4" type="radio" name="Rating" value="4"/>
				    <label class="star star-4" for="star-4"></label>
				    <input class="star star-3" id="star-3" type="radio" name="Rating" value="3"/>
				    <label class="star star-3" for="star-3"></label>
				    <input class="star star-2" id="star-2" type="radio" name="Rating" value="2"/>
				    <label class="star star-2" for="star-2"></label>
				    <input class="star star-1" id="star-1" type="radio" name="Rating" value="1"/>
				    <label class="star star-1" for="star-1"></label>
				</div>
                <br><br><br>

                <input type="submit" value="Submit Your Feedback"></button>
                    
            </form> <br>
        </center>
        </div>
        <br><br>
 
        <!--<jsp:include page="../WEB-INF/views/common/footer.jsp"></jsp:include>-->
</body>
</html>