<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.faq.model.vo.Faq, com.leer.common.model.vo.PageInfo" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Faq> list = (ArrayList<Faq>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 전체조회</title>
<style>
.customtable>tr:hover {
    cursor: pointer;
    opacity: 0.7;
    background:#cecece;
    color:dark;
} 
</style>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	<%@ include file="../../common/adminScript.jsp" %>
	
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
            <h2 class="page-title">FAQ 조회</h2>
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb"></nav>
                    <button type="button" class="btn btn-info btn-lg" onclick="location.href='<%=request.getContextPath()%>/adFaqEnrollForm.do'">FAQ 등록</button> &nbsp;&nbsp;&nbsp;
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="card">
            <div class="card-body">
                <div class="btn-group">
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="">등록일 순</a>
                        <a class="dropdown-item" href="">조회수 순</a>
                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th></th>
                            <th scope="col">글번호</th>
                            <th scope="col">카테고리</th>
                            <th scope="col">제목</th>
                            <th scope="col">등록일</th>
                            <th scope="col">조회수</th>
                        </tr>
                    </thead>
                    <tbody class="customtable">
                        <% for(Faq f : list) { %>
                        <tr onclick="location.href='<%=request.getContextPath()%>/adFaqDetail.do?no=<%=f.getFaqNo()%>';">
                            <th></th>
                            <td><%=f.getFaqNo()%></td>
                            <td><%=f.getCategoryName()%></td>
                            <td><%=f.getFaqTitle()%></td>
                            <td><%=f.getEnrollDate()%></td>
                            <td><%=f.getCount()%></td>
                        </tr>
                        <% } %>
                    </tbody>
                    
                    <tfoot>
                        <tr align="center">
                            <th colspan="10">
                                <div class="btn-group paging-area" role="group" aria-label="Basic example">
                                    <% if(currentPage != 1) { %>
                                        <button type="button" onclick="location.href='<%=request.getContextPath()%>/adFaqList.do?cpage=<%=currentPage-1%>';"class="btn btn-outline-secondary">&lt;</button>
                                    <% } %>
                                    <% for(int p=startPage; p<=endPage; p++) { %>
                                        <% if(p == currentPage) { %>
                                            <button type="button" disabled class="btn btn-outline-secondary"><%=p%></button>
                                        <% } else { %>
                                            <button type="button" onclick="location.href='<%=request.getContextPath()%>/adFaqList.do?cpage=<%=p%>';" class="btn btn-outline-secondary"><%=p%></button>
                                        <% } %>
                                    <% } %>
                                    <% if(currentPage != maxPage) { %>
                                        <button type="button" onclick="location.href='<%=request.getContextPath()%>/adFaqList.do?cpage=<%=currentPage+1%>';" class="btn btn-outline-secondary">&gt;</button>
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