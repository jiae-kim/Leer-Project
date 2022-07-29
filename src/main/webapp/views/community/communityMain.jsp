<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.leer.common.model.vo.PageInfo, java.util.ArrayList, com.leer.community.model.vo.ComuBoard" %>
<%
	//String contextPath = request.getContextPath();
 
   PageInfo pi = (PageInfo)request.getAttribute("pi");
   ArrayList<ComuBoard> list = (ArrayList<ComuBoard>)request.getAttribute("list");

   int currentPage = pi.getCurrentPage();
   int startPage = pi.getStartPage();
   int endPage = pi.getEndPage();
   int maxPage = pi.getMaxPage();
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

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
</head>
<body>

 <%@ include file="../common/menubar.jsp" %> 
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/elegant-icons.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/nice-select.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/jquery-ui.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/owl.carousel.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/slicknav.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/style.css" type="text/css">
	<!-- Breadcrumb Section Begin -->
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
	<!-- Breadcrumb Section End -->

	<!-- Blog Section Begin -->
	<section class="blog spad" style="margin-left: 50px">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-5">
					<div class="blog__sidebar">
						<div class="sidebar__item">
							<p style="font-size: small;">카테고리</p>
							<ul>
								<li><a href="#">전체게시글</a></li>
								<li><a href="#">패션/여성</a></li>
								<li><a href="#">라이프/인테리어</a></li>
								<li><a href="#">시사/경제</a></li>
								<li><a href="#">교육/과학</a></li>
								<li><a href="#">문화/예술</a></li>
								<li><a href="#">여행/취미</a></li>
							</ul>
							<p style="font-size: small;" id="noti">leer이야기</p>
							<ul>
								<li><a href="#">커뮤니티 공지사항</a></li>
								<li><a href="#">내가 쓴 게시글</a></li>
								<li><a href="#">북마크 목록</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-7" style="padding-left: 50px">
					<div class="blog__sidebar__search">
						<form action="#">
							<input type="text" placeholder="태그 또는 키워드를 입력하세요...">
							<button type="submit">검색</button>
						</form>
					</div>
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="blog__item__text" align="left">
									<h5 style="margin-bottom: -10px;">
										<a href="#">여기는 게시글 제목쓰는곳</a>
									</h5>
									<span style="font-size: 12px">2022/07/20</span> <a
										class="hashtag" href="" style="display: inline">#보그</a> <a
										class="hashtag" href="" style="display: inline">#후기</a> <a
										class="hashtag" href="" style="display: inline">#추천</a>
									<p>여기는 게시글 미리보기입니다. 여기는 게시글 미리보기입니다. 여기는 게시글 미리보기입니다. 여기는
										게시글 미리보기입니다. 여기는 게시글 미리보기입니다. 여기는 게시글 미리보기입니다.여기는 게시글 미리보기입니다.
										여기는 게시글 미리보기입니다. 여기는 게시글 미리보기입니다. 여기는 게시글 미리보기입니다. 여기는 게시글
										미리보기입니다. 여기는 게시글 미리보기입니다.</p>
									<div>
										<div style="float: left">
											<a href="#" class="blog__btn">더보기 <span
												class="arrow_right"></span></a>
										</div>
										<div style="float: right">
											<i class="fa fa-heart-o"> <sup>123</sup>
											</i> <i class="fa fa-comment-o"> <sup>456</sup>
											</i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-12">
						<div class="product__pagination blog__pagination">
							<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><i
								class="fa fa-long-arrow-right"></i></a>
						</div>
					</div>
				</div>
				
				<div class="col-bj-1 blog__sidebar__item">
					<div class="myPageList">
						<div id="myPage" style="display: block;">
							<div class="box-g">
								<h4 class="">나의활동</h4>
								<div class="myList">
									<ul>
										<li title="" id="profile">
											<div class="profileNic">
												<img
													src="https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_70.png"
													width="58" height="58" alt="프로필사진" class="imgChange">
												<strong>밤톨이님</strong>

											</div>
										</li>

										<li class="myBoard"><span class=""><strong
												class=""><a href="">내가 쓴 글</a></strong></span> <a href="" class="">49</a><span>개</span>
										</li>

										<li class="myComment"><span class=""><strong
												class=""><a href="">내가 좋아요 한 글</a></strong></span> <a href=""
											class="">49</a><span>개</span></li>
									</ul>
								</div>
							</div>
							<div class="writeBoard" align="center">
								<button class="write">글쓰기</button>
							</div>
						</div>
					</div>
					
					<div class="bestTag">
						<p>인기태그</p>
						<div class="blog__sidebar__item__tags">
							<a href="#">공유</a> <a href="#">후기</a> <a href="#">부록</a> <a
								href="#">추천</a> <a href="#">질문</a> <a href="#">보그</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->

	 <%@ include file="../common/footer.jsp" %>
	 
	 
	<!-- Js Plugins -->
	<script src="<%=contextPath%>/resources/js/beomjin/js/jquery-3.3.1.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/bootstrap.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/jquery.nice-select.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/jquery-ui.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/jquery.slicknav.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/mixitup.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/owl.carousel.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/main.js"></script>

</body>
</html>