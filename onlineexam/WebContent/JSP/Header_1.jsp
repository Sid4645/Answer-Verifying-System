<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


        <link href="<%=request.getContextPath()%>/JSP/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
        <link href="<%=request.getContextPath()%>/JSP/css/style.css" rel="stylesheet" type="text/css" media="all" />


        <!-- script-for-nav -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/JSP/css/flexslider.css" type="text/css" media="screen" />
        <script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
    </head>

    <body>
        <!-- header -->
        <div class="header-top">
            <!-- div class="container"-->
            <!-- div class="phone">
			
				<h3><font color="#1C1D23"><span>Phone</span> : +91 1111111111</h3>
			</div></font-->
            <div class="logo">
                <!-- a href="index.html"--><img src="<%=request.getContextPath()%>/JSP/images/finalLogo.png" class="img-responsive" alt="" />&nbsp Personality Checker
                <!-- /a-->

            </div>
            <!--div class="location">
				<h3><font color="#000000"><span>Location</span> : Pune</h3>
			</div></font-->
            <div class="clearfix"> </div>
            <!--/div-->
        </div>

        <div class="container">
            <div class="head-nav" style="font-family:Times New Roman;">
                <span class="menu"> </span>
                <ul>
                    <li class="active"><a href="<%=request.getContextPath()%>/JSP/Homepage.jsp">
                            <font color="white">HOME
                        </a></font>
                    </li>
                    <li><a href="<%=request.getContextPath()%>/JSP/aboutus.jsp">
                            <font color="white">ABOUT US
                        </a></font>
                    </li>
                    <li><a href="<%=request.getContextPath()%>/JSP/Registration.jsp">
                            <font color="white">Registration
                        </a></font>
                    </li>
                    <li><a href="<%=request.getContextPath()%>/JSP/Login.jsp">
                            <font color="white">Login
                        </a></font>
                    </li>
                    <li><a href="<%=request.getContextPath()%>/JSP/ForgetPassword.jsp">
                            Forget Password
                        </a>
                    </li>


                    <div class="clearfix"> </div>
                </ul>
            </div>
            <div class="clearfix"> </div>
            <!-- script-for-nav -->
           
            <!-- script-for-nav -->


            <!-- FlexSlider -->
        </div>
        </div>

        <!-- header -->
    </body>

    </html>