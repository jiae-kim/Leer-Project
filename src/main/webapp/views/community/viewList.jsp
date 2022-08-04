<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.leer.common.model.vo.PageInfo, java.util.ArrayList, com.leer.community.model.vo.ComuBoard, com.leer.member.model.vo.Member, com.leer.common.model.vo.Category"%>
<%
  ArrayList<ComuBoard> list = (ArrayList<ComuBoard>)request.getAttribute("list");
  PageInfo pi = (PageInfo)request.getAttribute("pi"); 
  ArrayList<Category> cateList = (ArrayList<Category>)request.getAttribute("cateList"); 
  Member m = (Member)request.getAttribute("m");
  int currentPage = pi.getCurrentPage();
  int startPage = pi.getStartPage();
  int endPage = pi.getEndPage();
  int maxPage = pi.getMaxPage();  
  
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
	
	display: inline;
	color: #1c1c1c;
	padding:2px;
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
	.row{
		width:99%;
		border-bottom:1px solid #878787 !important;
	}
	.gg123{
		margin-left: 70%;
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
                        <h2>커뮤니티</h2>
                        <div class="breadcrumb__option">
                            <span>전체게시글</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
	<%@ include file="../community/communityMain.jsp"%>
	<% %>
		<div class="col-lg-8 col-md-7" style="padding-left: 50px">
			<div class="blog__sidebar__search">
				<form action="#">
					<input type="text" placeholder="태그 또는 키워드를 입력하세요...">
					<button type="submit">검색</button>
				</form>
			</div>
			
			  <% if(list.isEmpty()){ %>
				  <div class="row" >
				   	<h4 Style="margin-left:230px">게시글이 없습니다.</h4>
				  </div>
			  <% }else { %>
				<% for(ComuBoard c : list) { %>
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item"> 
								<div class="blog__item__text" align="left" onclick="location.href='<%=contextPath%>/comuDetail.bo?no=<%= c.getComuNo()%>'">
									<span style="display:none"><%= c.getComuNo() %></span>
									<span style="font-weight:bold"><%= c.getTitle() %></span>
									<div class="gg123" style="display:inline">
									<span style="font-size:12px"><b>조회수 : <%= c.getViewCount() %></b></span>
									<span style="font-size: 12px"><%=c.getEnrollDate() %></span>
									</div>
									<div style="line-height:12px">
									<% if(c.getTag() != null) { 
										String[] tagArr = c.getTag().split(",");  // ["패션", "라이프"]
										for(String tag : tagArr){ %>
												<a class="hashtag" href="<%= contextPath %>/hashtagsearch?tag=<%=tagArr%>"><%= tag %></a> <!-- 댓글수 구하는 구문 찾아보기  -->
									
											<%} %>
									<% } %>
									</div>
									<br>
									<span><%=c.getContent()%></span>
									<div>
										<div class="icon" >
											<i class="fa fa-heart-o"> <sup><%= c.getLikeCount() %></sup>
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
			<div class="col-lg-12" style="margin-left:150px">
				<div class="product__pagination blog__pagination">
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
			</div> 
			<% }else { %>
			<div class="col-lg-12" style="margin-left:150px">
				<div class="product__pagination blog__pagination">
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
			</div> 
			<%} %>
			<% } %>
		</div>
	 <%@ include file="../community/comuMypage.jsp" %>
	 <%@ include file="../common/footer.jsp" %>
	 
	 <!-- 댓글수 구하는 구문 찾아보기  -->
	 <!-- 좋아요수 구하는 구문 -->
	<!-- 태그 자르기 각 태그별 href이동방법 -->
	
</body>
</html>