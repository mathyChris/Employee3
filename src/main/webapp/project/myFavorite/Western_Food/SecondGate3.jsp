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

        <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Primo Bacio Baci
                    <small>restaurant</small>
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
                                <img width="100%" class="img-responsive img-full" src="./img/res3/pri1.jpg" alt="">
                            </div>
                            <div class="item">
                                <img width="100%" class="img-responsive img-full" src="./img/res3/pri2.jpg" alt="">
                            </div>
                            <div class="item">
                                <img width="100%" class="img-responsive img-full" src="./img/res3/pri3.jpg" alt="">
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
                <h3>Primo Bacio Baci</h3>
                <p>2004년 12월에 시작한 프리모 바치오는 "첫키스"라는 뜻을 가지고 있으며 2006년 고객님의 사랑과 더불어 프리모 바치오바치라는 이름으로 새롭게 태어났습니다. 프리모 바치오는 현재 홍대본점, 홍대2호점, 강남점, 명동본점, 명동2호점, 건대점과 대학로점에 있습니다. 아름다운 맛의 향기가 피어나는 프리모바치에서 고객님을 기다립니다.</p>
                <p> <a target="_blank" href="http://www.menupan.com/restaurant/onepage.asp?acode=R106884">http://www.menupan.com</a>
                </p>
                <h3>Primo Bacio Baci MENU</h3>
                <ul>
                    <li>빠네 파스타</li>
                    <li>네로 파스타</li>
                    <li>올리브 봉골레</li>
                    <li>시저피자</li>
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
                <a href="./western3/itemInfo9.jsp">
                    <img class="img-responsive portfolio-item" src="./img/res3/pri11.jpg"  alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="./western3/itemInfo10.jsp">
                    <img height="300" class="img-responsive portfolio-item" src="./img/res3/pri22.jpg" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="./western3/itemInfo11.jsp">
                    <img class="img-responsive portfolio-item" src="./img/res3/pri33.jpg" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="./western3/itemInfo12.jsp">
                    <img class="img-responsive portfolio-item" src="./img/res3/pri44.jpg" alt="">
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
