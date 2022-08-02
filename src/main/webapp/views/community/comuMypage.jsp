<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.leer.member.model.vo.Member"%>
<%
	Member m = (Member)request.getAttribute("m");
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
</style>
</head>
<body>
<div class="col-bj-1 blog__sidebar__item">
				
				<%if(loginUser == null){ //로그인 안되어있을 경우%>
					<div class="myPageList" style="height:150px">
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
					<div class="myPageList">
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
													width="58" height="58" alt="프로필사진" class="imgChange">
												<% }else { %>	
												<img src="<%= loginUser.getProfileLink() %>" width="58" height="58" alt="프로필사진" class="imgChange">
												<strong><%=loginUser.getNickname() %></strong>
												<% } %>
											</div>
										</li>

										<li class="myBoard">
											<span>
											<strong>내가 쓴 글</strong>
											</span> 
											<a href="<%=contextPath %>/myBoard.li?memNo=<%=loginUser.getMemNo()%>&cpage=1"><%= m.getCommCount() %></a>
											<span>개</span>
										</li>
										
										<li class="myComment">
										<form action="<%=contextPath%>/comuMypage.me">
											<span class="">
											<strong>내가 좋아요 한 글</strong>
											</span>
											<a href="#"><%= m.getLikeCount() %></a>
											<span>개</span>
										</form>
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
						<div class="blog__sidebar__item__tags">
							<a href="#">공유</a> <a href="#">후기</a> <a href="#">부록</a> <a
								href="#">추천</a> <a href="#">질문</a> <a href="#">보그</a>
						</div>
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