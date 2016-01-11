<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>3 Col Portfolio - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/3-col-portfolio.css" rel="stylesheet">
    
     <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- Custom CSS -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                  <a class="navbar-brand" href="#">Log in</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="/Employee/main.html">Home</a>
                    </li>
                    <li>
                        <a href="/Employee/main.html#service">Services</a>
                    </li>
                    <li>
                        <a href="/Employee/main.html#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Header -->
        <div class="row">
            <div class="col-lg-12 text-center ">
                <h1 class="page-header" > Famous Restaurant Top10  
                </h1>
            </div>
        </div>
        
       <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-6 col-lg-offset-3 text-center">
                    <div id="carousel-example-generic" class="carousel slide">
                        <!-- Indicators -->
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                             <a href="../Western_Food/SecondGate2.jsp">
                                <img class="img-responsive img-full" style="height:400px ; width:600px"  width="100%" src="./img/store/se1.jpg" alt="">
                                </a>
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" style="height:400px ; width:600px" width="100%" src="./img/store/se2.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" style="height:400px ; width:600px" width="100%" src="./img/store/se3.jpg"alt="">
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="icon-next"></span>
                        </a>
                    </div>
                   
                     <h3>
                    <a href="../Western_Food/SecondGate2.jsp">SEOGA&COOK</a>
                </h3>
                 <h4 class="brand-before">
                        <i class="fa fa-thumbs-o-up"> 강남역 최고의 맛집으로 선정</i>
                    </h4>
                    <hr class="tagline-divider">
                  
                </div>
            </div>
        </div>
        <p>
        </p>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row">
            <div class="col-md-4 portfolio-item">
                <a href="../Japanese_Food/SecondGate1.jsp">
              
                    <img class="img-responsive" style="height:200px; width:450px" width="100%" src="./img/store/go1.JPG"  alt="">
                </a>
                <h3>
                    <a href="../Japanese_Food/SecondGate1.jsp">고베규카츠</a>
                </h3>
                <p>규카츠, 돈까스, 우동, 스테이크덮밥</p>
            </div>
            <div class="col-md-4 portfolio-item">
                <a href="../Japanese_Food/SecondGate3.jsp">
                    <img class="img-responsive" style="height:200px; width:450px" width="100%" src="./img/store/ija1.jpg"  alt="">
                </a>
                <h3>
                    <a href="../Japanese_Food/SecondGate3.jsp">이자카야</a>
                </h3>
                <p>いざかや 일본의 전통 선술집 </p>
            </div>
            <div class="col-md-4 portfolio-item">
                <a href="../Western_Food/SecondGate1.jsp">
                    <img class="img-responsive" style="height:200px; width:450px" width="100%"
						src="./img/store/red1.jpg"  alt="">
                </a>
                <h3>
                    <a href="../Western_Food/SecondGate1.jsp">바비레드</a>
                </h3>
                <p> Bob is Red</p>
            </div>
       
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row">
           <div class="col-md-4 portfolio-item">
                <a href="../Western_Food/SecondGate2.jsp">
                     <img class="img-responsive" style="height:200px; width:450px" width="100%"
						src="./img/store/se1.jpg"  alt="">
                </a>
                <h3>
                    <a href="../Western_Food/SecondGate2.jsp">서가앤쿡</a>
                </h3>
                <p>Home Made, Home Mate.</p>
            </div>
            
            <div class="col-md-4 portfolio-item">
                <a href="../Chinese_Food/Chinese_Food2.jsp">
                     <img class="img-responsive" style="height:200px; width:450px" width="100%"
						src="./img/store/sk3.jpg"  alt="">
                </a>
                <h3>
                    <a href="../Chinese_Food/Chinese_Food2.jsp">싱카이</a>
                </h3>
                <p>성가 ‘별의 길’ 이라는 뜻의 싱카이(XINGKAI).</p>
            </div>
            
              <div class="col-md-4 portfolio-item">
                <a href="../Chinese_Food/Chinese_Food3.jsp">
                     <img class="img-responsive" style="height:200px; width:450px" width="100%"
						src="./img/store/yg.PNG"  alt="">
                </a>
                <h3>
                    <a href="../Chinese_Food/Chinese_Food3.jsp">연경</a>
                </h3>
                <p>전통 27년, 중국요리 연경 식자재의 고품질 </p>
            </div>
            
        
        </div>
        
          <div class="row">
           <div class="col-md-4 portfolio-item">
                <a href="../Korean_Food/Korean_Food3.jsp">
                     <img class="img-responsive" style="height:200px; width:450px" width="100%"
						src="./img/store/sw5.jpg"  alt="">
                </a>
                <h3>
                    <a href="../Korean_Food/Korean_Food3.jsp">삼원가든</a>
                </h3>
                <p>1976년 국내최대의 고급 한식당</p>
            </div>
            
            <div class="col-md-4 portfolio-item">
                 <a href="../Korean_Food/Korean_Food2.jsp">
                     <img class="img-responsive" style="height:200px; width:450px" width="100%"
						src="./img/store/zh5.jpg"  alt="">
                </a>
                <h3>
                    <a href="../Korean_Food/Korean_Food2.jsp">지호한방삼계탕</a>
                </h3>
                <p>성가 ‘별의 길’ 이라는 뜻의 싱카이(XINGKAI).</p>
            </div>
            
              <div class="col-md-4 portfolio-item">
                <a href="../Japanese_Food/SecondGate2.jsp">
                     <img class="img-responsive" style="height:200px; width:450px" width="100%"
						src="./img/store/moo1.jpg"  alt="">
                </a>
                <h3>
                   <a href="../Japanese_Food/SecondGate2.jsp">무스쿠스</a>
                </h3>
                <p>well-being SeaFood Buffet </p>
            </div>
            
             
            
           
        </div>
        

       
        <!-- /.row -->

        <hr>

       
        <!-- /.row -->

        <hr>

        <!-- Footer -->
     

    </div>
    <!-- /.container -->
	<div>
	
	

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
     
    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/freelancer.js"></script>
    
    
    

</body>

</html>
