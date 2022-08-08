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
    <link rel="stylesheet" href="<%= contextPath %>/resources/css/style.css" type="text/css"> 
     
    <style>
    
     
        @import url('https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css');
        
        * {
		font-family: 'NanumSquare';
		}
       .login-btn{font-size:13px; color:#393939;}
       .login-btn:hover{color:gray;}

        .menuhere a{
            font-size: 18px !important;
        }

        .carthere a{
            font-size: 15px !important;
        }

        .carthere ul li{margin-top: 6%;}


        .container{
            width: 100% !important;
        }

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
    <!-- 화면 전체 비율 조정하려고 클래스명 수정했음 !!!! -->
        <div class="container">
            <div class="row">


                <!-- 로고 -->
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="<%=contextPath %>"><img src="<%= contextPath %>/resources/images/로고6.png"></a>
                    </div>
                </div>


                <!-- 카테고리 -->
                <div class="col-lg-6">
                    <nav class="header__menu menuhere">
                        <ul>
                            <li class="active"><a href="<%=contextPath %>/list.pd"><b>카테고리</b></a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="<%=contextPath%>/list.pd">패션 여성</a></li>
                                    <li><a href="<%=contextPath %>/list2.pd">라이프 인테리어</a></li>
                                    <li><a href="<%=contextPath %>/list3.pd">문화 예술</a></li>
                                    <li><a href="./blog-details.html">여행 취미</a></li>
                                    <li><a href="./blog-details.html">시사 경제</a></li>
                                    <li><a href="./blog-details.html">교육 과학</a></li>
                                </ul>
                            </li>
                            <li><a href="<%=contextPath%>/comu.bo?cpage=1"><b>커뮤니티</b></a></li>
                            
                            <li><a href="<%=contextPath%>/gogoPage.go"><b>고객센터</b></a>
                            	<ul class="header__menu__dropdown">
                                    <li><a href="<%=contextPath%>/list.no?cpage=1">공지사항</a></li>
                                    <li><a href="<%=contextPath%>/list.fq?cpage=1">FAQ</a></li>
                                    
                                    <%if(loginUser == null){ %>
                                    	<!-- alert로 로그인 해야 이용 가능함을 알려주고 로그인 페이지로 이동시켜주기 -->
                                    <%}else{ %>
                                    	<li><a href="<%=contextPath%>/mtmList.go?memNo=<%=loginUser.getMemNo()%>&cpage=1">1:1문의</a></li>
                                    <%} %>
                                    
                                </ul>
                            </li>
                            
                            <li>
                            <%if(loginUser == null){ %>
                            
                               <!-- 로그인 전 상태라면 마이페이지 버튼이 보이지 않도록 변경했음 -->
                                <%-- <a href="<%= contextPath %>/views/member/login.jsp"><b>마이페이지</b></a> --%>
                                
                            <%}else{ %>
                               <a href="<%= contextPath %>/myPage.me?memNo=<%=loginUser.getMemNo()%>"><b>마이페이지</b></a>
                            <%} %>
                            </li>
                        </ul>
                    </nav>
                </div>
                

                <!-- 우측 상단 -->
                <div class="col-lg-3">

               <% if(loginUser == null){ %>
                    <!-- case1. 로그인 전 -->
                    <div class="header__cart carthere">

                        <ul>
                           <li><a href="<%=contextPath%>/loginPage.me" class="login-btn">로그인</a></li>
                           <li><a href="<%=contextPath %>/termsPage.me" class="login-btn">회원가입</a></li>
                            <li id="login-icon"><a href="#"><i class="fa fa-heart" onclick="login();"></i></a></li>
                              <li><a href= "<%=contextPath %>/loginPage.me"><i class="fa fa-shopping-bag"></i></a></li>
                        </ul>
                    </div>

                    <script>
                         function login(){
                            alert("로그인 후 이용 가능한 서비스입니다.");
                        }
                    </script>

               <%} else{ %>
               
                  <%if( loginUser.getMemId().equals("admin1") || loginUser.getMemId().equals("admin2") ) {%>
                  
                     <div class="header__cart carthere">
                              <ul>
                                 <!-- 로그인 한 회원의 이름을 누르면 회원정보 수정 페이지로 넘어가도록 해둠 -->
                                  <li><a href="<%=contextPath %>/mypage.me" style="text-decoration: none; color:black; font-size:13px;"><%=loginUser.getMemName() %> 님</a><li>
                                  <li><a href="<%=contextPath %>/logout.me" style="text-decoration: none; color:darkgrey; font-size:13px;">로그아웃</a></li> 
                                  <li><a href="<%=contextPath%>/views/admin_main/adminMainPage.jsp" style="text-decoration: none; color:black; font-size:15px; font-weight:600">관리자페이지</a></li>
                                  
                                  <%-- <li id="login-icon"><a href="<%=contextPath%>/selectScrap.me"><i class="fa fa-heart"></i></a></li>--%>
                                
                              </ul>
                          </div>
                     
                  
                  <%}else{ %>

                          <!-- case2. 로그인 후 -->
                          <div class="header__cart carthere">
                              <ul>
                                 <!-- 로그인 한 회원의 이름을 누르면 회원정보 수정 페이지로 넘어가도록 해둠 -->
                                  <li><a href="<%=contextPath %>/mypage.me" style="text-decoration: none; color:black; font-size:13px;"><%=loginUser.getMemName() %> 님</a><li>
                                  <li><a href="<%=contextPath %>/logout.me" style="text-decoration: none; color:darkgrey; font-size:13px;">로그아웃</a></li>
                                  &nbsp;
                                  <li id="login-icon"><a href="<%=contextPath%>/selectScrap.me"><i class="fa fa-heart"></i></a></li>
                                  
                                  <li><a href= "<%=contextPath %>/clist.me?memNo=<%=loginUser.getMemNo()%>"><i class="fa fa-shopping-bag"></i></a></li>
                                 
                              </ul>
                          </div>
                          
                       <%} %>
                    
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