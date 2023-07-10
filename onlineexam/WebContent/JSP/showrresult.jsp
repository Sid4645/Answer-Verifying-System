<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
   
 <jsp:include page="AfterLoginHeader.jsp"></jsp:include>
 <div class="form-group">
  <label class="col-md-12 control-label" for=""></label>
  <div class="col-md-12"> 
  

 
  
 
  <br>
  <br>
  
 <%
 String test = (String) session.getAttribute("title");
 String username =(String) session.getAttribute("emailid");
 DAO data=new DAO();
	Connection conn=data.getConnection();
	String validateUser = "select ques,ans,marks from  examresult where  username=? group by username";
	PreparedStatement preparedStatement;
	try {
		preparedStatement = conn.prepareStatement(validateUser);

		preparedStatement.setString(1, username);
		int i=0;
		// execute insert SQL statement
		System.out.println(preparedStatement.toString());
		ResultSet result=preparedStatement.executeQuery();
		
		%>
		<table id="customers">
  <tr>
    <th>Question</th>
     <th>Ans</th>
    <th>Marks Scored</th>
   
  </tr>
		<%
		
		while(result.next())
		{%>
		<form action="revaluteans.jsp" method="post">
			<tr><td><%=result.getString(1)%></td>
		
			<td><%=result.getString(2)%></td>
		
			<td><%=result.getString(3)%></td>
		
		
			<input type="hidden" value="<%=result.getString(1) %>" name="action">
			</tr>
			</form>
			
	 <% }}catch(Exception e){
		 e.printStackTrace();
	 }%>
	  </table>
 </div>
  </div>
</body>
</html>