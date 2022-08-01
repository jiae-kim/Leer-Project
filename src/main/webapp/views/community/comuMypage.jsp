<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-bj-1 blog__sidebar__item">
				
				<%if(loginUser == null){ //로그인 안되어있을 경우%>
		<div class="myPageList">
						<div id="myPage" style="display: block;">
							<div class="box-g">
								<h4 class="">나의활동</h4>
								<div class="myList">
									<ul>
										<li id="profile">
											<div class="profileNic"align="left">
												<button onclick="location.href='<%=contextPath%>/views/member/login.jsp'">로그인을 해주세요</button>
											</div>
										</li>

										<li class="myBoard"><span class=""><strong
												class=""><a href="">내가 쓴 글</a></strong></span> <a href="" class="">-</a><span>개</span>
										</li>

										<li class="myComment"><span class=""><strong
												class=""><a href="">내가 좋아요 한 글</a></strong></span> <a href=""
											class="">-</a><span>개</span></li>
									</ul>
								</div>
							</div>
							<div class="writeBoard" align="center">
								<button class="write" disabled>글쓰기</button>
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
											<div class="profileNic" align="">
												<img
													src="https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_70.png"
													width="58" height="58" alt="프로필사진" class="imgChange">
												<strong><%=loginUser.getNickname() %></strong>

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
	 <script src="<%=contextPath%>/resources/js/beomjin/js/jquery.nice-select.min.js"></script> 
	<script src="<%=contextPath%>/resources/js/beomjin/js/jquery-ui.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/jquery.slicknav.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/mixitup.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/owl.carousel.min.js"></script>
	<script src="<%=contextPath%>/resources/js/beomjin/js/main.js"></script>
	
	 
    <script src="<%=contextPath%>/resources/js/beomjin/js/summernote/summernote-lite.js"></script>
    <script src="<%=contextPath%>/resources/js/beomjin/js/summernote/summernote-ko-KR.js"></script>
</body>
</html>