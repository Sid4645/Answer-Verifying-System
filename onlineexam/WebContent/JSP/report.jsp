<%@page import="bean.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report</title>

<%ArrayList<Student> studList = ((ArrayList<Student>) request.getAttribute("studList")); %>

</head>
<body>

<jsp:include page="Header.jsp"></jsp:include>
<div id="courses">
		<div class="container">
			<h2>Report View</h2>
			<div class="row">
				<div class="col-md-4"  style="width: 100%">
				
				
				<table border="1">
				<tr>
				<th>Student Name</th>
				<th>Contact Number</th>
				<th>Course Name</th>
				<th>Marks</th>
				<th>Grade</th>
				</tr>
				<%for(int i =0 ;studList != null &&  i<studList.size(); i++){ 
				Student s = studList.get(i);
				
				%>
				<tr>
				<td><%=s.getName() %></td>
				<td><%=s.getPhno() %></td>
				<td><%=s.getCoursename() %></td>
				<td><%=s.getResult() %></td>
				<td><%if(Integer.parseInt(s.getResult())<10){ %>
				
				<label style="font-weight: bold; color: red"> Fail</label>
				
				<%}else{
					%>
					<label style="font-weight: bold; color: green"> Pass</label>
			<% }%>	
				</td>
				</tr>
				<%} %>
				</table>
				
					
				</div>
				</div>
				</div>
				</div>
				
<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	
<jsp:include page="Footer.jsp"></jsp:include>	




</body>
</html>