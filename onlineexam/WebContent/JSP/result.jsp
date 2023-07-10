<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
<%
	Integer marks = (Integer) request.getAttribute("marks");
Integer unanswered = (Integer) request.getAttribute("unanswerdans");
%>

</head>
<body>
	<jsp:include page="AfterLoginHeader.jsp"></jsp:include>
	<div id="courses">
		<div class="container">
		<%String status= (String)session.getAttribute("exam");
			if( marks==null){
				 %>
	<label>Exam already Given</label>			 
				 <%}else { %>
		
		
			<h2>
				Marks :<%=marks%>/25
			</h2>
			<div class="row">
			<label style="color:orange;font-size: 110%">Thank you so much for using the Application.</label>
			<label style="color:orange;font-size: 110%">All the Best!!!</label>
				<div class="col-md-4" style="width: 100%">
					<div class="featured-box" style="width: 100%">
						<i class="fa fa-cogs fa-2x"></i>
						<div class="text">
							<h3 style="color: blue">Advance Java</h3>
							<h4 style="font-weight: bold;">
								Total number of questions : 25<br> Number of answered
								questions :<%= 25 - unanswered %> <br> Number of unanswered questions : <%=unanswered %><br>
							</h4>
							<a href="<%=request.getContextPath()%>/JSP/ShowAnswers.jsp">Show Answers</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
<%} %>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>