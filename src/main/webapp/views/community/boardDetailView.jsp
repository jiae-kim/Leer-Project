<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.leer.member.model.vo.Member, com.leer.community.model.vo.ComuBoard, com.leer.common.model.vo.Attachment, com.leer.common.model.vo.Category, java.util.ArrayList"%>
<%
ComuBoard c = (ComuBoard) request.getAttribute("c");
Attachment at = (Attachment) request.getAttribute("at");
ArrayList<Category> cateList = (ArrayList<Category>)request.getAttribute("cateList"); 
Member m = (Member)request.getAttribute("m");
int comuNo = (int)request.getAttribute("comuNo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leer</title>

<style>

	
	.blog__sidebar__search form {
	position: relative !important;
}

.blog__sidebar__search form input {
	width: 600px !important;
	height: 46px !important;
	font-size: 16px !important;
	color: #6f6f6f !important;
	padding-left: 15px !important;
	border: 1px solid #e1e1e1 !important;
	border-radius: 5px !important;
	
}

.blog__sidebar__search form button {
	font-size: 16px !important;
	color: #ffffff !important;
	background: #898989 !important;
	border: none !important;
	border-radius: 5px !important;
	position: absolute !important;
	margin-left: 5px !important;
	right: 25px !important;
	top: none !important; 
	height: 100% !important;
	padding: 0px 20px !important;

}
.row{
    display: -ms-flexbox !important; 
    display: flex !important;
    -ms-flex-wrap: none !important; 
    flex-wrap: none !important;  
    margin-right: -15px !important;
    margin-left: -15px !important;
}
.breadcrumb__text h2 {
	font-size: 35px  !important;
	color: #ffffff !important;
	font-weight: 700 !important;
}

.breadcrumb__option a:after {
	position: absolute !important;
	right: -12px !important;
	top: 13px !important;
	height: 1px !important;
	width: 10px !important;
	background: #ffffff !important;
	content: "" !important;
}

.breadcrumb__option span {
	display: inline-block !important;
	font-size: 16px !important;
	color: #ffffff !important;
}

.col-md-7 {
        -ms-flex: 0 0 58.333333% !important;
        flex: 0 0 58.333333% !important;
        max-width: 58.333333% !important;
    }
.col-lg-6 {
        -ms-flex: 0 0 50% !important;
        flex: 0 0 50% !important;
        max-width: 50% !important;
}

 .col-md-6 {
        -ms-flex: 0 0 50% !important;
        flex: 0 0 50% !important;
        max-width: 50% !important;
    }
    .blog__item__text {
	padding-top: 25px !important;
	width: 600px !important;
}
.blog__item__text .blog__btn {
	position: absolute !important;
	display: inline-block !important;
	font-size: 14px !important;
	color: #1c1c1c !important;
	text-transform: uppercase !important;
	letter-spacing: 1px !important;
	padding: 14px 20px 12px !important;
	border-radius: 25px !important;
	bottom: 0 !important;
	left: 0 !important;
}


.blog__item__text .blog__btn span {
	position: relative !important;
	top: 1px !important;
	margin-left: 5px !important;
}

.blog__item__text2 {
	width: 680px v
}

.blog__item__text2 ul {
	margin-bottom: 15px !important;
}
.hashtag{
	display: inline !important;
	color: #1c1c1c !important;
	background-color: rgb(221, 221, 221) !important;
	border-radius: 3px !important;
}
.hashtag:hover{
	cursor: pointer !important;
	color: white !important;
}

.blog__item__text2 ul li {
	font-size: 16px !important;
	color: #b2b2b2 !important;
	list-style: none !important;
	display: inline-block !important;
	margin-right: 15px !important;
}

#noti {
	margin-top: 15px !important;
}

.blog__item__text2 ul li:last-child {
	margin-right: 0 !important;
}

.blog__item__text2 h5 {
	margin-bottom: 12px !important;
}

.blog__item__text2 h5 a {
	font-size: 20px !important;
	color: #1c1c1c !important;
	font-weight: 700 !important;
}


