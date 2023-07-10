<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forget Password</title>
<%Boolean msg=(Boolean)request.getAttribute("msg"); %>
</head>
<body>
<%@include file="Header.jsp"%>
	 <div class="contact-data"> 
			<div class="container">
		       <h2>Forget Password</h2>
		       
		          <div class="contact-form">
					     <form method="post" action="<%=request.getContextPath()%>/RegServlet"  class="left_form">
<%

if(msg!=null){
if(msg == false){ %>

<p style="color: white; font-size: 16px">Username is not Registered. To registered <a href="<%=request.getContextPath()%>/JSP/Registration.jsp">Click here</a></p>
<%}else if(msg == true){ %>
<p style="color: white; font-size: 16px">Please check your email-id for Password</p>
<%}} %>

					    	<div>
						    	<span><label>Email Id</label></span>
						    	<span><input    class="form-control" type="email" name="EMAILID" placeholder="Email Id" class="textbox"></span>
						    	
						    </div>
						    
						    <br><br>
		
						   <div>
						   		<input type="submit" value="Submit"class="btn btn-success"  class="myButton" >
						   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						   		<input type="reset" value="Clear All"  class="btn btn-success" >
						  </div>
						  <input type="hidden" value="forgetpassword"name = "action">
					    </form>
					    <div class="clear"></div>
				  </div>
				  </div>
				  </div>
				  
<%@include file="Footer.jsp"%>
</body>
</html>