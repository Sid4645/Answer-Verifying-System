<%@page import="bean.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="calendar.js"></script>
<title>Login</title>
<%String emailid=(String)session.getAttribute("emailid");
String username=(String)session.getAttribute("username");
String msg=(String)request.getAttribute("message");
%>

<style type="text/css">

.calendar-box {
	display:none;
	background-color:#fff;
	border:1px solid #444;
	position:absolute;
	width:250px;
	padding: 0 5px;
}
.calendar-box select.calendar-month {
	width:90px;
}
.calendar-box select.calendar-year {
	width:70px;
}
.calendar-box .calendar-cancel {
	width:100%;
}
.calendar-box table td {
	width:14%;
}
.calendar-box .calendar-title {
	text-align:center;
}
.calendar-box a {
	text-decoration:none;
}
.calendar-box .today a {
	padding:0 5px;
	margin-left:-5px;
	background-color:#ffe9c6;
} 
.calendar-box .selected a {
	padding:0 5px;
	margin-left:-5px;
	background-color:#c9ff8b;
}

body {
	font-family: 'Lucida Grande', 'Helvetica Neue', sans-serif;
	font-size: 13px;
}

div.custom_file_upload {
	width: 400px;
	height: 20px;
	margin: 40px auto;
}

input.file {
	width: 250px;
	height: 35px;
	border: 1px soliRd #BBB;
	border-right: 0;
	color: #888;
	padding: 5px;
	
	-webkit-border-top-left-radius: 5px;
	-webkit-border-bottom-left-radius: 5px;
	-moz-border-radius-topleft: 5px;
	-moz-border-radius-bottomleft: 5px;
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	
	outline: none;
}

div.file_upload {
	width: 80px;
	height: 35px;
	background: #7abcff;
	background: -moz-linear-gradient(top,  #7abcff 0%, #60abf8 44%, #4096ee 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#7abcff), color-stop(44%,#60abf8), color-stop(100%,#4096ee));
	background: -webkit-linear-gradient(top,  #7abcff 0%,#60abf8 44%,#4096ee 100%);
	background: -o-linear-gradient(top,  #7abcff 0%,#60abf8 44%,#4096ee 100%);
	background: -ms-linear-gradient(top,  #7abcff 0%,#60abf8 44%,#4096ee 100%);
	background: linear-gradient(top,  #7abcff 0%,#60abf8 44%,#4096ee 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#7abcff', endColorstr='#4096ee',GradientType=0 );

	display: inline;
	position: absolute;
	overflow: hidden;
	cursor: pointer;
	
	-webkit-border-top-right-radius: 5px;
	-webkit-border-bottom-right-radius: 5px;
	-moz-border-radius-topright: 5px;
	-moz-border-radius-bottomright: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	
	font-weight: bold;
	color: #FFF;
	text-align: center;
	padding-top: 8px;
}
div.file_upload:before {
	content: 'Browse';
	position: absolute;
	left: 0; right: 0;
	text-align: center;
	
	cursor: pointer;
}

div.file_upload input {
	position: relative;
	height: 30px;
	width: 250px;
	display: inline;
	cursor: pointer;
	opacity: 0;
}

</style>
<%ArrayList<Student> studList = (ArrayList<Student>) request.getAttribute("list"); %>
<%String s1 = (String) request.getAttribute("a");
String type = (String) request.getAttribute("type");

%>
</head>
<body>
<%@include file="AfterLoginHeaderAdmin.jsp"%>



<form action="<%=request.getContextPath() %>/RegServlet" method="post" >              
		
	 <div class="contact-data"> 
			<div class="container">
		       
		          <div class="contact-form">
					    	<div>
						    	<span><label>Date:</label></span>
						    	<span><input type="date" id="file_upload" name="date"  required="required" data-validation-required-message="Please enter Lecture name." maxlength="15"> </span>
						    </div>
						  <div >
						    	<span><label>Type:</label></span>
						    	<div class="custom-select" style="width:200px;">
						    	<input type="radio" value="text" name="type"><label>Text</label>
						    		<input type="radio" value="video" name="type"><label>Video</label>
						    	</div>
						    	</div>
						    <input type="hidden" name="action" value="adminchart">
						    <div> 
<input class="button" style="color: black"  type="submit" value="View Chart" >
</div>
        	
	<%if(studList!=null) 
	{%>
	
				
				<table border="1" class="w3-table-all w3-hoverable" style="color:black">
				<tr >
				<th>Student Name</th>
				<th>Contact Number</th>
				
				<th>type</th>
				
				<th>Chart</th>
				</tr>
				<%for(int i =0 ;studList != null &&  i<studList.size(); i++){ 
				Student s = studList.get(i);
				
				%>
				<tr>
				<td><%=s.getName() %></td>
				<td><%=s.getPhno() %></td>
				<td><%=type %></td>
				<td><a href="<%=request.getContextPath() %>/RegServlet?action=viewchart&type=<%=type %>&email=<%=s.getName() %>&time=<%=s.getPhno() %>">View Chart</a></td>
			</tr>
	
	</table>
	
	      	<%} }%>
	<%if("a".equals(s1)){ %>
	<img src="BarChart.jpeg">
<%} %>
</form>
	
   
<br><br><br>
<br><br><br>
<br><br><br>
	<input type="hidden" value="adminchart" name="action">

              <%@include file="Footer.jsp"%>
</body>
</html>