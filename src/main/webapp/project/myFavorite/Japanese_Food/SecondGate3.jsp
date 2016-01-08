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

    <title>Portfolio Item - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/portfolio-item.css" rel="stylesheet">


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
                <a class="navbar-brand" href="#">Start Bootstrap</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">이자카야
                    <small>02-534-3300</small>
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-8">
                <!-- <img class="img-responsive" src="http://placehold.it/750x500" alt=""> -->
                
                
                
                <!-- -->
             <div class="box">
                <div class="col-lg-12 text-center">
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
                                <img width="100%" class="img-responsive img-full" src="./img/res3/ija1.jpg" alt="">
                            </div>
                            <div class="item">
                                <img width="100%" class="img-responsive img-full" src="./img/res3/ija2.jpg" alt="">
                            </div>
                            <div class="item">
                                <img width="100%" class="img-responsive img-full" src="./img/res3/ija3.jpg" alt="">
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
                   
                    <!-- <h2>
                        <small>By
                            <strong>Start Bootstrap</strong>
                        </small>
                    </h2> -->
                </div>
            </div>
                
                
                
                <!-- -->
                
                
                
                
                
                
            </div>

            <div class="col-md-4">
                <h3>이자카야(いざかや)</h3>
                <p> 종류와 그에 따른 간단한 요리를 제공하는 일본 음식점입니다. 주로 주류를 제공하고 있는 점에서 일반 식당과 다릅니다. 이자카야에서는 일본식 술인 사케를 제공하고있는 가게가 많아, 술집에 비해 요리의 종류가 많습니다..</p>
             
                <h3>이자카야 MENU</h3>
                <ul>
                    <li>연어샐러드</li>
                    <li>타코와사비</li>
                    <li>통새우 꼬치</li>
                    <li>시샤모 꼬치</li>
                    <li>참치 타다끼</li>
                </ul>
            </div>

        </div>
        <!-- /.row -->

        <!-- Related Projects Row -->
        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header">BEST MENU</h3>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="./japanese3/itemInfo9.jsp">
                    <img class="img-responsive portfolio-item" src="./img/res3/ija11.jpg"  alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="./japanese3/itemInfo10.jsp">
                    <img height="300" class="img-responsive portfolio-item" src="./img/res3/ija22.jpg" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="./japanese3/itemInfo11.jsp">
                    <img class="img-responsive portfolio-item" src="./img/res3/ija33.jpg" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="./japanese3/itemInfo12.jsp">
                    <img class="img-responsive portfolio-item" src="./img/res3/ija44.jpg" alt="">
                </a>
            </div>

        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