.blog__item__text2 p {
	margin-bottom: 25px !important;
}


.blog__item__text2 .blog__btn {
	position: absolute !important;
	display: inline-block !important;
	font-size: 14px !important;
	color: #1c1c1c !important;
	text-transform: uppercase !important;
	letter-spacing: 1px v
	padding: 14px 20px 12px !important;
	border-radius: 25px !important;
	bottom: 0 !important;
	left: 0 !important;
}

.blog__item__text2 .blog__btn span {
	position: relative !important;
	top: 1px !important;
	margin-left: 5px !important;
}

.blog__pagination {
	padding-top: 5px !important;
	position: relative !important;
}

.blog__pagination:before {
	position: absolute;
	left: 0;
	top: 0;
	height: 1px;
	width: 0% !important;
	background: #000000;
	opacity: 0 !important;
	content: "" !important;
} 

.blog__btn:before{
	position: absolute !important;
	left: 0 !important;
	bottom: 0 !important;
	height: 1px !important;
	width: 630px !important;
	background: #000000 !important;
	opacity: 0.1 !important;
	content: "" !important;
}

.blog__sidebar {
	margin-top: 50px !important;
}

.blog__sidebar__item {
	margin-top: 50px !important;
	max-width: 20% !important;
}

.imgChange:hover{
	cursor: pointer !important;
	background-color: gray !important;
}

.blog__sidebar__item h4 {
	color: #1c1c1c !important;
	font-weight: 700 !important;
	margin-bottom: 25px !important;
}
.myBoard{
	margin-top: 20px !important;
}
#profile{
	margin-bottom:30px !important;
	margin-left:20px !important;
}
#profile strong{
	margin-left: 10px !important;
	font-size: 16px !important;
	color: #828282 !important;
}

#profile strong:hover{
	cursor: pointer !important;
	color: skyblue !important;
}
.myPageList{
	border-top: 1px solid black !important;
	border-bottom: 1px solid black !important;
	height: 260px !important; 
}
#myPage{
	height: 180px !important;
	margin-top: 25px !important;
}
/* .writeBoard{
	margin-bottom: 10px;
	width: 100%;
	background-color: gray;
	border-image-repeat: 5px;
} */
.writeBoard button{
	border: 1px solid black !important;
	color: white !important;
	width: 100% !important;
	background-color: gray !important;
	font-size: 16px !important;
	line-height: 40px !important;
	border-style: none !important;
}
.blog__sidebar__item ul{
	margin-bottom: 20px !important;
}
.blog__sidebar__item ul li {
	list-style: none !important;
	font-size: 12px !important;
	height: 30px !important;
	margin-left: 20px !important;
}
.box-g h4{
	font-size: 12px !important;
	margin: 10px !important;
}
.blog__sidebar__item ul li a {
	font-size: 12px !important;
	color: #666666 !important;
	line-height: 48px !important;
	-webkit-transition: all, 0.3s !important;
	-moz-transition: all, 0.3s !important; 
	-ms-transition: all, 0.3s !important;
	-o-transition: all, 0.3s !important;
	transition: all, 0.3s !important;
}

.blog__sidebar__item ul li a:hover {
	color: #7fad39 !important;
}


.blog__sidebar__search {
	margin: 50px 0px 30px !important;
}

.blog__sidebar__search form {
	position: relative !important;
}

.blog__sidebar__search form input {
	width: 520px !important;
	height: 46px !important;
	font-size: 16px !important;
	color: #6f6f6f !important;
	padding-left: 15px !important;
	border: 1px solid #e1e1e1 !important;
	border-radius: 5px !important;
	
}

.blog__sidebar__search form input::placeholder {
	color: #6f6f6f !important;
}

.blog__sidebar__search form button {
	font-size: 16px;!important
	color: #ffffff !important;
	background: #898989 !important;
	border: none !important;
	border-radius: 5px !important;
	position: absolute !important;
	margin-left: 5px !important;
	right: none !important;
	top: none !important;
	height: 100% !important;
	padding: 0px 20px !important;

}

