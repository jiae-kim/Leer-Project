<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
                            <span>커뮤니티 공지사항</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    
    
<%@ include file="../community/communityMain.jsp" %>

<div class="col-lg-8 col-md-7">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item__text2" style="margin-top:20px">
                                <div align="left">
                                    <h4>공지사항</h4>
                                </div>
                                <!-- 현재 로그인한 사용자가 관리자일 경우(로그인한회원의아이디가 admin일경우) 보여질 div -->
                                <table class="list-area" align="center">
                                    <thead>
                                        <tr>
                                            <th width="70">번호</th>
                                            <th width="280">제목</th>
                                            <th width="100">작성자</th>
                                            <th width="70">조회수</th>
                                            <th width="100">작성일</th>
                                            <th width="70"><button>전체선택</button></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!--case1. 공지글이 없을 경우-->
                                        <% if(list.isEmpty()) { %>
                                         <tr>
                                            <td colspan="6">존재하는 게시글이 없습니다.</td>
                                        </tr> 
                                        <!--case2. 공지글이 있을 경우-->
                                        <% }else{ %>
                                        	<% int num = list.size(); %>
                                        	<% for(ComuBoard c : list) { %>
		                                        <tr>
		                                            <td>
		                                      		   <span style="display:none"><%= c.getComuNo() %></span>
		                                               <span><%= num-- %></span>
		                                               		 
		                                            </td>
		                                            <td align="left">
		                                                <a class="boardTitle"href="<%=contextPath%>/comuDetail.bo?no=<%= c.getComuNo()%>"><%= c.getTitle() %></span>
		                                            </td>
		                                            <td>
		                                                <span name="nickname"><%= c.getMemNo() %></span>
		                                            </td>
		                                            <td>
		                                                <%= c.getViewCount() %>
		                                            </td>
		                                            <td>
		                                                <span><%= c.getEnrollDate() %></span>
		                                            </td>
		                                            <td><input type="checkbox"></td>
		                                        </tr>
                                    		<% } %>
                                    <% } %>
                                    </tbody>
                                </table>
                                <% if(!list.isEmpty()){ %>
	                                <div class="col-lg-12" style="padding: 0;" align="right">
	                                        <button class="boardDelete">삭제하기</button>
	                                </div>
	                                
	                                <div class="product__pagination blog__pagination" align="center">
	                                <% if(currentPage != 1){ %>
	                                	<a href="<%=contextPath%>/myBoard.li?memNo=<%=loginUser.getMemNo()%>&cpage=<%=currentPage-1%>">&lt;</a>
	                                <% } %>
	                                 
	                                <% for(int p=startPage; p<=endPage; p++) {%>
	                                <% if(p == currentPage){ %>
					            			<a disabled style="opacity:0.7"><%= p %></button>
					            		<% }else { %>
					              			 <a href="<%=contextPath%>/myBoard.li?memNo=<%=loginUser.getMemNo()%>&cpage=<%= p %>"><%= p %></a>
					              		<% } %>
				          		   <% } %>
				         
						           <% if(currentPage != maxPage){ %>
						            <a href="<%=contextPath%>/myBoard.li?memNo=<%=loginUser.getMemNo()%>&cpage=<%=currentPage+1%>" >&gt;</a>
						            <% } %> 
	                                </div>
                                <% }%>
                            </div>
                        </div>
                    </div>
                </div>
    
	 <%@ include file="../community/comuMypage.jsp" %>
	 <%@ include file="../common/footer.jsp" %>
</body>
</html>