<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.leer.member.model.vo.Member, com.leer.common.model.vo.*, java.util.ArrayList, com.leer.notice.model.vo.Notice"%>
 <%
 	Attachment at = (Attachment)request.getAttribute("at");
	Notice n = (Notice)request.getAttribute("n");
	ArrayList<Category> cateList = (ArrayList<Category>)request.getAttribute("cateList"); 
	Member m = (Member)request.getAttribute("m");
 %>
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
.create {
	font-size: 12px;
	line-height: 13px;
}

.boardReport {
	font-size: 12px;
	color: red;
}

.nick2 span {
	font-size: 12px;
	vertical-align: middle;
}

.date {
	font-size: 12px;
}

.nick2 span:hover {
	cursor: pointer;
}

div {
	display: block;
}

.userNickname button {
	margin-right: 6px;
	font-size: 13px;
	font-weight: 700;
	cursor: pointer;
	border: 0;
	background: none;
	margin: 0;
	padding: 0;
}

.profileImg {
	float: left;
	margin-top: 15px;
	margin-right: 12px;
}

.profileImg2 {
	float: left;
	margin-top: 15px;
	margin-right: 12px;
}

.nick {
	height: 40px;
}

.nick2 {
	height: 20px;
}

.mainBoard {
	width: 700px;
	border: 1px solid rgba(85, 85, 85, 0.2);
	border-radius: 7px;
}

.detailHead {
	margin-left: 35px;
	margin-top: 20px;

}

.detailbody {
	padding-top: 20px;
		height:500px;
	/* padding-left: 30px;
            padding-right: 30px; */
	margin: 30px 30px 0px 30px;
	border-top: 1px solid rgba(87, 87, 87, 0.3);
	border-bottom: 1px solid rgba(87, 87, 87, 0.3);
}

.detailComment {
	margin-bottom: 20px;
}

.boardList a {
	font-weight: bold;
	color: #878787;
	font-size: 12px;
}

.boardList {
	height: 40px;
}

.hashtag {
	
	display: inline;
	color: #1c1c1c;
	padding:2px;
	background-color: rgb(221, 221, 221);
	border-radius: 3px;
	margin-left: 5px;
}

.boardTag {
	margin: 15px 30px 0px 30px;
	border-bottom: 1px solid rgba(87, 87, 87, 0.3);
}

#replyContent {
	resize: none;
	width: 90%;
	border: none;
	font-size: 13px;
	font-weight: 700;
	display: block;
	margin: 0px 15px 0px;
	min-height: 5rem;
	overflow-y: hidden;
	resize: none;
}

/* .writeComment{
            box-sizing: border-box;
        } */
.writeComment button {
	border: none;
	line-height: 40px;
	background-color: white;
	font-size: 14px;
	color: rgba(87, 87, 87, 0.9);
	position: absolute;
	right: 71px;
	bottom: 28px;
}

.comment {
	font-size: 14px;
	margin-bottom: 10px;
	line-height: 30px;
	/* border: 1px solid black; */
}

.commentList {
	margin: 0px 35px 0px 35px;
	border-bottom: 1px solid rgba(87, 87, 87, 0.3);
}

.commentWriter {
	display: block;
	font-size: 13px;
	line-height: 40px;
	margin: 0px 15px 0px;
}

.comment-area {
	margin: 15px 10px 20px 17px;
	width: 95%;
	border: 1px solid rgba(87, 87, 87, 0.6);;
	border-radius: 5px;
}

li {
	list-style: none;
}

.imgBox {
	margin-bottom: 10px;
}

.boardImg {
	display: block;
	margin: auto;
	max-width: 90%;
	max-height: auto;
	margin-bottom: 5px;
}
	.selectBoard button{
		border: 1px solid #878787;
		line-height:30px;
		font-size:14px;
		background: white;
		border-radius:4px;
		color:#878787;
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
							<input type="hidden" name="no" value="<%=n.getNotiNo()%>">
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
							</div>
						</div>
					</div>
				</div>

				<div class="detailbody">
					<div class="imgBox">
					</div>
					<p><%=n.getContent()%></p>
				</div>
				<div class="selectBoard" align="center">
				<button type="button" onclick="location.href='<%=contextPath %>/comu.bo?cpage=1'">커뮤니티 메인으로</button>
				<button type="button" onclick="location.href='<%=contextPath %>/comuNoti.li?cpage=1'">공지사항 목록으로</button>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../community/comuMypage.jsp"%>
</body>
</html>