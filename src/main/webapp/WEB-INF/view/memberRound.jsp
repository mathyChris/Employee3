<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Round About - Start Bootstrap Template</title>
    
    <%@ include file="/WEB-INF/view/commons.jspf" %>


    <!-- Custom CSS -->
    <link href="../css/round-about.css" rel="stylesheet">



</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            Brand and toggle get grouped for better mobile display
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"> Our Team</a>
            </div>
            Collect the nav links, forms, and other content for toggling
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
<!--                     <li> -->
<!--                         <a href="#">About</a> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <a href="#">Services</a> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <a href="#">Contact</a> -->
<!--                     </li> -->
                </ul>
            </div>
<!--             /.navbar-collapse -->
        </div>
<!--         /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Introduction Row -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"></h1>
            </div>
        </div>

        <!-- Team Members Row -->
        <div class="row">
<!--             <div class="col-lg-12"> -->
<!--                 <h2 class="page-header">Our Team</h2> -->
<!--             </div> -->
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="/Employee/img/members/chris.jpg" alt="">
                <h3> Chris River
                    <small> High ranker leader</small>
                </h3>
                <p> Harder! Push yourself! Go to the top! </p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="/Employee/img/members/leejh1.jpg" alt="">
                <h3>Lee, ji-hoon
                    <small> Programmer (Strong supporter)</small>
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="/Employee/img/members/leedh1.png" alt="">
                <h3> Lee, da-hye
                    <small> UI & Talking</small>
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="/Employee/img/members/shinsd1.jpg" alt="">
                <h3> Shin, su-dong
                    <small>Programmer (DB,spring etc)</small>
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="/Employee/img/members/imjh.png" alt="">
                <h3> Im, jae-ho
                    <small> Programmer (spring,UI) </small>
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="/Employee/img/members/kej1.jpg" alt="">
                <h3> Kwak, eun-jin
                    <small> Programmer (UI & DB) </small>
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
            
            
            
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="/Employee/img/members/zombie.jpg" alt="">
                <h3> Nobody
                    <small> Nothing to do having no will </small>
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
        </div>

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Golden River Investment</p>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->



</body>

</html>
