<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OHCH</title>
</head>
<body>
<%@include file="Header.jsp"%>
<body class="homepage">
 <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1" ></li>
            
            </ol>
            <div class="carousel-inner">

                <div class="item active" style="background-image: url(../images/slider1.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Online Appoitmnets</h1>
                                    <h2 class="animation animated-item-2">No need to stand in long Queue</h2>
                                   
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                   
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(../images/slider2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Chat & Post Your Queries</h1>
                                    <h2 class="animation animated-item-2">Chat with Consulant !</h2>
                                    
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                           
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->
                 </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </section><!--/#main-slider-->
	<%@include file="Footer.jsp"%>
</body>
</html>