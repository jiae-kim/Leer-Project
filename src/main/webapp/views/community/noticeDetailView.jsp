<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.blog__item__text:hover{
		cursor:pointer;
		
	}
	.hashtag {
	
	display: inline;
	color: #1c1c1c;
	padding:2px;
	background-color: rgb(221, 221, 221);
	border-radius: 3px;
	margin-left: 5px;
	}
	.col-lg-12 button{
		line-height:20px;
		border: 1px solid black;
		background: #870000;
		color:white;
		font-weight:bold;
	}
	.stmxBtn{
		background:gray;
	}
	
</style>
</head>
<body>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-left">
					<div class="breadcrumb__text">
						<h2>커뮤니티</h2>
						<div class="breadcrumb__option">
							<span>공지사항 상세페이지</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->


	<%@ include file="../community/communityMain.jsp"%>
	<div class="col-lg-8 col-md-7">
		<div class="row">
			<div class="mainBoard">
				<div class="detailHead">
					<div class="detailTitle">
						<div class="boardList">
							<a href="<%=contextPath%>/comuNoti.li?cpage=1">목록으로</a>
						</div>
						<div style="height: 30px;">
							<input type="hidden" name="no" value="<%=n.getComuNo()%>">
							<h4><%=n.getTitle()%></h4>
						</div>

					</div>
					<div class="userInfo">
						<img
							src="https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_70.png"
							width="36" height="36" alt="프로필사진" class="profileImg">
						<div class="userNickname">
							<div class="nick">
								<span><%=n.getMemNo()%></span>
							</div>
							<div class="create">
								<span class="date"><%=n.getEnrollDate()%></span> <span
									class="count"><b>조회수 : <%=n.getNotiViews()%></b></span>
									<a href="" class="boardReport" style="margin-left:5px"><span>신고</span></a>
							</div>
						</div>
					</div>
				</div>

				<div class="detailbody">
					<div class="imgBox">
					</div>
					<p><%=n.getContent()%></p>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../community/comuMypage.jsp"%>
</body>
</html>