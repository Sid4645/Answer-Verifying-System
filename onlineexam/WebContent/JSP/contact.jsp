<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
<link rel="stylesheet" type="text/css"
	href="../bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="../font-awesome/css/font-awesome.min.css" />

<script type="text/javascript" src="../js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>


<script type="text/javascript">

function fnameValidation()
{
	var fname = document.getElementById("fname").value;
	fname = fname.toLowerCase();
	for(var i =0 ; i< fname.length;i++)
		{
			if(fname.charAt(i) < 'a' || fname.charAt(i) > 'z')
				{
					document.getElementById("fnameerror").innerHTML = "First Name should contain only alphabets";
					return false;
				}
		}
	document.getElementById("fnameerror").innerHTML = "";
	return true;
}
function lnameValidation()
{
	var lname = document.getElementById("lname").value;
	lname = lname.toLowerCase();
	for(var i =0 ; i< lname.length;i++)
		{
			if(lname.charAt(i) < 'a' || lname.charAt(i) > 'z')
				{
					document.getElementById("lnameerror").innerHTML = "Last Name should contain only alphabets";
					return false;
				}
		}
	document.getElementById("lnameerror").innerHTML = "";
	return true;
}



</script>



</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<div class="container">


		<!-- Contact with Map - START -->
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="well well-sm">
					<img src="<%=request.getContextPath()%>/assets/images/college.png" alt="Techro HTML5 template"></a>
						<!-- <form class="form-horizontal" method="post">
							<fieldset>
								<legend class="text-center header">Contact us</legend>
								<div class="form-group">
									<div class="col-md-10 col-md-offset-1">
										<input id="fname" name="fname" type="text"
											placeholder="First Name" class="form-control" onblur="fnameValidation()">
											<label id="fnameerror" style="color: red"></label>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-10 col-md-offset-1">
										<input id="lname" name="lname" type="text"
											placeholder="Last Name" class="form-control" onblur="lnameValidation()">
											<label id="lnameerror" style="color:red"></label>
									</div>
								</div>

								<div class="form-group">
									<div class="col-md-10 col-md-offset-1">
										<input id="mno" name="mno" type="number"
											placeholder="Mobile No"  class="form-control">
									</div>
								</div>
								

								<div class="form-group">
									<div class="col-md-12 text-center">
										<button type="submit" class="btn btn-primary btn-lg">Submit</button>
										<button type="reset" class="btn btn-primary btn-lg">Reset</button>
									</div>
								</div>
							</fieldset>
						</form>
 -->					</div>
				</div>
				<div class="col-md-6">
					<div>
						<div class="panel panel-default">
							<div class="text-center header">Our Institute</div>
							<div class="panel-body text-center">
								<h4>Address</h4>
								<div>
									Pimpri Chinchwad Polytechnic<br /> Nigdi Pradhikaran<br />7040779582<br />
									premkakade143@gmail.com<br />
								</div>
								<hr />
								
							</div>
						</div>
					</div>
				</div>
				<div id="map1" class="map"></div>
			</div>
		</div>
<jsp:include page="Footer.jsp"></jsp:include>

		<script
			src="http://maps.google.com/maps/api/js?sensor=false&key=AIzaSyCeq9acroDtMHrtMbYgQpcn2V9Qw9BE8EE"></script>

		<script type="text/javascript">
			jQuery(function($) {
				function init_map1() {
					var myLocation = new google.maps.LatLng(18.652143, 73.761556);
					var mapOptions = {
						center : myLocation,
						zoom : 16
					};
					var marker = new google.maps.Marker({
						position : myLocation,
						title : "Property Location"
					});
					var map = new google.maps.Map(document
							.getElementById("map1"), mapOptions);
					marker.setMap(map);
				}
				init_map1();
			});
		</script>

		<style>
.map {
	min-width: 300px;
	min-height: 300px;
	width: 100%;
	height: 100%;
}

.header {
	background-color: #F5F5F5;
	color: #36A0FF;
	height: 70px;
	font-size: 27px;
	padding: 10px;
}
</style>

		<!-- Contact with Map - END -->

	</div>

	

</body>
</html>