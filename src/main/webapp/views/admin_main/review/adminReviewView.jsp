<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.review.model.vo.Review, com.leer.common.model.vo.PageInfo" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Review> list = (ArrayList<Review>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 전체조회</title>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	<%@ include file="../../common/adminScript.jsp" %>
	
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h2 class="page-title">상품 리뷰 전체조회</h2>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="card">
            <div class="card-body">
                <div class="btn-group">
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">별점 순</a>
                        <a class="dropdown-item" href="#">등록일</a>
                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th>
                                <label class="customcheckbox m-b-20">
                                    <span class="checkmark"></span>
                                </label>
                            </th>
                            <th scope="col">글번호</th> <!--리뷰번호-->
                            <th scope="col">작성자</th> <!--회원아이디-->
                            <th scope="col">상품명</th> <!--제품명-->
                            <th scope="col">상품코드</th> 
                            <th scope="col">내용</th>
                            <th scope="col">별점</th>
                            <th scope="col">등록일</th> <!--작성일-->
                            <th scope="col">적립금 지급</th>
                        </tr>
                    </thead>
                    <tbody class="customtable">
                        <% for(Review r : list) { %>
                        <tr>
                            <th>
                                <label class="customcheckbox">
                                    <span class="checkmark"></span>
                                </label>
                            </th>
                            <td><%=r.getReviewNo()%></td>
                            <td><%=r.getMemId()%></td>
                            <td><%=r.getpName()%></td>
                            <td><%=r.getP_code()%></td>
                            <td><%=r.getReviewContent()%></td>
                            <td><%=r.getReviewScope()%></td>
                            <td><%=r.getEnrollDate()%></td>
                            <td style="color:blue"><%=r.getWriteYN()%></td>
                        </tr>
                        <% } %>
                    </tbody>
                    <tfoot>
                        <tr align="center">
                            <th colspan="10">
                                <div class="btn-group paging-area" role="group" aria-label="Basic example">
                                    <% if(currentPage != 1) { %>
                                        <button type="button" onclick="location.href='<%=request.getContextPath()%>/adRevList.do?cpage=<%=currentPage-1%>';" class="btn btn-outline-secondary">&lt;</button>
                                    <% } %>
                                    <% for(int p=startPage; p<=endPage; p++) { %>
                                        <% if(p == currentPage) { %>
                                            <button type="button" disabled class="btn btn-outline-secondary"><%=p%></button>
                                        <% } else { %>
                                            <button type="button" onclick="location.href='<%=request.getContextPath()%>/adRevList.do?cpage=<%=p%>';" class="btn btn-outline-secondary"><%=p%></button>
                                        <% } %>
                                    <% } %>
                                    
                                    <% if(currentPage != maxPage) { %>
                                        <button type="button" onclick="location.href='<%=request.getContextPath()%>/adRevList.do?cpage=<%=currentPage+1%>';" class="btn btn-outline-secondary">&gt;</button>
                                    <% } %>
                                </div>
                            </th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
          
</body>
</html>