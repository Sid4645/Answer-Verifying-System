<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<%String emailid=(String)session.getAttribute("emailid");
String message=(String)request.getAttribute("message");
%>
</head>
<body>
<%@include file="AfterLoginHeader.jsp"%>  

<div id="wrapper">

	<!--SLIDE-IN ICONS-->
    <div class="user-icon"></div>
    <div class="pass-icon"></div>
    <!--END SLIDE-IN ICONS-->

<!--LOGIN FORM-->
<form name="login-form" class="login-form" action="<%=request.getContextPath()%>/RegServlet"  method="post">

	<!--HEADER-->
    <div class="header">
    <!--TITLE--><h1 style="text-align:center;"><font color="#A3OB37">Change Password</font></h1><!--END TITLE-->
  
    </div>
    
    <!--END HEADER-->
	
	<!--CONTENT-->
    <div class="content"  align="center">
    <%if(message!=null){%>
							<label style="color: green;"> <%=message %></label><br>
					<%} %>
    <input type="hidden" value="changepwd" name="action">
    <span><font color="#3C91E6">Current Password</font></span>
	<!--Current Password--><input  type="password"  name="CPWD" class="textbox"  onfocus="this.value=''" /><!--END USERNAME-->
	<span><font color="#3C91E6">New Password</font></span>
    <!--PASSWORD--><input  type="password" name="NPWD" class="textbox"  onfocus="this.value=''" /><!--END PASSWORD-->
    <span><font color="#3C91E6">Confirm New Password</font></span>
    <input  type="password" name="NPWD" class="textbox"  onfocus="this.value=''" /><!--END PASSWORD-->
    <input type="submit" name="submit" value="Change Password" class="button" />
    </div>
    <!--END CONTENT-->
    
    
</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->


<%@include file="Footer.jsp"%>
</body>
</html>