<%@page import="java.util.ArrayList"%>
<%@page import="bean.Questionbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Answers</title>

<%ArrayList<Questionbean> list=(ArrayList<Questionbean>)session.getAttribute("list"); 
int i=1;
ArrayList<String> correctansqid = (ArrayList<String>) session.getAttribute("correctansqid"); 
%>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div id="courses">
		<div class="container">
		<div class="row">
			<form class="test" method="post">
			
			
		<%
		int count=0;
		for(Questionbean bean:list){ %>
			
		
							<div class="form-group">
							<table>
							<tr>
								<td colspan="2"><label><%=i++%>)<%=bean.getQname() %></label></td>
								</tr>
								<td>
								<%if("wrong".equals(correctansqid.get(count++))){ %>
								<label style="color:red">Ans:&nbsp;<%=bean.getAns() %></label>
								<%}else{ %>
								<label style="color:blue">Ans:&nbsp;<%=bean.getAns() %></label>
								<% }%>
								</td>
								<hr>
							</div>
							</tr>
							</table>
							</div>
							
<%} %>
<input type="hidden" name="action" value="result">
</form>
<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>