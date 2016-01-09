<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">



<title></title>

<!-- Bootstrap Core CSS -->
<link href="../../css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../../css/business-frontpage.css" rel="stylesheet">

<!-- jQuery -->
<script src="../../js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../../js/bootstrap.min.js"></script>




<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="container">

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
				<a class="navbar-brand" href="#">Start Bootstrap</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">About</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Image Background Page Header -->
	<!-- Note: The background image is set within the business-casual.css file. -->
	<header class="business-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="tagline"></h1>
				</div>
			</div>
		</div>
	</header>

	<!-- Page Content -->
	<div class="container">

		<hr>

		<div class="row">
			<div class="col-sm-8">

				<h2>내정보</h2>
				
				<script type="text/javascript">
					
				</script>			


<a class="btn btn-primary" href="#/list">list...</a>


	<pre>{{member}}</pre>
		
	<table>
		<tr><td>메일주소</td><td>{{member.email}}</td></tr>
		<tr><td>이름</td><td>{{member.name}}</td></tr>
		<tr><td>주소</td><td>{{member.address}}</td></tr>
		<tr><td>전화번호</td><td>{{member.phone}}</td></tr>
	</table>
		
		
						<a href="#/detail/{{member.id}}" class="btn btn-info">{{member.id}}</a>
						<a href="#/modify/{{member.id}}" class="btn btn-success">Edit...</a>
						<a href="#/delete/{{member.id}}" class="btn btn-info">Delete...</a>
						<a href="#/append" class="btn btn-primary">Append</a>		

				</div>

			</div>

		</div>
		<!-- /.row -->

		<hr>

		<div class="row">
			<div class="col-sm-4">
				<img class="img-circle img-responsive img-center"
					src="http://placehold.it/300x300" alt="">
				<h2>Marketing Box #1</h2>
				<p>These marketing boxes are a great place to put some
					information. These can contain summaries of what the company does,
					promotional information, or anything else that is relevant to the
					company. These will usually be below-the-fold.</p>
			</div>
			<div class="col-sm-4">
				<img class="img-circle img-responsive img-center"
					src="http://placehold.it/300x300" alt="">
				<h2>Marketing Box #2</h2>
				<p>The images are set to be circular and responsive. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
			</div>
			<div class="col-sm-4">
				<img class="img-circle img-responsive img-center"
					src="http://placehold.it/300x300" alt="">
				<h2>Marketing Box #3</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
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



</body>

</html>


