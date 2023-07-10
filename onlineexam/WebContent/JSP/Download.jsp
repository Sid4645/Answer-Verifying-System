<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="bean.FileBean"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Download</title>
<%String emailid=(String)session.getAttribute("emailid");
String username=(String)session.getAttribute("username");
ArrayList<FileBean> filelist= (ArrayList<FileBean>)request.getAttribute("filelist");
%>
</head>
<body>
<%@include file="AfterLoginHeader.jsp"%>
	<label style="text-align: center;"><font color="#A3OB37"> Welcome <%=username%></font>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="37%" align="center"><table width="195" border="0"
					cellspacing="0" cellpadding="0">
					<table cellspacing='0'> <!-- cellspacing='0' is important, must stay -->

	<!-- Table Header -->
	<thead>
	<br>
		<tr>
			<th><font color="#A3OB37">File Name</font></th>
			<th><font color="#A3OB37">&nbsp &nbsp &nbsp File Size</font></th>
			<th><font color="#A3OB37">&nbsp &nbsp Download</font></th>
			<th><font color="#A3OB37">&nbsp &nbsp Delete File</font></th>
		</tr>
	</thead>
	<!-- Table Header -->

	<!-- Table Body -->
	<tbody>
<%for(int i=0;filelist != null &&   i<filelist.size();i++){ %>
		<tr>
			<td><font color="#3C91E6"><%=filelist.get(i).getFilename() %></font></td>
			<td><font color="#3C91E6">&nbsp &nbsp &nbsp &nbsp<%=filelist.get(i).getFilesize() +1%></font><font color="#3C91E6">KB</font></td>
			<td>&nbsp &nbsp &nbsp &nbsp <a href="<%=request.getContextPath()%>/Download?filename=<%=filelist.get(i).getFilename()%>" ><font color="#3C91E6">Download</font></a></td>
			  <td>&nbsp &nbsp &nbsp &nbsp<a href="<%=request.getContextPath()%>/Delete?filename=<%=filelist.get(i).getFilename()%>" ><font color="#3C91E6">Delete</font></a></td> 
		</tr><!-- Table Row -->

	<%} %>

	</tbody>
	<!-- Table Body -->

</table>
					
					
					<tr>
					</tr>
				</table></td>
		</tr>
	</table>

</body>
</html>