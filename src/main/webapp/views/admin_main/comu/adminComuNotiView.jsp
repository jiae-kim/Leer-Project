<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.community.model.vo.ComuNotice, com.leer.common.model.vo.PageInfo"%>   
<% 
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<ComuNotice> list = (ArrayList<ComuNotice>)request.getAttribute("list");
		
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
#btnnn{
	margin: -40px 0px 900px 10px;
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
                        <h2 class="page-title">커뮤니티 공지사항</h2>
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
                        <h5 class="card-title m-b-0" style="vertical-align:45px">공지사항</h5>
                        <div class="btn-group bb1" style="margin: 0px 0px 150px 0px;">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">전체조회</a>
                                <a class="dropdown-item" href="#">등록일 순 조회</a>
                            </div>
                        </div>
                        <!-- /views/admin_main/comu_noti/adminComuNotiDetail.jsp -->
                        <button onClick="location.href='<%=request.getContextPath()%>/adEnrollForm.no';"
                        		class="btn btn-dark" style="float:right" id="btnnn">공지사항 등록</button>
                        <button onClick="location.href='<%=request.getContextPath()%>/views/admin_main/comu/adminNotiModify.jsp'" 
                        		class="btn btn-dark" style="float:right" id="btnn">공지사항 수정</button>
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
                                        <th scope="col">마지막수정일</th>
                                    </tr>
                                </thead>
                                <tbody class="custom">
                                	<% for(ComuNotice c : list) { %>
	                                    <tr onclick="location.href='<%=request.getContextPath()%>/adComuNotiDetail.do?no=<%=c.getNotiNo()%>';">
	                                        <th>
	                                            <label class="customcheckbox">
	                                            	<input type="checkbox" class="listCheckbox" />
	                                                <span class="checkmark"></span>
	                                            </label>
	                                        </th>
	                                        <td><%=c.getNotiNo()%></td>
	                                        <td><%=c.getTitle()%></td>
	                                        <td><%=c.getMemId()%></td>
	                                        <td><%=c.getEnrollDate()%></td>
	                                        <td><%=c.getModifyDate()%></td>
	                                    </tr>
	                                <% } %>
                                  </tbody>
                               <tfoot>
                                    <tr align="center">
                                        <th colspan="10">	
                                            <div class="btn-group paging-area" role="group" aria-label="Basic example">                                            
                                            	<% if(currentPage != 1) { %>
	                                                <button type="button" onclick="location.href='<%=request.getContextPath()%>/adComuNotiList.do?cpage=<%=currentPage-1%>';"  
	                                                		class="btn btn-outline-secondary">&lt;</button>
	                                            <% } %>
	                                            <% for(int p=startPage; p<=endPage; p++) { %>
	                                            	<% if(p == currentPage) { %>
	                                                	<button type="button" disabled class="btn btn-outline-secondary"><%=p%></button>
	                                                <% } else { %>
	                                                	<button type="button" onclick="location.href='<%=request.getContextPath()%>/adComuNotiList.do?cpage=<%=p%>';" 
	                                                			class="btn btn-outline-secondary"><%=p%></button>
	                                                <% } %>
	                                            <% } %>
	                                            
	                                            <% if(currentPage != maxPage) { %>
	                                            	<button type="button" onclick="location.href='<%=request.getContextPath()%>/adComuNotiList.do?cpage=<%=currentPage+1%>';" 
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