.blog__sidebar__recent .blog__sidebar__recent__item {
	display: block !important;
}

.blog__sidebar__recent .blog__sidebar__recent__item:last-child {
	margin-bottom: 0 !important;
}

.blog__sidebar__recent__item {
	overflow: hidden !important;
	margin-bottom: 20px !important;
}

.blog__sidebar__recent__item__pic {
	float: left !important;
	margin-right: 20px !important;
}

.blog__sidebar__recent__item__text {
	overflow: hidden !important;
}

.blog__sidebar__recent__item__text h6 {
	font-weight: 700 !important;
	color: #333333 !important;
	line-height: 20px !important;
	margin-bottom: 5px !important;
}

.blog__sidebar__recent__item__text span {
	font-size: 12px !important;
	color: #999999 !important;
	text-transform: uppercase !important;
}

.bestTag{
	margin-top:30px !important;
	max-width: 80% !important;
}

.blog__sidebar__item__tags a {
	font-size: 12px !important;
	color: #6f6f6f !important;
	background: #f5f5f5 !important;
	display: inline-block !important;
	padding: 7px 13px 5px !important;
	margin-right: 6px !important;
	margin-bottom: 10px !important;
}

/*---------------------
  Blog Details Hero
-----------------------*/

.blog-details-hero {
	height: 350px !important;
	display: flex !important;
	align-items: center !important;
}

.blog__details__hero__text {
	text-align: center !important;
}

.blog__details__hero__text h2 {
	font-size: 46px !important;
	color: #ffffff !important;
	font-weight: 700 !important;
	margin-bottom: 10px !important;
}

.blog__details__hero__text ul li {
	font-size: 16px !important;
	color: #ffffff !important;
	list-style: none !important;
	display: inline-block !important;
	margin-right: 45px !important;
	position: relative !important;
}

.blog__details__hero__text ul li:after {
	position: absolute !important;
	right: -26px !important;
	top: 0 !important;
	content: "|" !important;
}

.blog__details__hero__text ul li:last-child {
	margin-right: 0 !important;
}

.blog__details__hero__text ul li:last-child:after {
	display: none !important;
}

/*---------------------
  Blog Details
-----------------------*/

.related-blog {
	padding-top: 70px !important;
	padding-bottom: 10px !important;
}

.related-blog-title {
	margin-bottom: 70px !important;
}

.blog-details {
	padding-bottom: 75px !important;
	border-bottom: 1px solid #e1e1e1 !important;
}

.blog__details__text {
	margin-bottom: 45px !important;
}

.blog__details__text img {
	margin-bottom: 30px !important;
}

.blog__details__text p {
	font-size: 18px !important;
	line-height: 30px !important;
}

.blog__details__text h3 {
	color: #333333 !important;
	font-weight: 700 !important;
	line-height: 30px !important;
	margin-bottom: 30px !important;
}

.blog__details__author__pic {
	float: left !important;
	margin-right: 15px !important; 
}

.blog__details__author__pic img {
	height: 92px !important;
	width: 92px !important;
	border-radius: 50% !important;
}

.blog__details__author__text {
	overflow: hidden !important;
	padding-top: 30px !important;
}

.blog__details__author__text h6 {
	color: #1c1c1c !important;
	font-weight: 700 !important;
}

.blog__details__author__text span {
	font-size: 16px !important;
	color: #6f6f6f !important;
}

.blog__details__widget ul {
	margin-bottom: 5px !important;
}

.blog__details__widget ul li {
	font-size: 16px !important;
	color: #6f6f6f !important;
	list-style: none !important;
	line-height: 30px !important;
}

.blog__details__widget ul li span {
	color: #1c1c1c !important;
	font-weight: 700 !important;
}

.blog__details__widget .blog__details__social a {
	display: inline-block !important;
	font-size: 20px !important;
	color: #6f6f6f !important;
	margin-right: 24px !important;
	-webkit-transition: all, 0.3s;
	-moz-transition: all, 0.3s;
	-ms-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
}

