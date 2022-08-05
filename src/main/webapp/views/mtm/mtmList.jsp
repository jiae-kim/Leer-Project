<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.ArrayList, com.leer.mtm.model.vo.Mtm, com.leer.common.model.vo.PageInfo" %>   
 
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Mtm> list = (ArrayList<Mtm>)request.getAttribute("list");

	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- Css Styles -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/style.css" type="text/css">
    
    <!--  
    <style>
     @import url('https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css');
    </style>
    -->
    
</head>
<body>
	
	<%@ include file="../common/menubar.jsp" %>

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" style="background-image:url(<%=contextPath%>/resources/images/productCategory/lifestyle.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-lg-12" style="text-align=left;">
                    <div class="breadcrumb__text" >
                        <h2 style="font-size:35px">고객센터</h2>
                        <div class="breadcrumb__option">
                            
                            <span>1대1 문의</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->



    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4>고객센터</h4>
                            <ul>
                                <li><a href="#">공지사항</a></li>
                                <li><a href="#">FAQ</a></li>
                                <li><a href="#">1대1 문의</a></li>
                            </ul>
                        </div>
                        
                    </div>
                </div>


                <div class="go-wrap">
                    <div>
                        <label style="font-size: 30px; font-weight:600">나의 1:1문의 내역</label><br>
                    </div>
                    <hr>

                    <table class="list-area" align="center">
                        <thead>
                            <tr style="text-align:center;">
                                <th width="70"><label>글번호</label></th>
                                <th width="150"><label>문의유형</label></th>
                                <th width="300"><label>제목</label></th>
                                <th width="100"><label>작성일</label></th>
                                <th width="100"><label>답변상태</label></th>
                            </tr>
                        </thead>
                        
                        <tbody>
                        	<% if(list.isEmpty()) { %>
                            	<tr>
                            		<td colspan="6">존재하는 게시글이 없습니다.</td>
                            	</tr> 
                            	
                            <% }else{ %>
                            
	                            <% for(Mtm m : list) { %>
			                    	<tr style="text-align:center;">
			                        	<td><%=m.getMtmNo() %></td>
			                        	<td><%=m.getMtmType() %></td>
			                        	<td><%=m.getMtmTitle() %></td>
			                        	<td><%=m.getEnrollDate() %></td>
			                        	<td><%=m.getAnsYn() %></td>
			                        </tr>
								<% } %>
                           	<% } %>
                        </tbody>
                    </table>

                </div>
               
        
            </div>
        </div>
    </section>
    <!-- Product Section End -->
    
    
    <div class="product__pagination blog__pagination" align="center">
    
		<% if(currentPage != 1){ %>
               	<a href="<%=contextPath%>/mtmList.go?memNo=<%=loginUser.getMemNo()%>&cpage=<%=currentPage-1%>">&lt;</a>
		<% } %>
		
                
		<% for(int p=startPage; p<=endPage; p++) {%>
			<% if(p == currentPage){ %>
				<a disabled style="opacity:0.7"><%= p %></a>
			<% }else { %>
				<a href="<%=contextPath%>/mtmList.go?memNo=<%=loginUser.getMemNo()%>&cpage=<%= p %>"><%= p %></a>
 			<% } %>
		<% } %>
		

		<% if(currentPage != maxPage){ %>
			<a href="<%=contextPath%>/mtmList.go?memNo=<%=loginUser.getMemNo()%>&cpage=<%=currentPage+1%>" >&gt;</a>
		<% } %> 
	</div>
    
    <%@ include file="../common/footer.jsp" %>
	
</body>
</html>