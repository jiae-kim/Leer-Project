<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.leer.community.model.vo.ComuBoard, com.leer.common.model.vo.Attachment"%>
<%
ComuBoard c = (ComuBoard) request.getAttribute("c");
Attachment at = (Attachment) request.getAttribute("at");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leer</title>

<style>
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

.likeComment {
	margin-left: 10px;
	text-align: center;
	/* position: absolute;
            right:100px;
            top: 135px; */
}

.likeComment span {
	margin-right: 15px;
	font-size: 16px;
}

#iconH:hover {
	cursor: pointer;
}
</style>


</head>
<body>

	<%-- 	<%@ include file="../common/menubar.jsp" %> --%>

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-left">
					<div class="breadcrumb__text">
						<h2>커뮤니티</h2>
						<div class="breadcrumb__option">
							<span>게시글 상세페이지</span>
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
							<a href="<%=contextPath%>/comu.bo?cpage=1"><%=c.getCategoryNo()%>
								목록으로 ></a>
						</div>
						<div style="height: 30px;">
							<input type="hidden" name="no" value="<%=c.getComuNo()%>">
							<h4><%=c.getTitle()%></h4>
						</div>

					</div>
					<div class="userInfo">
						<img
							src="https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_70.png"
							width="36" height="36" alt="프로필사진" class="profileImg">
						<div class="userNickname">
							<div class="nick">
								<span><%=c.getMemNo()%></span>
							</div>
							<div class="create">
								<span class="date"><%=c.getEnrollDate()%></span> <span
									class="count"><b>조회수 : <%=c.getViewCount()%></b></span>
									<a href="" class="boardReport" style="margin-left:5px"><span>신고</span></a>
							</div>
						</div>
					</div>
				</div>

				<div class="detailbody">
					<div class="imgBox">
						<img
							src="https://images.pexels.com/photos/1525041/pexels-photo-1525041.jpeg?cs=srgb&dl=pexels-francesco-ungaro-1525041.jpg&fm=jpg"
							alt="게시글사진" class="boardImg"> <img
							src="https://images.pexels.com/photos/1525041/pexels-photo-1525041.jpeg?cs=srgb&dl=pexels-francesco-ungaro-1525041.jpg&fm=jpg"
							alt="게시글사진" class="boardImg">
					</div>
					<p>
						<%=c.getContent()%></p>

					<%
					if (c.getTag() != null) {
						String[] tagArr = c.getTag().split(","); // ["패션", "라이프"]

						for (String tag : tagArr) {
					%>

					<a class="hashtag" href="<%=contextPath%>/xxxxx?tag=<%=tag%>"
						style="display: inline"><%=tag%></a>
					<!-- 댓글수 구하는 구문 찾아보기  -->

					<%
					}
					%>
					<%
					}
					%>
				</div>
				<script>
				
					var tag = document.getElementById(tag).split(',');
					document.getElementById(tag).innerHTML;
				</script>

				<div class="boardTag">
					<div class="likeComment">
						<i class="fa fa-heart-o" id="iconH"></i> <span><%=c.getLikeCount()%></span>
						<i class="fa fa-comment-o" id="iconC"></i><span
							style="margin-left: 5px"><%=c.getCommentCount()%></span>
					</div>
				</div>
				<div class="detailComment">
					<ul>
						<li>
							
						</li>
					</ul>
				</div>


				<%
				if (loginUser == null) { //로그인 안되어있을 경우
				%>
				<div class="comment-area">
					<div class="writeComment">
						<textarea rows="1" id="replyContent"
							placeholder="로그인 후 작성이 가능합니다." onkeydown="resize(this)"
							onkeyup="resize(this)" disabled></textarea>
						<button disabled>등록</button>
					</div>
				</div>
				<%
				} else {
				%>
				<div class="comment-area">
					<div class="writeComment">
						<strong class="commentWriter"><%=loginUser.getNickname()%></strong>
						<textarea rows="1" id="replyContent" placeholder="댓글을 남겨보세요"
							onkeydown="resize(this)" onkeyup="resize(this)"></textarea>
						<button onclick="insertReply()">등록</button>
					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>

	<script>
		function resize(obj) {
			obj.style.height = '1px';
			obj.style.height = (12 + obj.scrollHeight) + 'px';
		}
		
		$(function(){ 
			selectReplyList();
			
			setInterval(selectReplyList, 1000);
		})
		
		function insertReply(){
			$.ajax({
				url:"<%=contextPath%>/rinsert.bo",
				data:{
					content:$("#replyContent").val(),
					no:<%=c.getComuNo()%>
				},
				type:"post",
				success:function(result){
					if(result > 0){
						selectReplyList();
						$("#replyContent").val("");
					}
				}, error:function(){
					console.log("댓글 작성용 ajax통신 실패");
				}
			})
		}
		
		function selectReplyList(){
			$.ajax({
				url:"<%=contextPath%>
		/rlist.bo",
						data : {
							no :
	<%=c.getComuNo()%>
		},
						success : function(list) {
							let value = "";
							for (let i = 0; i < list.length; i++) {
								value += "<div class='commentList'>"
										+ "<img src='https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_70.png' width='36' height='36' alt='프로필사진' class='profileImg2'>"
										+ "<div class='userNickname'>"
										+ "<div class='nick2'>" + "<span>"
										+ list[i].memNo + "</span>" + "</div>"
										+ "<div style='height: 40px;'>"
										+ "<span class='date'>"
										+ list[i].enrollDate + "</span>"
										+ "</div>" + "<div class='comment'>"
										+ "<span>" + list[i].commContent
										+ "</span>" + "</div>" + "</div>"
										+ "</div>";
							}
							$(".detailComment li").html(value);
						},
						error : function() {
							console.log("댓글목록 조회용 ajax 통신 실패")
						}
					})
		}
	</script>
	<%@ include file="../community/comuMypage.jsp"%>

</body>
</html>