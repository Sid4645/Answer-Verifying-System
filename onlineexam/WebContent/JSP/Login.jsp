<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<%
	String isuccess = (String) request.getAttribute("username");
%>
</head>
<body>
<%@include file="Header.jsp"%>
	 <div class="contact-data"> 
			<div class="container">
		       <h2>Login Page</h2>
		       
		          <div class="contact-form">
					     <form method="post" action="<%=request.getContextPath()%>/RegServlet"  class="left_form">
					     					 <%if("invalid".equals(isuccess))
    	{%>
    	<span style="color: red">Invalid username or password .</span><!--END DESCRIPTION-->
    	
    	<%
    	request.setAttribute("message","");}%>
    
	
					    	<div class="form-group has-success">
						    	<span><label>Email Id</label></span>
						    	<span>
						    	
<input class="form-control" type="text" name="EMAILID" maxlength="50"
									placeholder="Email Id"
										 name="FirstName"
										required="required"
										
										maxlength="15" required="required" >
						    	
						    	</span>
						    	
						    </div>
						    
						    <div>
						    	<span><label>Password</label></span>
						    	<span>
						    	
	<input  id="FNAME" class="form-control" type="password" name="PASSWORD" maxlength="25"
										placeholder="Password" 
										required="required"
										data-validation-required-message="Please enter your name."
										 required="required" >
						    	</span>
						    	
						    </div>
						    
		<br><br>
						   <div>
						   		<input class="btn btn-success" type="submit" value="Submit" class="myButton" >
						   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						   		<input type="reset" class="btn btn-success" value="Clear All" class="myButton">
						  </div>
						  <input type="hidden" value="login"name = "action">
					    </form>
					    <div class="clear"></div>
				  </div>
				  </div>
				  </div>
				  
<%@include file="Footer.jsp"%>
</body>
</html>