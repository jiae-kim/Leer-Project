<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.leer.member.model.vo.Member"%>
<%
	String contextPath = request.getContextPath();

	Member loginUser = (Member)session.getAttribute("loginUser");
	
	String alertMsg = (String)session.getAttribute("alertMsg");
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
</head>

<body>


	<% if(alertMsg != null){ %>
		<script>
			alert("<%=alertMsg%>");
		</script> 
		<% session.removeAttribute("alertMsg"); %>
	<%} %>
	
	
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="<%=contextPath %>"><img src="<%= contextPath %>/resources/images/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="<%=contextPath %>/list.pd"><b>카테고리</b></a>
                            	 <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">패션 여성</a></li>
                                    <li><a href="./shoping-cart.html">라이프 인테리어</a></li>
                                    <li><a href="./checkout.html">문화 예술</a></li>
                                    <li><a href="./blog-details.html">여행 취미</a></li>
                                    <li><a href="./blog-details.html">시사 경제</a></li>
                                    <li><a href="./blog-details.html">교육 과학</a></li>
                                </ul>
                            </li>
                            <li><a href="<%=contextPath%>/comu.bo?cpage=1"><b>커뮤니티</b></a></li>
                            
                            <li><a href="./blog.html"><b>고객센터</b></a></li>
                            
                            <li>
                            <%if(loginUser == null){ %>
                                <a href="<%= contextPath %>/views/member/login.jsp"><b>마이페이지</b></a>
                            <%}else{ %>
                            	<a href="<%= contextPath %>/myPage.me?memNo=<%=loginUser.getMemNo()%>"><b>마이페이지</b></a>
                            <%} %>
                            </li>
                        </ul>
                    </nav>
                </div>
                
                <div class="col-lg-3">

					<% if(loginUser == null){ %>
                    <!-- case1. 로그인 전 -->
                    <div class="header__cart">

                        <ul>
                        	<li><a href="<%=contextPath%>/loginPage.me" class="login-btn">로그인</a></li>
                            &nbsp;
                        	<li id="login-icon"><a href="<%=contextPath %>/termsPage.me" class="login-btn">회원가입</a></li>
                            <li id="login-icon"><a href=""><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                        </ul>
                    </div>

					<%} else{ %>

                    <!-- case2. 로그인 후 -->
                    <div class="header__cart">
                        <ul>
                        	<!-- 로그인 한 회원의 이름을 누르면 회원정보 수정 페이지로 넘어가도록 해둠 -->
                            <li><a href="<%=contextPath %>/mypage.me" style="text-decoration: none; color:black; font-size:13px;"><%=loginUser.getMemName() %> 님</a><li>
                            <li><a href="<%=contextPath %>/logout.me" style="text-decoration: none; color:darkgrey; font-size:13px;">로그아웃</a></li>
                            &nbsp;
                            <li id="login-icon"><a href=""><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                        </ul>
                    </div>
                    
                    <% } %>

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