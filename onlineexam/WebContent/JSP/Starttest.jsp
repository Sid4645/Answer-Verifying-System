<%@page import="java.util.ArrayList"%>
<%@page import="bean.Questionbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Test Page</title>
<%ArrayList<Questionbean> list=(ArrayList<Questionbean>)session.getAttribute("list"); %>
</head>
<body>
<%@include file="AfterLoginHeader.jsp"%>

<div id="courses">
		<div class="container">
			<h2>NAME of The Test &nbsp; </h2>
			<div class="row">
				<div class="col-md-4"  style="width: 100%">
					<div class="featured-box" style="width: 100%">
						<i class="fa fa-cogs fa-2x" ></i>
						<div class="text"  >
		<h4 style="font-weight:bold;">					

Instruction:<br></h4><h5>

Total number of questions : 5.<br>


Once Submitted we will detect the depression<br>
</h5>
<h4 style="font-weight:bold;">
Note:
</h4><h5>
    1.Click the 'Submit t' button given in the bottom of this page to Submit your answers.<br>
    2.Don't refresh the page.</h5>

						</div>
						
					</div>
					<form action="<%=request.getContextPath()%>/Test" method="post">					
					<input style="color: black" type="submit" class="btn btn-success"  value="Start Exam">	
										<input style="color: black" type="hidden" name ="action" value="test">					
									
					</form>
				</div>
				</div>
				</div>
				</div>
				
<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	
<jsp:include page="Footer.jsp"></jsp:include>	
	
</body>
</html>