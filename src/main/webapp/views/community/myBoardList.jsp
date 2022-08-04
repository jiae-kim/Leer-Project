<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.leer.member.model.vo.Member, java.util.ArrayList, com.leer.community.model.vo.ComuBoard, com.leer.common.model.vo.*"%>
    
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");  
	ArrayList<ComuBoard> list = (ArrayList<ComuBoard>)request.getAttribute("list");
	ArrayList<Category> cateList = (ArrayList<Category>)request.getAttribute("cateList"); 
	Member m = (Member)request.getAttribute("m");
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
<style>
        .list-area th {
            font-size: 14px;
            border-top: 1px solid rgba(128, 128, 128, .7);
            border-bottom: 1px solid gray;
			line-height: 22px;
        }

        .list-area td {
            font-size: 12px;
            border-bottom: 1px solid rgba(128, 128, 128, .4);
        }

        .list-area {
            width: 100%;
            height: 50px;
            text-align: center;

        }

        .list-area button:hover {
            cursor: pointer;
            color: gray;
        }

        .list-area button {
            border: none;
            background-color: white;
            font-weight: bold;
        }

        .myBoardTitle {
            font-size: 14px;
        }

        .boardDelete{
            border: 1px solid #878787;
            background-color: white;
            color: #878787;
            font-weight: bold;
            line-height:25px;
            font-size: 14px;
        }
         .boardTitle:hover{
	         color:red !import;
	       	background:white !import;
         }
        .boardTitle{
        	font-size:12px;
        	color:#212529;
        	 
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
                        <h2>커뮤니티</h2>
                        <div class="breadcrumb__option">
                            <span>내가 작성한 게시글</span>
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
                                    <h4>내가 작성한 게시글 </h4>
                                    <span class="myBoardTitle"><strong><%= loginUser.getNickname() %></strong>님의 게시글 목록</span>
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
                                            <th width="70" class="allch">전체선택<input type="checkbox" class="allcheck" value="전체선택" ></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% if(list.isEmpty()) { %>
                                         <tr>
                                            <td colspan="6">존재하는 게시글이 없습니다.</td>
                                        </tr> 
                                        <% }else{ %>
                                        	<% int num = list.size(); %>
                                        	<% for(ComuBoard c : list) { %>
		                                        <tr>
		                                            <td>
		                                      		   <span style="display:none"><%= c.getComuNo() %></span>
		                                               <span><%= num-- %></span>
		                                               		 
		                                            </td>
		                                            <td align="left">
		                                                <a class="boardTitle"href="<%=contextPath%>/comuDetail.bo?no=<%= c.getComuNo()%>"><%= c.getTitle() %></a>
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
		                                            <td><input type="checkbox" name="check"></td>
		                                        </tr>
                                    		<% } %>
                                    <% } %>
                                    </tbody>
                                </table>
                                <script>
                                	$(document).ready(function(){
                                		$(".allcheck").click(function(){
                                			if($(".allcheck").is(":checked")) $("input[name=check]").prop("checked", true);
                                			
                                			else $("input[name=check]").prop("checked", false);
                                			
                                		});
                                			$("input[name=check]").click(function() {
                                				var total = $("input[name=check]").length;
                                				var checked = $("input[name=check]:checked").length;

                                				if(total != checked) $(".allcheck").prop("checked", false);
                                				else $(".allcheck").prop("checked", true); 
                                			});
                               			});
                                		
                                	
                                		
                                
                                </script>
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