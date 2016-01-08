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
                <h1 class="page-header">BOBIRED
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
                                <img class="img-responsive img-full" src="./img/res1/red1.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="./img/res1/red2.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="./img/res1/red3.jpg" alt="">
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
                <h3>BOBIRED</h3>
                <p> BOBIRED는 Bob + is + Red의 줄인말로 직역하면 '밥이 빨개요'가 되는 것이고 '식사가 매워요'라는 의미를 가진 '매운 음식을 파는 곳' 이라는 뜻입니다.</p>
               <p> <a target="_blank" href="http://bobired.co.kr/bin/minihome/index.html?seq=7756">http://bobired.co.kr</a></p>
                <h3>BOBIRED MENU</h3>
                <ul>
                    <li>바비 스테이크</li>
                    <li>레드 갈비 스튜</li>
                    <li>레드 크림 파스타</li>
                    <li>레드 토마토 파스타</li>
                    <li>레드 갈릭 밥스타</li>
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
                <a href="./western1/itemInfo1.jsp">
                    <img class="img-responsive portfolio-item" src="./img/res1/red11.jpg"  alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="./western1/itemInfo2.jsp">
                    <img class="img-responsive portfolio-item" src="./img/res1/red22.jpg" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="./western1/itemInfo3.jsp">
                    <img class="img-responsive portfolio-item" src="./img/res1/red33.jpg" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="./western1/itemInfo4.jsp">
                    <img class="img-responsive portfolio-item" src="./img/res1/red44.jpg" alt="">
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
