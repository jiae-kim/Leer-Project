<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="<%= contextPath %>/resources/css/heeyeong/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<%= contextPath %>/resources/css/heeyeong/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%= contextPath %>/resources/css/heeyeong/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<%= contextPath %>/resources/css/heeyeong/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<%= contextPath %>/resources/css/heeyeong/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="<%= contextPath %>/resources/css/heeyeong/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%= contextPath %>/resources/css/heeyeong/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%= contextPath %>/resources/css/heeyeong/style.css" type="text/css">
    <style>
    	.login-btn{font-size:13px; color:#393939;}
    	.login-btn:hover{color:gray;}
    </style>
</head>

<body>
    <header class="header">
        
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="../../index.jsp"><img src="<%= contextPath %>/resources/images/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <!--  <li><a href="./index.html"><b>홈</b></a></li>-->
                            <li class="active"><a href="<%=contextPath %>/views/product/productCategory.jsp"><b>카테고리</b></a></li>
                            <li><a href="#"><b>커뮤니티</b></a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="./blog.html"><b>고객센터</b></a></li>
                            <li><a href="./contact.html"><b>마이페이지</b></a></li>
                        </ul>
                    </nav>
                </div>
                
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                        	<li><a href="#" class="login-btn">로그인</a></li>
                        	<li style="font-size:12px">|</li> 
                        	<li id="login-icon"><a href="" class="login-btn">회원가입</a></li>
                            <li id="login-icon"><a href=""><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    
     <!-- Js Plugins -->
    <script src="<%=contextPath %>/resources/js/jquery-3.3.1.min.js"></script>
    <script src="<%=contextPath %>/resources/js/bootstrap.min.js"></script>
    <script src="<%=contextPath %>/resources/js/jquery.nice-select.min.js"></script>
    <script src="<%=contextPath %>/resources/js/jquery-ui.min.js"></script>
    <script src="<%=contextPath %>/resources/js/jquery.slicknav.js"></script>
    <script src="<%=contextPath %>/resources/js/mixitup.min.js"></script>
    <script src="<%=contextPath %>/resources/js/owl.carousel.min.js"></script>
    <script src="<%=contextPath %>/resources/js/main.js"></script>
    
    </body>
</html>