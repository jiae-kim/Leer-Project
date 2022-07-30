<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.leer.common.model.vo.PageInfo, java.util.ArrayList, com.leer.community.model.vo.ComuBoard, com.leer.member.model.vo.Member" %>
<%
 /*  PageInfo pi = (PageInfo)request.getAttribute("pi"); */
  ArrayList<ComuBoard> list = (ArrayList<ComuBoard>)request.getAttribute("list");
  Member loginUser = (Member)session.getAttribute("loginUser");
 /*  int currentPage = pi.getCurrentPage();
  int startPage = pi.getStartPage();
  int endPage = pi.getEndPage();
  int maxPage = pi.getMaxPage();  */
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>LEER</title>

</head>
<body>
    <%@ include file="../common/menubar.jsp"%> 
    
    <section class="breadcrumb-section set-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-left">
                    <div class="breadcrumb__text">
                        <h2>커뮤니티</h2>
                        <div class="breadcrumb__option">
                            <span>전체게시글</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="../community/communityMain.jsp"%>
	
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/elegant-icons.css" type="text/css">
	<%-- <link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/nice-select.css" type="text/css"> --%>
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/jquery-ui.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/owl.carousel.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/slicknav.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/style.css" type="text/css">
	
		<div class="col-lg-8 col-md-7" style="padding-left: 50px">
			<div class="blog__sidebar__search">
				<form action="#">
					<input type="text" placeholder="태그 또는 키워드를 입력하세요...">
					<button type="submit">검색</button>
				</form>
			</div>
			
		<% for(ComuBoard b : list) { %>
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="blog__item"> 
						<div class="blog__item__text" align="left">
							<h5 style="marin-bottom: -10px;">
								<a href="#"><%= b.getTitle() %></a>
							</h5>
							<span style="font-size: 12px"><%=b.getEnrollDate() %></span>
							<a class="hashtag" href="#" style="display: inline"><%= b.getTag() %></a> <!-- 댓글수 구하는 구문 찾아보기  -->
							<p><%=b.getContent()%></p>
							<div>
								<div style="float: right">
									<i class="fa fa-heart-o"> <sup>123</sup>
									</i> <i class="fa fa-comment-o"> <sup><%= b.getViewCount() %></sup>
									</i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<% } %>

			<%-- <div class="col-lg-12">
				<div class="product__pagination blog__pagination">
					<% if(currentPage != 1){ %>
            			<button onclick="location.href='<%=contextPath%>/list.bo?cpage=<%=currentPage-1%>';">&lt;</button>
		            <% } %>
		            
		         	<% for(int p=startPage; p<=endPage; p++) {%>
		         
			            <% if(p == currentPage){ %>
	            			<button disabled><%= p %></button>
	            		<% }else { %>
	              			 <button onclick="location.href='<%=contextPath%>/list.bo?cpage=<%= p %>';"><%= p %></button>
	              		<% } %>
          		   <% } %>
         
		         <% if(currentPage != maxPage){ %>
		            <button onclick="location.href='<%=contextPath%>/list.bo?cpage=<%=currentPage+1%>';">&gt;</button>
		            <% } %>
				</div>
			</div> --%>
		</div>
	 <%@ include file="../community/comuMypage.jsp" %>
	 <%@ include file="../common/footer.jsp" %>
	 
	
	 
	<script src="<%=contextPath%>/resources/js/beomjin/js/jquery-3.3.1.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/bootstrap.min.js"></script>
	<%-- <script src="<%=contextPath%>/resources/js/beomjin/js/jquery.nice-select.min.js"></script> --%>
	<script src="<%=contextPath%>/resources/js/beomjin/js/jquery-ui.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/jquery.slicknav.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/mixitup.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/owl.carousel.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/main.js"></script>
	 
</body>
</html>