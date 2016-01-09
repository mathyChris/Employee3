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



</head>

<body class="container">

	<!-- Myinfo line -->
		<div class="row">
			<div class="col-sm-7">

				<h2>내정보</h2>
			
				<pre>{{loginstatus}}</pre>
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


		<hr>
		<!-- contents page -->
		<div class="row">
		
				<div class="col-sm-4">
					<a href="#/modify/{{member.id}}">
					<img class="img-circle img-responsive img-center"
						src="http://placehold.it/160x160" alt=""></a>
					<h2>정보수정</h2>
					<p> 개인정보를 수정할수 있습니다. 주소 및 전화번호 기타 변경가능</p>
				</div>
				
				<div class="col-sm-4">
					<img class="img-circle img-responsive img-center"
						src="http://placehold.it/160x160" alt="">
					<h2>쿠폰 구매</h2>
					<p>현재 구매가능한 쿠폰목록을 보실수 있습니다</p>
				</div>
						
				<div class="col-sm-4">
					<img class="img-circle img-responsive img-center"
						src="http://placehold.it/160x160" alt="">
					<h2>캐쉬 보관함</h2>
					<p> 보유하고있는 캐쉬를 확인 하실수 있습니다</p>
				</div>
				
				<div class="col-sm-4">
					<a href="#/delete/{{member.id}}">
					<img class="img-circle img-responsive img-center"
						src="http://placehold.it/160x160" alt=""></a>
					<h2>회원 탈퇴</h2>
					<p>탈퇴된 회원정보는 기록되지 않으며 바로 삭제됩니다</p>
				</div>
				
				<div class="col-sm-4">
	
					<img class="img-circle img-responsive img-center"
						src="http://placehold.it/160x160" alt="">
					<h2>미정</h2>
					<p>탈퇴된 회원정보는 기록되지 않으며 바로 삭제됩니다</p>
				</div>
				
				<div class="col-sm-4">	
					<img class="img-circle img-responsive img-center"
						src="http://placehold.it/160x160" alt="">
					<h2>미정</h2>
					<p>탈퇴된 회원정보는 기록되지 않으며 바로 삭제됩니다</p>
				</div>
		</div>
			
		<!-- /.row -->

		<hr>

		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-20">
					<p>Copyright &copy; Your Website 2016</p>
				</div>
			</div>
			<!-- /.row -->
		</footer>


	<!-- /.container -->



</body>

</html>

