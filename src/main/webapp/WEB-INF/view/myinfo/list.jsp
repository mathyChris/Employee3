<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>




<!DOCTYPE html>


<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<style type="text/css">
.table-responsive table {
	border-collapse: collapse;
	text-align: left;
	width: 100%;
}

.table-responsive {
	font: normal 12px/150% Arial, Helvetica, sans-serif;
	background: #fff;
	overflow: hidden;
	border: 10px solid #FC9F9F;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px;
}

.table-responsive table td, .table-responsive table th {
	padding: 11px 20px;
}

.table-responsive table thead th {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #991821
		), color-stop(1, #80141C));
	background: -moz-linear-gradient(center top, #991821 5%, #80141C 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#991821',
		endColorstr='#80141C');
	background-color: #991821;
	color: #FFFFFF;
	font-size: 15px;
	font-weight: bold;
	border-left: 0px solid #B01C26;
}

.table-responsive table thead th:first-child {
	border: none;
}

.table-responsive table tbody td {
	color: #80141C;
	font-size: 15px;
	font-weight: normal;
}

.table-responsive table tbody .alt td {
	background: #F7CDCD;
	color: #80141C;
}

.table-responsive table tbody td:first-child {
	border-left: none;
}

.table-responsive table tbody tr:last-child td {
	border-bottom: none;
}
</style>

<title></title>





</head>

<body class="container">

	<!-- Myinfo line -->
	<div class="row">
		<div class="col-sm-15">

			<!-- 				<pre>{{loginstatus}}</pre> -->
			<div class="panel panel-danger">
				<div class="panel-heading">
					<h2>내정보</h2>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table>
							<thead>

								<tr>
									<th>메일주소</th>
									<th>이름</th>
									<th>주소</th>
									<th>전화번호</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>{{member.email}}</td>
									<td>{{member.name}}</td>
									<td>{{member.address}}</td>
									<td>{{member.phone}}</td>
								</tr>

								<!-- //////// table 속성 alt 부분 줄마다 배경색이 바뀜 -->
								<!-- 						<tr class="alt"> -->
								<!-- 							<td>data</td> -->
								<!-- 						</tr> -->
							</tbody>
						</table>
					</div>
				</div>
			</div>


			<!--  detail modify delete append 기본기능 코멘트화 시킴 사용가능 -->
			<!-- 				<a href="#/detail/{{member.id}}" class="btn btn-info">{{member.id}}</a> -->
			<!-- 				<a href="#/modify/{{member.id}}" class="btn btn-success">Edit...</a> -->
			<!-- 				<a href="#/delete/{{member.id}}" class="btn btn-info">Delete...</a> -->
			<!-- 				<a href="#/append" class="btn btn-primary">Append</a>		 -->
		</div>
	</div>

	<!-- contents page -->
	<div class="row">
		<div class="panel panel-danger">
			<div class="panel-body">




				<div class="col-sm-4" align="center">
					<!-- 
						font awesome 아이콘 크기 수동으로 변경해줘야 알맞은 크기로 변경됨 
						변경법은.  WEB-INF/node_modules/font-awesome/css/font-awesome.css 열고
						.fa-5x {
 							 font-size: 5em; -> 11em 으로 수정할것!!
						}	
					-->
					<a href="#/modify/{{member.id}}"> <i class="fa fa-user fa-5x"></i>
					</a>
					<h3>정보수정</h3>
					<p>개인정보를 수정할수 있습니다. 주소 및 전화번호 기타 변경가능</p>

				</div>

				<div class="col-sm-4" align="center">

					<a href="#/delete/{{member.id}}"> <i
						class="fa fa-user-times fa-5x"></i>
					</a>
					<h2>회원 탈퇴</h2>
					<p>탈퇴된 회원정보는 기록되지 않으며 바로 삭제됩니다</p>

				</div>

				<div class="col-sm-4" align="center">
					<a href=""> <i class="fa fa-apple fa-5x"></i>
					</a>
					<h2>별점보기</h2>
					<p>구현되지 않은 기능입니다, 차후 자기가 작성한 별점 및 댓글을 확인할 수 있습니다</p>

				</div>
			</div>

			<div class="panel-body">
				<div class="col-sm-4" align="center">
					<a href=""> <i class="fa fa-money fa-5x"></i>
					</a>
					<h2>쿠폰 구매</h2>
					<p>현재 구매가능한 쿠폰목록을 보실수 있습니다, 미구현</p>
				</div>

				<div class="col-sm-4" align="center">
					<a href=""> <i class="fa fa-credit-card-alt fa-5x"></i>
					</a>
					<h2>캐쉬 보관함</h2>
					<p>보유하고있는 캐쉬를 확인 하실수 있습니다, 미구현</p>
				</div>


				<div class="col-sm-4" align="center">
					<a href=""> <i class="fa fa-android fa-5x"></i>
					</a>
					<h2>고객의 소리</h2>
					<p>구현되지 않은 기능입니다. 사이트내에서 생겨나는 문제점이나 고객의 소리같은 부분.</p>
				</div>
			</div>
		</div>
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



