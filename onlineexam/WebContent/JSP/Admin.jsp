<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%String msg = (String) request.getAttribute("msg"); %>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div id="courses">
		<div class="container">
			<h2>Admin Login</h2>
			<div class="row">
				<div class="col-md-4"  style="width: 100%">
					
					<form action="<%=request.getContextPath()%>/Test" method="post">
					<%if(msg != null){ %>
					<label style="color: red"><%= msg%></label>
					<%} %>
					<input type="text" name="username"  class="form-control" placeholder="user name" required="required" maxlength="15" id="FNAME">
					<br>
					<input type="password" name="password"  class="form-control"   placeholder="Password" required="required" maxlength="15" id="MNO">
					<br>
					<input type="hidden" name="action" value="login">
					<input type="submit" value="Login">
					
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