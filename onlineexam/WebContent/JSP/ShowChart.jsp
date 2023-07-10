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

<style>
/*the container must be positioned relative:*/
.custom-select {
  position: relative;
  font-family: Arial;
}

.custom-select select {
  display: none; /*hide original SELECT element:*/
}

.select-selected {
  background-color: DodgerBlue;
}

/*style the arrow inside the select element:*/
.select-selected:after {
  position: absolute;
  content: "";
  top: 14px;
  right: 10px;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-color: #fff transparent transparent transparent;
 
}

/*point the arrow upwards when the select box is open (active):*/
.select-selected.select-arrow-active:after {
  border-color: transparent transparent #fff transparent;
  top: 7px;
}

/*style the items (options), including the selected item:*/
.select-items div,.select-selected {
  color: #ffffff;
  padding: 8px 16px;
  border: 1px solid transparent;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
  cursor: pointer;
  user-select: none;
}

/*style items (options):*/
.select-items {
  position: absolute;
  background-color: DodgerBlue;
  top: 100%;
  left: 0;
  right: 0;
  z-index: 99;
}

/*hide the items when the select box is closed:*/
.select-hide {
  display: none;
}

.select-items div:hover, .same-as-selected {
  background-color: rgba(0, 0, 0, 0.1);
}
</style>
<%String s = (String) request.getAttribute("a"); %>
</head>
<body>
<%@include file="AfterLoginHeader.jsp"%>



<form action="<%=request.getContextPath() %>/B" method="post" >              
		
	 <div class="contact-data"> 
			<div class="container">
		       <br><br>
		          <div class="contact-form">
					    	<div>
						    	<span><label>Date:</label></span>
						    	<span><input type="date" id="file_upload" class="form-control" name="date"  required="required" data-validation-required-message="Please enter Lecture name." maxlength="15"> </span>
						    </div>
						 
						    <input type="hidden" name="action" value="chart">
						    <div> 
						    <br><br>
<input class="btn btn-success"  style="color: black"  type="submit" value="View Chart" >
</div>
        	
	<%if("a".equals(s)){ 

	%>
	<img src="BarChart.jpeg" alt="Image not found">
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
 
            
              <%@include file="Footer.jsp"%>
</body>
</html>