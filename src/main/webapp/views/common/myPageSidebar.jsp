<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.leer.member.model.vo.Member"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/style.css" type="text/css">
    <style>
    	 @import url('https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css');
    </style>
</head>
<body>
	<div class="col-lg-3 col-md-5" style="max-width:20%; background-color: #f5f5f5; padding:30px;">
                    <div class="sidebar">
                        <div class="sidebar">
                            <div class="sidebar__item" class="sidebar">
                                <h4 style="font-family:'NanumSquare'; font-weight:800; margin-bottom: 15px; font-size:20px;">나의 주문 관리</h4>
                                <ul>
                                    <li><a href="<%= request.getContextPath() %>/myPage.me?memNo=<%=loginUser.getMemNo()%>">주문 및 배송 조회</a></li>
                                    <li><a href="<%= request.getContextPath() %>/cancle.me?memNo=<%=loginUser.getMemNo()%>">주문취소 / 환불</a></li>
                                </ul>
    
                                <hr>
    
                                <h4 style="font-family:'NanumSquare'; font-weight:800; margin-bottom: 15px; font-size:20px;">장바구니</h4>
                                <ul>
                                	<% if(loginUser == null) { %>
                                		<li><a href="<%= request.getContextPath()%>">장바구니</a></li>
                                	<%}else { %>
                                    	<li><a href="<%= request.getContextPath()%>/clist.me?memNo=<%=loginUser.getMemNo()%>">장바구니</a></li>
                                        <li><a href="<%= request.getContextPath()%>/selectScrap.me">찜목록</a></li>
                                    <% } %>
                                </ul>
    
                                <hr>
    
                                <h4 style="font-family:'NanumSquare'; font-weight:800; margin-bottom: 15px; font-size:20px;">커뮤니티 활동</h4>
                                <ul>
                                    <li><a href="<%=contextPath%>/myBoard.li?memNo=<%=loginUser.getMemNo()%>&cpage=1">내가 쓴 게시글</a></li>
                                </ul>
    
                                <hr>
    
                                <h4 style="font-family:'NanumSquare'; font-weight:800; margin-bottom: 15px; font-size:20px;">나의 혜택 관리</h4>
                                <ul>
                                    <li><a href="<%= request.getContextPath() %>/point.me?memNo=<%=loginUser.getMemNo()%>">적립포인트</a></li>
                                </ul>
    
                                <hr>
    
                                <h4 style="font-family:'NanumSquare'; font-weight:800; margin-bottom: 15px; font-size:20px;">회원 정보</h4>
                                <ul>
                                    <li><a href="<%=request.getContextPath()%>/mypage.me">회원 정보 수정</a></li>
                                    <li><a href="#">회원 탈퇴 신청</a></li>
                                    <li><a href="#">배송지 관리</a></li>
                                </ul>
    
                                <hr>
    
                                <h4 style="font-family:'NanumSquare'; font-weight:800; margin-bottom: 15px; font-size:20px;">상품 리뷰</h4>
                                <ul>
                                    <li><a href="<%= request.getContextPath() %>/myreviewwrite.me?memNo=<%=loginUser.getMemNo()%>">작성 가능한 리뷰</a></li>
                                    <li><a href="<%= request.getContextPath() %>/myreviewhistory.me?memNo=<%=loginUser.getMemNo()%>">작성한 리뷰</a></li>
                                </ul>
    
    
                            </div>    
                        </div>
                    </div>
                
                </div>
</body>
</html>