.blog__details__widget .blog__details__social a:hover {
	color: #7fad39 !important;
}

.blog__details__widget .blog__details__social a:last-child {
	margin-right: 0 !important;
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
	width: 650px;
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
	border-top: 1px solid rgba(87, 87, 87, 1);
	border-bottom: 1px solid rgba(87, 87, 87, 1);
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
.updateBoard{
style="margin-left:10px";

}
#iconC{
	float:right;
}
</style>


</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-left">
					<div class="breadcrumb__text">
						<h2><a href="<%=contextPath%>/comu.bo?cpage=1" style="color:white;">커뮤니티</a></h2>
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
							<a href="<%=contextPath%>/cgory.li?cpage=1&cNo=<%=c.getCategoryNo()%>"><%=c.getCategoryName()%>
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
									class="count">조회수 : <%=c.getViewCount()%></span>
								<% if(loginUser != null && loginUser.getNickname().equals(c.getMemNo())) { %>
									<a class="updateBoard" href="<%=contextPath%>/comuUpdateForm.bo?no=<%= comuNo %>" style="color:#878787"><b>게시글 수정하기</b></a>
								<% } else if(loginUser != null && !loginUser.getNickname().equals(c.getMemNo())) { %>
									<a href="" class="boardReport" style="margin-left:5px"><span>신고</span></a>
								<% } %>
							</div>
						</div>
					</div>
				</div>

				<div class="detailbody">
				<!-- 	<div class="imgBox">
						<img
							src="https://images.pexels.com/photos/1525041/pexels-photo-1525041.jpeg?cs=srgb&dl=pexels-francesco-ungaro-1525041.jpg&fm=jpg"
							alt="게시글사진" class="boardImg"> <img
							src="https://images.pexels.com/photos/1525041/pexels-photo-1525041.jpeg?cs=srgb&dl=pexels-francesco-ungaro-1525041.jpg&fm=jpg"
							alt="게시글사진" class="boardImg">
					</div> -->
					<p>
						<%=c.getContent()%></p>

					<%
					if (c.getTag() != null) {
						String[] tagArr = c.getTag().split(","); // ["패션", "라이프"]

						for (String tag : tagArr) {
					%>

					<a class="hashtag" href="<%= contextPath %>/hashTag.bo?cpage=1&tag=<%=tag%>"
						style="display: inline"><%=tag%></a>
					<!-- 댓글수 구하는 구문 찾아보기  -->

					<%
					}
					%>
					<%
					}
					%>
					<div id="iconC">
					
						<i class="fa fa-comment-o" ></i><span
							style="margin-left: 5px"><%=c.getCommentCount()%></span>
					</div>
				</div>
				<script>
				
					var tag = document.getElementById(tag).split(',');
					document.getElementById(tag).innerHTML;
				</script>

				<%-- <div class="boardTag">
					<div class="likeComment">
					
						
						<i class="fa fa-comment-o" id="iconC"></i><span
							style="margin-left: 5px"><%=c.getCommentCount()%></span>
					</div>
				</div> --%>
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
							onkeydown="resize(this)" onkeyup="resize(this)" required></textarea>
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
				data:{ content:$("#replyContent").val(),
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
				url:"<%=contextPath%>/rlist.bo",
				data : { no : <%=c.getComuNo()%> },
			success : function(list) {
				let value = "";
				for (let i = 0; i < list.length; i++) {
					value += "<div class='commentList'>"
								+ "<img src='https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_70.png' width='36' height='36' alt='프로필사진' class='profileImg2'>"
								+ "<div class='userNickname'>"
									+ "<div class='nick2'>" 
									+ "<span>" + list[i].memNo + "</span>" 
									+ "</div>"
									+ "<div style='height: 40px;'>"
									+ "<span class='date'>" + list[i].enrollDate + "</span>"
									+ "</div>" 
									+ "<div class='comment'>"
										+ "<span>" + list[i].commContent + "</span>" 
									+ "</div>" 
								+ "</div>"
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
	 <%@ include file="../common/footer.jsp" %>
</body>
</html>