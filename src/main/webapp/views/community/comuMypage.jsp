<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.leer.member.model.vo.Member, java.util.ArrayList, com.leer.common.model.vo.Category"%>
<%
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	.loginBtn{
		border:1px solid black;
		
	}
		

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

/* .blog__pagination:before {
	position: absolute;
	left: 0;
	top: 0;
	height: 1px;
	width: 100%;
	background: #000000;
	opacity: 0.1;
	content: "";
} */

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
	border-top: 1px solid black ;
	border-bottom: 1px solid black ;
	height: 220px; 
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
.vogue{
    font-size: 12px;
    color: #6f6f6f ;
    background: #f5f5f5;
    display: inline-block ;
    padding: 7px 13px 5px ;
    margin-right: 6px ;
    margin-bottom: 10px ;
    border:none;
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
</style>
</head>
<body>
<div class="col-bj-1 blog__sidebar__item" style="margin-left:60px">
				
				<%if(loginUser == null){ //로그인 안되어있을 경우%>
					<div class="myPageList" style="height:150px !important">
						<div id="myPage" style="display: block;">
							<div class="box-g">
								<h4 class="login">로그인 필요</h4>
								<div class="myList">
									<ul>
										<li id="profile">
											<div class="profileNic" align="left" style="margin: 30px 0px 0px 10px">
												<button class="loginBtn" onclick="location.href='<%=contextPath%>/views/member/login.jsp'">로그인 화면으로</button>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="writeBoard" align="center">
							</div>
						</div>
					</div>

					<%
					} else {
					%>
					<div class="myPageList"  style="height:220px !important">
						<div id="myPage" style="display: block;">
							<div class="box-g">
								<h4 class="">나의활동</h4>
								<div class="myList">
									<ul>
										<li id="profile">
											<div class="profileNic" >
											
												<% if(loginUser.getProfileLink() == null){ %>
												<img
													src="https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_70.png"
													width="58" height="58" alt="프로필사진" class="imgChange" onclick="location.href='<%=contextPath%>/change'">
													<strong onclick="location.href='<%=contextPath %>/mypage.me'"><%=loginUser.getNickname() %></strong>
												<% }else { %>	
												<img style="border-radius:50%" src="<%= loginUser.getProfileLink() %>" width="58" height="58" alt="프로필사진" class="imgChange">
												<strong onclick="location.href='<%=contextPath %>/mypage.me'"><%=loginUser.getNickname() %></strong>
												<% } %>
											</div>
										</li>

										<li class="myBoard">
											<span>
											<strong>내가 쓴 게시글</strong>
											</span> 
											<a href="<%=contextPath %>/myBoard.li?memNo=<%=loginUser.getMemNo()%>&cpage=1"><%=m.getCommCount() %></a>
											<span>개</span>
										</li>
										
									</ul>
								</div>
							</div>
							<div class="writeBoard" align="center">
								<button
									onclick="location.href='<%=contextPath%>/comuEnrollForm.bo'"
									class="write">글쓰기</button>
							</div>
						</div>
					</div>
					<% } %>
					
					<div class="bestTag">
						<p>인기태그</p>
						<form action="<%= contextPath %>/hashTag.bo?cpage=1&tag=">
						<div class="blog__sidebar__item__tags">
							<a href="#">공유</a> <a href="#">후기</a> <a href="#">부록</a> <a
								href="#">추천</a> <a href="#">질문</a> <input type="submit" name="tag" value="보그" class="vogue">
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		</section>
		
		
		
    <script src="<%=contextPath%>/resources/js/beomjin/js/jquery-3.3.1.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/bootstrap.min.js"></script>
<%-- 	 <script src="<%=contextPath%>/resources/js/beomjin/js/jquery.nice-select.min.js"></script>  --%>
	<script src="<%=contextPath%>/resources/js/beomjin/js/jquery-ui.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/jquery.slicknav.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/mixitup.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/owl.carousel.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/main.js"></script>
	
	 
    <script src="<%=contextPath%>/resources/js/beomjin/js/summernote/summernote-lite.js"></script>
    <script src="<%=contextPath%>/resources/js/beomjin/js/summernote/summernote-ko-KR.js"></script>
</body>
</html>