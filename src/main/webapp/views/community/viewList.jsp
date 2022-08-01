<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.leer.common.model.vo.PageInfo, java.util.ArrayList, com.leer.community.model.vo.ComuBoard, com.leer.member.model.vo.Member" %>
<%
 /*  PageInfo pi = (PageInfo)request.getAttribute("pi"); */
  ArrayList<ComuBoard> list = (ArrayList<ComuBoard>)request.getAttribute("list");
 /*  int currentPage = pi.getCurrentPage();
  int startPage = pi.getStartPage();
  int endPage = pi.getEndPage();
  int maxPage = pi.getMaxPage();  */
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
</style>
</head>
<body>
 <%--    <%@ include file="../common/menubar.jsp"%>  --%>
    
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

	
		<div class="col-lg-8 col-md-7" style="padding-left: 50px">
			<div class="blog__sidebar__search">
				<form action="#">
					<input type="text" placeholder="태그 또는 키워드를 입력하세요...">
					<button type="submit">검색</button>
				</form>
			</div>
			
		<% for(ComuBoard c : list) { %>
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="blog__item"> 
						<div class="blog__item__text" align="left">
							<span style="display:none"><%= c.getComuNo() %></span>
							<h5 style="marin-bottom: -10px;">
								<span style="font-weight:bold"><%= c.getTitle() %></span>
							</h5>
							<span style="font-size: 12px"><%=c.getEnrollDate() %></span>
							
							<%
								if(c.getTag() != null) {
									String[] tagArr = c.getTag().split(",");  // ["패션", "라이프"]
									
									for(String tag : tagArr){ %>
							
										<a class="hashtag" href="<%= contextPath %>/xxxxx?tag=<%=tag %>" style="display: inline"><%= tag %></a> <!-- 댓글수 구하는 구문 찾아보기  -->
							
									<%} %>
							<% } %>
							
							<p><%=c.getContent()%></p>
							<div>
								<div style="float: right">
									<i class="fa fa-heart-o"> <sup><%= c.getLikeCount() %></sup>
									</i> <i class="fa fa-comment-o"> <sup><%= c.getCommentCount() %></sup>
									</i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<% } %>
      <script>
           $(function(){
              $(".blog__item__text").click(function(){
                 location.href = "<%=contextPath%>/comuDetail.bo?no=" + $(this).children().eq(0).text();
              })
              
           })
           $(function(){
        	   $(".hashtag").split(',');
        	   
           })
        </script>
			<%-- <div class="col-lg-12">
				<div class="product__pagination blog__pagination">
					<% if(currentPage != 1){ %>
            			<button onclick="location.href='<%=contextPath%>/list.bo?cpage=<%=currentPage-1%>';">&lt;</button>
		            <% } %>
		            
		         	<% for(int p=startPage; p<=endPage; p++) {%>
		         
			            <% if(p == currentPage){ %>
	            			<button disabled><%= p %></button>
	            		<% }else { %>
	              			 <button onclick="location.href='<%=contextPath%>/list.bo?cpage=<%= p %>';"><%= p %></button>
	              		<% } %>
          		   <% } %>
         
		         <% if(currentPage != maxPage){ %>
		            <button onclick="location.href='<%=contextPath%>/list.bo?cpage=<%=currentPage+1%>';">&gt;</button>
		            <% } %>
				</div>
			</div> --%>
		</div>
	 <%@ include file="../community/comuMypage.jsp" %>
	 <%@ include file="../common/footer.jsp" %>
	 
	 <!-- 댓글수 구하는 구문 찾아보기  -->
	 <!-- 좋아요수 구하는 구문 -->
	<!-- 태그 자르기 각 태그별 href이동방법 -->
	
</body>
</html>