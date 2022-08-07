<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.product.model.vo.Inquiry, com.leer.common.model.vo.PageInfo" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Inquiry> list = (ArrayList<Inquiry>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품문의 전체조회</title>
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
                        <br><br><br>
                        <h2 class="page-title">상품문의 전체 조회</h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <!--<input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">조회</button>-->
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                            </nav>
                            <!--  
                            <button type="button" class="btn btn-info btn-lg" onclick="location.href='<%=request.getContextPath()%>/views/admin_main/inquiry/adminInquiryQAnswer.jsp'">답변 등록</button> &nbsp;&nbsp;&nbsp;
                            <button type="button" class="btn btn-warning btn-lg">답변 수정</button> &nbsp;&nbsp;&nbsp;
                            -->
                            <!-- Button trigger modal 
                            <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#Modal2">
                                문의 삭제
                            </button>
                            -->
                                <!-- Modal 
                                <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">공지사항 삭제</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
                                                해당 문의를 삭제하시겠습니까?
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger">네</button>
                                                <button type="button" class="btn btn-info" data-dismiss="modal">아니오</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- 목록 -->
                <div class="card">
                    <div class="card-body">
                        <!-- <h5 class="card-title m-b-0">상품전체조회</h5> -->
                                        <!-- 전체조회  -->
                <div class="btn-group">
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">문의 유형 선택</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">상품</a>
                        <a class="dropdown-item" href="#">배송</a>
                        <a class="dropdown-item" href="#">주문취소/환불</a>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- 카테고리 조회 -->
                <div class="btn-group">
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">처리상태 선택</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">미답변</a>
                        <a class="dropdown-item" href="#">답변완료</a>
                    </div>
                </div>
                    </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead class="thead-light">
                                    <tr>
                                        <th>
                                            <label class="customcheckbox m-b-20">
                                                <!-- <input type="checkbox" id="mainCheckbox" />  -->
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <th scope="col">글번호</th>
                                        <th scope="col">작성자</th> <!--join : member t 아이디-->
                                        <th scope="col">문의유형</th>
                                        <th scope="col">문의상품</th> <!-- 상품코드 -->
                                        <th scope="col">제목</th>
                                        <th scope="col">작성일</th> 
                                        <th scope="col">처리상태</th>
                                    </tr>
                                </thead>
                                <tbody class="customtable">
                                	<% for(Inquiry i : list) { %>
                                    <tr onclick="location.href='<%=request.getContextPath()%>/adProIqDetail.do?no=<%=i.getqNo()%>';">
                                        <th>
                                            <label class="customcheckbox"> 
                                                <!-- <input type="checkbox" class="listCheckbox" /> -->
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td><%=i.getqNo()%></td>
                                        <td><%=i.getMemId()%></td>
                                        <td><%=i.getqCategory()%></td>
                                        <td><%=i.getpCode2()%></td>
                                        <td><%=i.getTitle() %></td>
                                        <td><%=i.getEnrollDate()%></td>
                                        <td><%=i.getqYn()%></td>
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>
                        </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
            	<!-- 페이징처리 바 -->
                <tr align="center">
                   <th colspan="10">
                   <br>
		                <div class="btn-group paging-area" role="group" aria-label="Basic example">
		                <% if(currentPage != 1) { %>
		                    <button type="button" onclick="location.href='<%=request.getContextPath()%>/adProIqList.do?cpage=<%=currentPage-1%>';"
		                        class="btn btn-outline-secondary">&lt;</button>
		                <% } %>
		                <% for(int p=startPage; p<=endPage; p++) { %>
		                    <% if(p == currentPage) { %>
		                        <button type="button" disabled class="btn btn-outline-secondary"><%=p%></button>
		                    <% } else { %>
		                        <button type="button" onclick="location.href='<%=request.getContextPath()%>/adProIqList.do?cpage=<%=p%>';"
		                            class="btn btn-outline-secondary"><%=p%></button>
		                    <% } %>
		                <% } %>
		                
		                <% if(currentPage != maxPage) { %>
		                    <button type="button" onclick="location.href='<%=request.getContextPath()%>/adProIqList.do?cpage=<%=currentPage+1%>';"
		                        class="btn btn-outline-secondary">&gt;</button>
		                <% } %>
		                </div>
                    </th>
                </tr>
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->

</body>
</html>