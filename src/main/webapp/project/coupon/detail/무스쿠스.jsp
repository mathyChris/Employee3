<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>

<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Blog Home - Start Bootstrap Template</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/blog-home.css" rel="stylesheet">

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
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
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

		<div class="row">

			<!-- Blog Entries Column -->
			<div class="col-md-8">

				<h1 class="page-header">
					MUSCUS <small>잠실</small>
				</h1>

				<!-- First Blog Post -->
				<h2>평일 런치</h2>
				<p class="lead"></p>
				<p>
					<span class="glyphicon glyphicon-time"></span> Posted on August 28,
					2013 at 10:00 PM
				</p>
				<hr>
				<img class="img-responsive" src="image/무스쿠스.JPG" alt="">
				<hr>
				<p>
					웰빙형 스시&샐러드 중심의 패밀리 레스토랑<br> 
					[사용 가능일 01/19 ~ 02/17] 잠실 무스쿠스/평일 런치/뷔페/잠실뷔페/씨푸드뷔페<br>
					평일런치 <h4>26,300 -> 22,000원</h4>
				</p>
				<a class="btn btn-primary"
					href="http://192.168.10.23:8080/Employee/project/myFavorite/Japanese_Food/SecondGate2.jsp">Store... <span class="glyphicon glyphicon-chevron-right"></span>
				</a>

				<hr>


				<hr>

				<hr>

				<!-- Pager -->
				<ul class="pager">
					<li class="previous"><a href="../쿠폰/index.jsp">&larr;
							Older</a></li>
					<li class="next"><a href="#">Newer &rarr;</a></li>
				</ul>

			</div>


		</div>
		<!-- /.container -->

		<!-- jQuery -->
		<script src="js/jquery.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>
</body>

</html>
