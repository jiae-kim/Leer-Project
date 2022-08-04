<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.community.model.vo.ComuBoard, com.leer.common.model.vo.PageInfo"%> 
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<ComuBoard> list = (ArrayList<ComuBoard>)request.getAttribute("list");
	
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
.custom>tr:hover {
    cursor: pointer;
    opacity: 0.7;
    background:#cecece;
    color:dark;
}
</style>
</head>
<body>

	<%@ include file="../../common/adminMenubar.jsp" %>
	
            <!-- ============================================================== -->
             <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">게시물관리</h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="form-control mr-sm-2" type="text" placeholder="Search" hidden>
                        <button class="btn btn-success" type="submit" hidden>Search</button>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Sales Cards  -->
                <!-- ============================================================== -->
                <div class="card">
                    <div class="card-body" style="height:55px">
                        <h5 class="card-title m-b-0" style="vertical-align:45px">커뮤니티</h5>
                        <div class="btn-group bb1" style="margin: 0px 0px 150px 0px;">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">전체조회</a>
                                <a class="dropdown-item" href="#">등록일 순 조회</a>
                                <a class="dropdown-item" href="#">조회수 많은순으로 조회</a>
                                <a class="dropdown-item" href="#">좋아요 많은순으로 조회</a>
                            </div>
                        </div>
                        <button class="btn btn-dark" style="float:right" id="btnn" data-toggle="modal" data-target="#Modal2">게시물 삭제</button>
                        <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">게시물 삭제</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
                                                해당 게시물을 삭제하시겠습니까?
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger">네</button>
                                                <button type="button" class="btn btn-info" data-dismiss="modal">아니오</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                    </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead class="thead-light">
                                    <tr>
                                        <th width="1">
                                            <label class="customcheckbox m-b-20">
                                                <input type="checkbox" id="mainCheckbox"/>
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <th scope="col">No.</th>
                                        <th scope="col">제목</th>
                                        <th scope="col">작성자</th>
                                        <th scope="col">작성일</th>
                                        <th scope="col">조회수</th>
                                        <th scope="col">좋아요수</th>
                                        <th scope="col">신고유무</th>
                                    </tr>
                                </thead>
                                <tbody class="custom">
                                	<% for(ComuBoard cb : list) { %>
	                                    <tr onclick="location.href='<%=request.getContextPath()%>/adDetail.co?no=<%=cb.getComuNo()%>';">
	                                        <th>
	                                            <label class="customcheckbox">
	                                                <input type="checkbox" class="listCheckbox" />
	                                                <span class="checkmark"></span>
	                                            </label>
	                                        </th>
	                                        <td><%=cb.getComuNo()%></td>
	                                        <td><%=cb.getTitle()%></td>
	                                        <td><%=cb.getMemId()%></td>
	                                        <td><%=cb.getEnrollDate()%></td>
	                                        <td><%=cb.getViewCount()%></td>
	                                        <td>0</td>
	                                        <td><%=cb.getReportYn()%></td>
	                                    </tr>
                                    <% } %>
                                </tbody>
                                <tfoot>
                                    <tr align="center">
                                        <th colspan="10">
                                            <div class="btn-group" role="group" aria-label="Basic example">
                                                <% if(currentPage != 1) { %>
	                                                <button type="button" onclick="location.href='<%=request.getContextPath()%>/adList.co?cpage=<%=currentPage-1%>';"  
	                                                		class="btn btn-outline-secondary">&lt;</button>
	                                            <% } %>
	                                            <% for(int p=startPage; p<=endPage; p++) { %>
	                                            	<% if(p == currentPage) { %>
	                                                	<button type="button" disabled class="btn btn-outline-secondary"><%=p%></button>
	                                                <% } else { %>
	                                                	<button type="button" onclick="location.href='<%=request.getContextPath()%>/adList.co?cpage=<%=p%>';" 
	                                                			class="btn btn-outline-secondary"><%=p%></button>
	                                                <% } %>
	                                            <% } %>
	                                            
	                                            <% if(currentPage != maxPage) { %>
	                                            	<button type="button" onclick="location.href='<%=request.getContextPath()%>/adList.co?cpage=<%=currentPage+1%>';" 
	                                                		    class="btn btn-outline-secondary">&gt;</button>
	                                            <% } %>	                   
                                              </div>
                                        </th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
                
            </footer>
	<!-- 스크립트 시작 -->
	<!-- 체크박스 전체 선택 -->
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/extra-libs/multicheck/jquery.multicheck.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/extra-libs/DataTables/datatables.min.js"></script>
    <script>
        /****************************************
         *       Basic Table                   *
         ****************************************/
        $('#zero_config').DataTable();
    </script>
</body>
</html>