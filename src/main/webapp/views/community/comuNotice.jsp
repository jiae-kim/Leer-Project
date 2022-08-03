<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.leer.member.model.vo.Member, com.leer.common.model.vo.* , com.leer.notice.model.vo.Notice"%>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
ArrayList<Category> cateList = (ArrayList<Category>)request.getAttribute("cateList"); 
Member m = (Member)request.getAttribute("m");
String flag = (String)request.getAttribute("flag");
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
            border: none;
            background-color: white;
            color: wite;
            font-weight: bold;
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
                                <div align="left" style="margin-bottom:10px">
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
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!--case1. 공지글이 없을 경우-->
                                        <% if(list.isEmpty()) { %>
                                         <tr>
                                            <td colspan="5">존재하는 게시글이 없습니다.</td>
                                        </tr> 
                                        <!--case2. 공지글이 있을 경우-->
                                        <% }else{ %>
                                        	<% for(Notice n : list) { %>
		                                        <tr>
		                                            <td>
		                                      		   <span><%= n.getNotiNo() %></span>
		                                               		 
		                                            </td>
		                                            <td align="left">
		                                                <a class="boardTitle" href="<%=contextPath%>/comuNotiDetail.bo?no=<%= n.getNotiNo()%>"><%= n.getTitle() %></a>
		                                            </td>
		                                            <td>
		                                                <span name="nickname"><%= n.getMemNo() %></span>
		                                            </td>
		                                            <td>
		                                                <%= n.getNotiViews() %>
		                                            </td>
		                                            <td>
		                                                <span><%= n.getEnrollDate() %></span>
		                                            </td>
		                                        </tr>
                                    		<% } %>
                                    <% } %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
    
	 <%@ include file="../community/comuMypage.jsp" %>
	 <%@ include file="../common/footer.jsp" %>
</body>
</html>