<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
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
<%String s = (String) request.getAttribute("a"); %>
</head>
<body>



<form action="<%=request.getContextPath() %>/B" method="post" >              
		
	 <div class="contact-data"> 
			<div class="container">
		       
		          <div class="contact-form">
					    	<div>
						    	<span><label>Date:</label></span>
						    	<span><input type="date" id="file_upload" name="date"  required="required" data-validation-required-message="Please enter Lecture name." maxlength="15"> </span>
						    </div>
						   <!--  <div>
						    	<span><label>Lecturer Name</label></span>
						    	<span><input  id="LNAME" type="text" placeholder="Lecture Name *" name="lname" required="required" data-validation-required-message="Please enter Lecture name." maxlength="15"></span>
						    </div> -->
						    <input type="hidden" name="action" value="chart">
						    <div> 
<input class="button" style="color: black"  type="submit" value="View Chart" >
</div>
        	
	<%if("a".equals(s)){ %>
	<img src="BarChart.jpeg">
<%} %>
</div>
</div>
</div>	
</form>
	
	
	
	 <div class="progress">
   

	<input type="hidden" value="upload" name="action">
</td>
              </tr>
              <tr>
              </form>
              <br><br><br><br><br><br><br><br><br><br>
 
            
    
</body>
</html>