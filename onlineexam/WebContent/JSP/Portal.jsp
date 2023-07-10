<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<%String emailid=(String)session.getAttribute("emailid");
String username=(String)session.getAttribute("username");
String msg=(String)request.getAttribute("message");
%>
<script type="text/javascript">
function onfileselect()
{
	document.getElementById("path").value=document.getElementById("file_upload").value;
	
	}

</script>
<style type="text/css">
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
</head>
<body>
<%@include file="AfterLoginHeader.jsp"%>


<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="37%" align="center"><table width="195" border="0" cellspacing="0" cellpadding="0">
              <tr>
              <label style="text-align: center;"><font color="#A3OB37"> Welcome <%=username%></font>
</label>
<form action="<%=request.getContextPath() %>/B" method="post" enctype="multipart/form-data">              
	<div class="custom_file_upload" ><label style="text"><font color="#3C91E6">File Upload</font></label>
	<input type="text" class="file" required="required" name="file_info" id="path"  >
	<div class="file_upload">
		<input type="file" id="file_upload" name="file" onchange="onfileselect()">
		<input type="submit" value="Upload">
		<input type="hidden" value="fileupload" name="action" >
	
	</div>
	
	<br><br>
		<br>
		<br>
	<input class="button"  type="submit" value="Upload" >
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<br><br>
	<br><br>
	<br><br>
	<br><br>
	<br><br>
	<br><br>
	 <div class="progress">
   
	<%if(msg!=null){ %>
	<label><%=msg %></label>
	<%} %>
	<input type="hidden" value="upload" name="action">
</td>
              </tr>
              <tr>
              </form>
              <br><br><br><br><br><br><br><br><br><br>
         
            
              <%@include file="Footer.jsp"%>
</body>
</html>