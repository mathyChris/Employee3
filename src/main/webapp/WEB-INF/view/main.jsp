<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html lang="ko" data-ng-app="employeeApp">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Find a good place to share our time with someone... </title>
	
	<%@ include file="/WEB-INF/view/commons.jspf" %>

    <!-- Custom CSS -->
    <link href="css/stylish-portfolio.css" rel="stylesheet">


    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <script type="text/javascript">
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar',
	            'ngMap'
	           ];

	var app = angular.module("employeeApp", deps);
	
	app.controller("mainController", function($scope, $http) {
		console.log("mainController...");
		
		
	});
	
</script>

</head>

<body data-ng-controller="mainController">

    <!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand">
                <a href="#top"  onclick = $("#menu-close").click(); >Find your Zagat</a>
            </li>
            <li>
                <a href="#top" onclick = $("#menu-close").click(); >Home</a>
            </li>
            <li>
                <a href="#map" onclick = $("#menu-close").click(); >Map</a>
            </li>
            
            
            <li>
                <a href="#information" onclick = $("#menu-close").click(); >My Info.</a>
            </li>
            
            <li>
                <a href="#service" onclick = $("#menu-close").click(); >Serving U</a>
            </li>
            
            <li>
                <a href="#menu" onclick = $("#menu-close").click(); > My favorite</a>
            </li>
            
            <li>
                <a href="#about" onclick = $("#menu-close").click(); >About us</a>
            </li>
            
            <li>
                <a href="#contact" onclick = $("#menu-close").click(); >Contact</a>
            </li>
        </ul>
    </nav>

    <!-- Header -->
    <header id="top" class="header">
        <div class="text-vertical-center">
            <a href="https://www.zagat.com/"><h1 class="btn btn-dark btn-lg"> Find your Zagat</h1></a>
<!--             <h3>Free  &amp; Perfect Time Piece</h3> -->
				 <h3></h3>
            <br>
            <a href="#map" class="btn btn-dark btn-lg">Go Map</a>
        </div>
    </header>

    <!-- About -->
        <!-- Map -->
    <section id="map" class="map">
    	
    	<div class = "container">
    	
    		<div class="row">
    			
	    			<div class="col-lg-12 text-center"><br><br>
	    				<h2> For your Perfect Time You will have ... </h2><br>
	                    <p class="lead">This map service will give you a perfect place you want. We wish that ... <a target="_blank" href="/Employee/user/login.html"> Login </a>.</p>
	    			</div><br><br>
    			
			        <iframe width="100%" height="600px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="complex7.html">
				        <small>
				            <a href="/Employee/complex7.html"></a>
				        </small>
			        </iframe>
			        

			        
            </div>
       </div>
        
     </section>
     
    
     <section id="blank" class="blank">
     
     	<div class = "container">
    		<div class="row">
     
     			<div>
     			
     			<div class="col-lg-12 text-center">
     			<h1> For your Perfect Time You will have ...  </h1>
     			
     			
               	   <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
     			
     			
     			</div>
        
            </div>
            
       </div>     
     
     </section>

    <!-- infomation -->
    <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
    <section id="information" class="information bg-primary">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                	<br>
                    <h2> My Info.</h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-cloud fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Weather</strong>
                                </h4>
                                <p>Check the weather</p>
                                <a href="https://weather.yahoo.com/" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-compass fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>My location</strong>
                                </h4>
                                <p> Where Am I?</p>
                                <a href="/Employee/project/myInfo/myLocation.jsp" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-flask fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong> Drink </strong>
                                </h4>
                                <p> Drink up </p>
                                <a href="#" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-shield fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Bus stop</strong>
                                </h4>
                                <p> Find your Bus Info.</p>
                                <a href="#" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Callout -->
    <aside class="callout">
    
    <br><br>
        <div class="text-vertical-center">
            <h1>Vertically Centered Place </h1> 
            <h2>recommended by Korean Zagat
        </div>
        
        </h2>
    </aside>


     <!-- service -->
    <section id="service" class="service">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                <br><br>
                    <h2>Serving U </h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="/Employee/user/login.html">
                                    <img class="img-portfolio img-responsive" src="img/ourService/login.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" src="img/ourService/coffee.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" src="img/ourService/coupon.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" src="img/ourService/thumbs-up.jpg">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                    <a href="#" class="btn btn-dark">View More Items</a><br><br><br>
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>



    
    
     <!-- menu -->
    <section id="menu" class="menu">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                <br><br>
                    <h2>My favorite</h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="/Employee/project/myFavorite/Korean_Food/FrontGate.jsp">
                                    <img class="img-portfolio img-responsive" src="img/myFavorite/kimchi.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="/Employee/project/myFavorite/Chinese_Food/FrontGate.jsp">
                                    <img class="img-portfolio img-responsive" src="img/myFavorite/dumpling.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="/Employee/project/myFavorite/Western_Food/FrontGate.html">
                                    <img class="img-portfolio img-responsive" src="img/myFavorite/steak.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="/Employee/project/myFavorite/Japanese_Food/FrontGate.jsp">
                                    <img class="img-portfolio img-responsive" src="img/myFavorite/sushi.jpeg">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                    <a href="#" class="btn btn-dark">View More Items</a><br><br><br>
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>
    
    <!-- about -->
    <section id="about" class="about">
    
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                	
                 <h2>Stylish members, on the shining ship floating in the golden river  . . .  </h2>
                    <p class="lead">These members are ...  <a target="_blank" href="http://join.deathtothestockphoto.com/"> More info. Press Here . . .</a>.</p>
                	<br>
                		        <iframe width="100%" height="1000px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="memberRound.html">
						       		 <br />
								        <small>
								            <a href="/Employee/memberRound.html"></a>
								        </small>
								</iframe>
								        
					<a href="/Employee/memberRound.html" class="btn btn-dark">View More Members</a>		        
                
                </div>
            </div>
		<!--  /.row -->
        </div>
		<!--  /.container -->
    </section>
    
    
    <!-- Call to Action -->
    <aside class="call-to-action bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>The buttons below are impossible to resist.</h3>
                    <a href="#" class="btn btn-lg btn-light">Click Me!</a>
                    <a href="#" class="btn btn-lg btn-dark">Look at Me!</a>
                </div>
            </div>
        </div>
    </aside>
    
    
    <!-- Map -->
    <section id="contact" class="map">
        <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
        <br />
        <small>
            <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
        </small>
        </iframe>
    </section>
    

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <h4><strong> Find your zagat</strong>
                    </h4>
                    <p>3481 Melrose Place<br>Beverly Hills, CA 90210</p>
                    <ul class="list-unstyled">
                        <li><i class="fa fa-phone fa-fw"></i> (123) 456-7890</li>
                        <li><i class="fa fa-envelope-o fa-fw"></i>  <a href="mailto:name@example.com">name@example.com</a>
                        </li>
                    </ul>
                    <br>
                    <ul class="list-inline">
                        <li>
                            <a href="#"><i class="fa fa-facebook fa-fw fa-3x"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-twitter fa-fw fa-3x"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-dribbble fa-fw fa-3x"></i></a>
                        </li>
                    </ul>
                    <hr class="small">
                    <p class="text-muted">Copyright &copy; Golden River Investment </p>
                </div>
            </div>
        </div>
    </footer>
    
    
    
    <!-- Custom Theme JavaScript -->
    <script>
    // Closes the sidebar menu
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Opens the sidebar menu
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Scrolls to the selected menu item on the page
    $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    
    </script>
</body>

</html>
