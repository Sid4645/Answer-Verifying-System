<!DOCTYPE html>
<html lang="en">
<%@page import="bean.Questionbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Test</title>

<%ArrayList<Questionbean> list=(ArrayList<Questionbean>)session.getAttribute("list"); %>
<%int i=1; %>

<script language="JavaScript">
var d1 = new Date ();
var d2 = new Date ( d1 );
d2.setMinutes ( d1.getMinutes() + 30 );
TargetDate = d2;

BackColor = "palegreen";
ForeColor = "navy";
CountActive = true;
CountStepper = -1;
LeadingZero = true;
DisplayFormat = "%%H%% Hours, %%M%% Minutes, %%S%% Seconds.";
FinishMessage = "It is finally here!";
</script>
<script language="JavaScript" src="<%=request.getContextPath()%>/JSP/timer.js"></script>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js">
        </script>
<script>
    $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
</script>
</head>
<body>
<jsp:include page="AfterLoginHeader.jsp"></jsp:include>

<div id="courses">
		<div class="container">
		<div class="row">
			
	
		<form action="<%=request.getContextPath()%>/Test" method="post" id="a">			
					
		<%for(Questionbean bean:list){ 
		String b=(String)bean.getQid().replaceAll(" ", "").toLowerCase().replaceAll("\\?", "");
		%>
			
		
							<div class="form-group">
							<table>
							<tr>
								<td colspan="2"><label ><%=i++%>)<%=bean.getQid() %><%="?" %></label></td>
								</tr>
								<tr>
								<td colspan="2">
								
									
									<input style="color: black" type="hidden" name ="action" value="test">			
								<textarea   class="<%=bean.getQid().replaceAll(" ", "").replaceAll("\\?", "").toLowerCase() %>" name="<%=bean.getQid().replaceAll(" ", "").toLowerCase().replaceAll("\\?", "") %>" id="<%=bean.getQid().replaceAll(" ", "").toLowerCase().replaceAll("\\?", "") %>" style="color:black" rows="4" cols="44" required><%if(request.getAttribute(b) != null) {%> <%=request.getAttribute(b) %><%} %>  </textarea></td>
							<input type="hidden" name="question<%=i-1 %>" value="<%=b  %>">
								</tr><tr><td><img alt="" src="<%=request.getContextPath()%>/JSP/images/icon.png" onclick="fun('<%=bean.getQid().replaceAll(" ", "").toLowerCase().replaceAll("\\?", "") %>')"></td>
								<td><img alt="" src="<%=request.getContextPath()%>/JSP/images/no.jpg" onclick="fun('<%=bean.getQid().replaceAll(" ", "").toLowerCase().replaceAll("\\?", "") %>')"></td>
								

						</table>
							</div>
							
<%} %>
<input type="submit" style="color:black" value="Submit Test" name="action1">
<input type="hidden" name="action" value="result">
</form>

	</div>
	</div>
	</div>
	
	<script type="text/javascript">
	var recognition = null;
function fun(a)
{
	if(recognition!=null)
		{
		 document.getElementById("a").submit();
		}
	var speech = true;
	window.SpeechRecognition = window.SpeechRecognition
					|| window.webkitSpeechRecognition;

	recognition = new SpeechRecognition();
	recognition.interimResults = true;
	//const words = document.querySelector('.'+a);
	
	alert(a)

	//words.appendChild(a);
	recognition.addEventListener('result', e => {
		const transcript = Array.from(e.results)
			.map(result => result[0])
			.map(result => result.transcript)
			.join('')
//alert(transcript);
		document.getElementById(a).value = transcript;
		console.log(transcript);
	});
	
	if (speech == true) {
		recognition.start();
		recognition.addEventListener('end', recognition.start);
	}
	}

</script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>