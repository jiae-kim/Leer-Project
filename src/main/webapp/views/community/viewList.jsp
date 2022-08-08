<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.leer.common.model.vo.PageInfo, java.util.ArrayList, com.leer.community.model.vo.ComuBoard, com.leer.member.model.vo.Member, com.leer.common.model.vo.Category"%>
<%
  ArrayList<ComuBoard> list = (ArrayList<ComuBoard>)request.getAttribute("list");
  ArrayList<ComuBoard> tagsearchlist = (ArrayList<ComuBoard>)session.getAttribute("tagsearchlist");
  PageInfo pi = (PageInfo)request.getAttribute("pi"); 
  ArrayList<Category> cateList = (ArrayList<Category>)request.getAttribute("cateList"); 
  Member m = (Member)request.getAttribute("m");
  int currentPage = pi.getCurrentPage();
  int startPage = pi.getStartPage();
  int endPage = pi.getEndPage();
  int maxPage = pi.getMaxPage();  
  ArrayList<ComuBoard> searchList = (ArrayList<ComuBoard>)request.getAttribute("searchList");
  String flag = (String)request.getAttribute("flag");
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
<style>
	.blog__item__text:hover{
		cursor:pointer;
		
	}
	.icon{
	float: right;
	}
	.hashtag {
	line-height:16px;
	display: inline;
	color: #1c1c1c;
	padding:2px;
	border:none;
	background-color: rgb(221, 221, 221);
	border-radius: 3px;
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
	/* .col-md-7{
	 -ms-flex: 0 0 58.333333% !important;
        flex: 0 0 58.333333% !important;
        max-width: 58.333333% !important;
	} */
	.col-md-7>.row{
		border-bottom:1px solid #878787 !important;
	}
	/* .gg123{
		margin-left: 70%;
	} */
	
	
	
	
	
	
	

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
	padding-top: 0px !important;
	width: 600px !important;
}
.blog__item{
	margin-bottom: 20px !important;
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


.search1 {
	margin-right: -15px !important;
    margin-left: -15px !important;
	margin-top: 50px !important;
	margin-bottom: 0 !important;
	padding-bottom:50px;
	border-bottom:1px solid #878787;
}

.search1 {
	position: relative !important;
}
.search1 input {
	width: 550px !important;
	height: 46px !important;
	font-size: 16px !important;
	color: #6f6f6f !important;
	padding-left: 15px !important;
	border: 1px solid #e1e1e1 !important;
	border-radius: 5px !important;
	
}

.search1 form input::placeholder {
	color: #6f6f6f !important;
}

.search1 form button {
	font-size: 16px;!important;
	color: #ffffff !important;
	background: #898989 !important;
	border: none !important;
	border-radius: 5px !important;
	position: absolute !important;
	margin-left: 5px !important;
	right: none !important;
	top: none !important;
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
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp"%> 
    
    <section class="breadcrumb-section set-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-left">
                    <div class="breadcrumb__text">
                        <h2><a href="<%=contextPath%>/comu.bo?cpage=1" style="color:white;">커뮤니티</a></h2>
                        <div class="breadcrumb__option">
                        	
                            <span>전체게시판</span>
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
	<%@ include file="../community/communityMain.jsp"%>
		<div class="col-lg-8 col-md-7" style="padding-left: 50px">
			<div class="row search1">
				<form action="<%= contextPath %>/comuSearch.li?cpage=1&search=">
					<input type="text" placeholder="태그 또는 키워드를 입력하세요..." name="search" >
					<button type="submit">검색</button>
				</form>
			</div>
			
			  <% if(list.isEmpty()){ %>
				  <div class="" >
				   	<h4 Style="margin-left:230px">게시글이 없습니다.</h4>
				  </div>
			  <% }else { %>
				<% for(ComuBoard c : list) { %>
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item"> 
								<div class="blog__item__text" align="left" onclick="location.href='<%=contextPath%>/comuDetail.bo?no=<%= c.getComuNo()%>'" style="padding-top:16px !important">
									<span style="display:none"><%= c.getComuNo() %></span>
									
									<h4><%= c.getTitle() %></h4>
									<form action="<%= contextPath %>/hashTag.bo?cpage=1&tag=">
									<div>
										<% if(c.getTag() != null) { 
											String[] tagArr = c.getTag().split(",");  // ["패션", "라이프"]
											for(String tag : tagArr){ %>
													<input name="tag" type="submit" class="hashtag" value="<%= tag %>"><!-- 댓글수 구하는 구문 찾아보기  -->
												<%} %>
										<% } %>
									</div>
									</form>
									<div>
										<p><%=c.getContent()%></p>
									</div>
									<div style="line-height:12px">
										<div class="gg123" style="display:inline">
											<span style="font-size:12px"><b>조회수 : <%= c.getViewCount() %></b></span>
											<span style="font-size: 12px"><%=c.getEnrollDate() %></span>
										</div>
									<div class="icon" style="display:inline">
										</i> <i class="fa fa-comment-o" style="margin-left:5px"> <sup><%= c.getCommentCount() %></sup>
										</i>
									</div>
									</div>
								</div>
							</div>
						</div>
					</div>
			<% } %>
		<% } %>
      <script>
           $(function(){
        	   $(".hashtag").split(',');
        	   
           })
        </script>
        
        <% if(!list.isEmpty()){ %>
        	<%if(flag.equals("all")) { %>
				<div class="product__pagination blog__pagination" align="center">
					<% if(currentPage != 1){ %>
            			<a href="<%=contextPath%>/comu.bo?cpage=<%=currentPage-1%>">&lt;</a>
		            <% } %>
		            
		         	<% for(int p=startPage; p<=endPage; p++) {%>
		         
			            <% if(p == currentPage){ %>
	            			<a disabled style="opacity:0.7"><%= p %></a>
	            		<% }else { %>
	              			 <a href="<%=contextPath%>/comu.bo?cpage=<%= p %>"><%= p %></a>
	              		<% } %>
          		   <% } %>
         
		         <% if(currentPage != maxPage){ %>
		            <a href="<%=contextPath%>/comu.bo?cpage=<%=currentPage+1%>" >&gt;</a>
		            <% } %>
				</div>
			<% } else if(flag.equals("search")) { %>
				<div class="product__pagination blog__pagination" align="center">
					<% if(currentPage != 1){ %>
            			<a href="<%=contextPath%>/comuSearch.li?cpage=<%=currentPage-1%>&search=<%=flag%>">&lt;</a>
		            <% } %>
		            
		         	<% for(int p=startPage; p<=endPage; p++) {%>
		         
			            <% if(p == currentPage){ %>
	            			<a disabled style="opacity:0.7"><%= p %></a>
	            		<% }else { %>
	              			 <a href="<%=contextPath%>/comuSearch.li?cpage=<%= p %>&search=<%=flag%>"><%= p %></a>
	              		<% } %>
          		   <% } %>
         
		      	   <% if(currentPage != maxPage){ %>
		            <a href="<%=contextPath%>/comuSearch.li?cpage=<%=currentPage+1%>&search=<%=flag%>" >&gt;</a>
		           <% } %>
				</div>
				<%} else { %>
				<div class="product__pagination blog__pagination" align="center">
					<% if(currentPage != 1){ %>
            			<a href="<%=contextPath%>/cgory.li?cpage=<%=currentPage-1%>&cNo=<%=flag%>">&lt;</a>
		            <% } %>
		            
		         	<% for(int p=startPage; p<=endPage; p++) {%>
		         
			            <% if(p == currentPage){ %>
	            			<a disabled style="opacity:0.7"><%= p %></a>
	            		<% }else { %>
	              			 <a href="<%=contextPath%>/cgory.li?cpage=<%= p %>&cNo=<%=flag%>"><%= p %></a>
	              		<% } %>
          		   <% } %>
         
		         <% if(currentPage != maxPage){ %>
		            <a href="<%=contextPath%>/cgory.li?cpage=<%=currentPage+1%>&cNo=<%=flag%>" >&gt;</a>
		            <% } %>
				</div>
				<% } %>
			<% } %>
		</div>
	 <%@ include file="../community/comuMypage.jsp" %>
	<%--  <%@ include file="../common/footer.jsp" %>  --%>
	 
	 <!-- 댓글수 구하는 구문 찾아보기  -->
	 <!-- 좋아요수 구하는 구문 -->
	<!-- 태그 자르기 각 태그별 href이동방법 -->
	
</body>
</html>