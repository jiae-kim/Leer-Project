<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.terms.model.vo.Terms, com.leer.common.model.vo.PageInfo"%> 
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Terms> list = (ArrayList<Terms>)request.getAttribute("list");
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
                        <h2 class="page-title">홈페이지관리</h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">Search</button>
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
                        <h5 class="card-title m-b-0" style="vertical-align:45px">이용약관</h5>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="btn-group bb1" style="margin: 0px 0px 150px 0px;">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">전체조회</a>
                                <a class="dropdown-item" href="#">등록일 순 조회</a>
                            </div>
                        </div>
                        <button class="btn btn-dark bb2" onClick="location.href='<%=request.getContextPath()%>/views/admin_main/terms/adminTermsEnroll.jsp'" style="float:right" id="btnn">이용약관 등록</button>
                    </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead class="thead-light">
                                    <tr>
                                        <th width="1">
                                            <label class="customcheckbox m-b-20">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <th scope="col">No.</th>
                                        <th scope="col">상태</th>
                                        <th scope="col">이용약관명</th>
                                        <th scope="col">게시등록일</th>
                                        <th scope="col">수정일자</th>
                                        <th scope="col">작성자</th>
                                        <th scope="col">비고</th>
                                    </tr>
                                </thead>
                                <tbody class="custom">
                                	<% for(Terms t : list) { %>
	                                    <tr onclick="location.href='<%=request.getContextPath()%>/views/admin_main/terms/adminTermsDetail.jsp'">
	                                        <th>
	                                            <label class="customcheckbox">
	                                                <span class="checkmark"></span>
	                                            </label>
	                                        </th>
	                                        <td><%=t.getTrmNo()%></td>
	                                        <td><%=t.getTrmClass()%></td>
	                                        <td><%=t.getTrmTitle()%></td>
	                                        <td><%=t.getEnrollDate()%></td>
	                                        <td><%=t.getModifyDate()%></td>
	                                        <td><%=t.getMemId()%></td>
	                                        <td></td>
	                                    </tr>
                                    <% } %>
                                </tbody>
                                <tfoot>
                                    <tr align="center">
                                        <th colspan="10">
                                            <div class="btn-group" role="group" aria-label="Basic example">
                                                <button type="button" class="btn btn-outline-secondary"><</button>
                                                <button type="button" class="btn btn-outline-secondary">1</button>
                                                <button type="button" class="btn btn-outline-secondary">2</button>
                                                <button type="button" class="btn btn-outline-secondary">3</button>
                                                <button type="button" class="btn btn-outline-secondary">4</button>
                                                <button type="button" class="btn btn-outline-secondary">5</button>
                                                <button type="button" class="btn btn-outline-secondary">6</button>
                                                <button type="button" class="btn btn-outline-secondary">7</button>
                                                <button type="button" class="btn btn-outline-secondary">8</button>
                                                <button type="button" class="btn btn-outline-secondary">9</button>
                                                <button type="button" class="btn btn-outline-secondary">10</button>
                                                <button type="button" class="btn btn-outline-secondary">></button>
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
</body>
</html>