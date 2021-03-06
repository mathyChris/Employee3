<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="ko">

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
                <h1 class="page-header"><font size="50">Xingkai(싱카이)</font></h1>
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
                                <img class="img-responsive img-full" src="img/china2/sk1.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/china2/sk2.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/china2/sk3.jpg" alt="">
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
                    <hr class="tagline-divider">
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
                <h3>Xingkai</h3>
                <p>성가 ‘별의 길’ 이라는 뜻의 '싱카이(XINGKAI)'는 마치 1930년대 상하이의 고급 레스토랑을 그대로 들여놓은 듯한 느낌을 갖게 하는 고급스럽고 웅장한 스케일의 중식당입니다.</p>
                <h3>매장안내</h3>
                <ul>
                    <li>역삼점:서울시 강남구 논현로 508 GS타워 B1</li>
                    <li>여의도점:서울특별시 영등포구 여의대로 128<br></li>
                    <ul>LG트윈타워 동관 5층</ul>
                    <li>광화문점:서울특별시 중구 세종대로 136<br></li>
                    <ul>서울파이낸스센터 B2</ul>
                    <li>call:02-2005-1003</li>
                    <li>홈페이지:<a href="http://www.xingkai.co.kr">http://www.xingkai.co.kr</a></li>
                </ul>
            </div>

        </div>
        <!-- /.row -->

        <!-- Related Projects Row -->
        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header">Best Menu</h3>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="china2/itemInfo1.jsp">
                    <img class="img-responsive portfolio-item" src="img/china2/sk4.jpg" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="china2/itemInfo2.jsp">
                    <img class="img-responsive portfolio-item" src="img/china2/sk5.jpg" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="china2/itemInfo3.jsp">
                    <img class="img-responsive portfolio-item" src="img/china2/sk6.jpg" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="china2/itemInfo4.jsp">
                    <img class="img-responsive portfolio-item" src="img/china2/sk7.jpg" alt="">
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
