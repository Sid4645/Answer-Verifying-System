<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>ONLINE HEALTH CARE HUB</title>
	
	<!-- core CSS -->
    <link href="<%=request.getContextPath()%>/asset/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/asset/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/asset/css/animate.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/asset/css/prettyPhoto.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/asset/css/main.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/asset/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/asset/js/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/asset/js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/asset/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=request.getContextPath()%>/asset/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=request.getContextPath()%>/asset/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=request.getContextPath()%>/asset/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/asset/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body class="homepage">

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>  +91 9403931544</p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            </ul>
                            <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div>
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<%=request.getContextPath()%>/JSP/Homepage.jsp"><img src="<%=request.getContextPath()%>/images/logo2.png" alt="logo"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
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

                  </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->
	 </body>
	 </html>
	 