<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Storage Menu</title>
<%String emailid=(String)session.getAttribute("emailid");
String username=(String)session.getAttribute("username");
String filename=(String)request.getAttribute("filename");
ArrayList<String> userlist=(ArrayList<String>)request.getAttribute("userlist");
%>

</head>
<body>
<%@include file="AfterLoginHeader.jsp"%>
<label style="text-align: right;"> Welcome <%=username%>
<%=emailid %>
</label>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="37%" align="center"><table width="195" border="0" cellspacing="0" cellpadding="0">
              <tr><td>
<form action="<%=request.getContextPath() %>/ShareFile" method="get" enctype="multipart/form-data"> 
Share  <%=filename %> with</label>
<input type="hidden" value= <%=filename %> name="filename">
<select name="sharename">

<%for(int i=0;i<userlist.size();i++){ %>
<option ><%=userlist.get(i)%></option>
<%} %>
        </select>     
	<input type="hidden" value="Share" name="action">
	
</td>
              </tr>
              <tr>
              <td>
              <input type="submit" class="button" value="Share File">
              </td>
              </tr>
              </form>
</body>
</html>