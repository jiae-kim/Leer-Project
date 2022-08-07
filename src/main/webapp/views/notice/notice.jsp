<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.ArrayList, com.leer.notice.model.vo.Notice, com.leer.common.model.vo.PageInfo"%>

<%
PageInfo pi = (PageInfo) request.getAttribute("pi");
ArrayList<Notice> list = (ArrayList<Notice>) request.getAttribute("list");
int currentPage = pi.getCurrentPage();
int startPage = pi.getStartPage();
int endPage = pi.getEndPage();
int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Css Styles -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/heeyeong/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/heeyeong/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/heeyeong/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/heeyeong/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/heeyeong/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/heeyeong/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/heeyeong/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/heeyeong/style.css"
	type="text/css">

  
    <style>
     @import url('https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css');
    </style>
   

<style>
#list-area tr:hover {
	background-color: rgba(231, 231, 231, 0.349);
	cursor: pointer;
}


#list-area button {
	border: none;
	border-radius: 5px;
	margin-top: 50px;
	width: 100px;
	height: 40px;
	line-height: 40px;
	float: right;
}

#list-area button:hover {
	background-color: rgba(211, 211, 211, 0.507);
	cursor: pointer;
}
</style>

</head>
<body>

	<%@ include file="../common/menubar.jsp"%>

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		style="background-image:url(<%=contextPath%>/resources/images/productCategory/lifestyle.jpg)">
		<div class="container">
			<div class="row">
				<div class="col-lg-12" style="text-align: left;">
					<div class="breadcrumb__text">
						<h2 style="font-size: 35px">고객센터</h2>
						<div class="breadcrumb__option">

							<span>공지사항</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->



	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="sidebarr">
						<div class="sidebar__item">
							<h4>고객센터</h4>
							<ul>
								<li><a href="<%=contextPath%>/list.no?cpage=1">공지사항</a></li>
								<li><a href="<%=contextPath%>/list.fq?cpage=1">FAQ</a></li>
								<li><a href="<%=contextPath%>/mtmList.go?memNo=<%=loginUser.getMemNo() %>&cpage=1">1대1 문의</a></li>
							</ul>
						</div>

					</div>
				</div>
				<div style="width: 70%">
					<label style="font-size: 25px; font-weight: 600; height: 20px;">공지사항</label>
					<br> <br>
					<table class="table" style="width: 100%" id="list-area">
						<thead>
							<tr>
								<th width=120 style="text-align: center">글번호</th>
								<th style="text-align: center">제목</th>
								<th style="text-align: center">등록일</th>

							</tr>
						</thead>
						<tbody>
							<%
							if (list.isEmpty()) {
							%>
							<tr>
								<td colspan="2">조회된 게시글이 없습니다.</td>
							</tr>
							<%
							} else {
							%>
							<!--case2. 게시글이 있을경우-->
							<%
							for (Notice n : list) {
							%>
							<tr>
								<td width=300 style="text-align: center"><%=n.getNotiNo()%></td>
								<td width=2000><%=n.getTitle()%></td>
								<td width=300><%=n.getEnrollDate()%></td>
							</tr>
							<%
							}
							%>
							<%
							}
							%>
						</tbody>

					</table>

					<script>
			        	$(function(){
			        		$("#list-area>tbody>tr").click(function(){
			        			location.href = "<%=contextPath%>/detail.no?no=" + $(this).children().eq(0).text();
							})
						})
					</script>
				</div>


			</div>
		</div>
	</section>
	<!-- Product Section End -->


	<div class="product__pagination blog__pagination" align="center">

		<%
		if (currentPage != 1) {
		%>
		<a
			href="<%=contextPath%>/list.no?memNo=<%=loginUser.getMemNo()%>&cpage=<%=currentPage - 1%>">&lt;</a>
		<%
		}
		%>


		<%
		for (int p = startPage; p <= endPage; p++) {
		%>
		<%
		if (p == currentPage) {
		%>
		<a id="aBtn" disabled style="opacity: 0.7"><%=p%></a>
		<%
		} else {
		%>
		<a
			href="<%=contextPath%>/list.no?memNo=<%=loginUser.getMemNo()%>&cpage=<%=p%>"><%=p%></a>
		<%
		}
		%>
		<%
		}
		%>


		<%
		if (currentPage != maxPage) {
		%>
		<a
			href="<%=contextPath%>/list.no?memNo=<%=loginUser.getMemNo()%>&cpage=<%=currentPage + 1%>">&gt;</a>
		<%
		}
		%>
	</div>

	<br>
	<br>

	<%@ include file="../common/footer.jsp"%>

</body>
</html>