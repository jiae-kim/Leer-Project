<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.ArrayList, com.leer.notice.model.vo.Notice, com.leer.common.model.vo.PageInfo"%>

<%
PageInfo pi = (PageInfo) request.getAttribute("pi");
Notice n = (Notice) request.getAttribute("notice");

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
#listBody tr:hover {
	background-color: rgba(231, 231, 231, 0.349);
	cursor: pointer;
}

#div-bfBtn{
	text-align:center;
}
#bfBtn {
	border: none;
	border-radius: 5px;
	margin-top: 50px;
	width: 100px;
	height: 40px;
	line-height: 40px;
	
}

.go-wrap button:hover {
	background-color: rgba(211, 211, 211, 0.507);
	cursor: pointer;
}

#detail-area th{
	text-align:center;
	vertical-align:middle;
	background-color: rgb(241, 241, 241);
	
}
#detail-area {
	border:solid rgba(211, 211, 211, 0.507) 1px;
	
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
			<div class="row" class="go-wrap">
				<div class="col-lg-3 col-md-5">
					<div class="sidebarr">
						<div class="sidebar__item">
							<h4>고객센터</h4>
							<ul>
								<li><a href="<%=contextPath%>/list.no?cpage=1">공지사항</a></li>
								<li><a href="<%=contextPath%>/list.fq?cpage=1">FAQ</a></li>
								<li><a href="<%=contextPath %>/mtmList.go?memNo=<%=loginUser.getMemNo()%>&cpage=1">1대1 문의</a></li>
							</ul>
						</div>

					</div>
				</div>
				<div style="width: 70%">
					<label style="font-size: 25px; font-weight: 600; height: 20px;">공지사항
						</label> <br> <br>

					
					<table class="table" id="detail-area"  align="center">
						<tr>
							
							<th width="70">제목</th>
							<td width="350"><%=n.getTitle()%></td>
						</tr>
						<tr>
							
							<th>작성일</th>
							<td><%=n.getEnrollDate()%></td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="3"  style="height:500px" >
								<p><%=n.getContent()%></p>
							</td>
						</tr>
						
					</table>
					
					<div id="div-bfBtn">
					
					<a class="btn" style="background-color:gray; color:white" href="<%=contextPath %>/list.no?cpage=1">이전으로</a>
					</div>
				</div>
				


			</div>
			
				
		</div>
		
	</section>
	<!-- Product Section End -->


	

	<br>
	<br>

	<%@ include file="../common/footer.jsp"%>

</body>
</html>