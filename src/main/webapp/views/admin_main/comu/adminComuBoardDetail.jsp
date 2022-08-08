<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.leer.community.model.vo.ComuBoard" %>
<%
	ComuBoard cb = (ComuBoard)request.getAttribute("comuBoard");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.contentBox{
		border:1px solid gray;
		width: 1000px;
		height: 500px;	
		margin-left:285px;
	}
</style>
</head>
<body>

	<%@ include file="../../common/adminMenubar.jsp" %>
	
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
                <div class="card mb-4">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body">
                            <h2 class="card-title" align="center">커뮤니티 게시글 상세조회</h2>
                            <div class="table-responsive pt-3">
                              <table class="tt1" border="1" align="center">
                                <tbody>
                                    <tr>
                                      <td width="150px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                        제목
                                      </td>
                                      <td width="350px">
                                          <label for="" style="float: left;">&nbsp;&nbsp; <%=cb.getTitle()%></label> 
                                      </td>
                                      <td width="150px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                        카테고리
                                      </td>
                                      <td width="350px">
                                          <label for="" style="float: left;">&nbsp;&nbsp; <%=cb.getCategoryName()%></label> 
                                      </td>
                                    </tr>
                                    
                                    <tr>
                                      <td width="" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                        작성자
                                      </td>
                                      <td>
                                          <label for="" style="float: left;">&nbsp;&nbsp; <%=cb.getMemId()%></label> 
                                      </td>
                                      <td width="" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                        등록일
                                      </td>
                                      <td>
                                          <label for="" style="float: left;">&nbsp;&nbsp; <%=cb.getEnrollDate()%></label> 
                                      </td>
                                    </tr>
                                  </tbody>
                              </table>
                              <br>
                              <table class="tarea" align="center" style="margin:5px 5px 5px 5px">
                              <div class="contentBox">
                                <p style="font-size:17px"><%=cb.getContent()%></p>
                              </div>
                              </table>
                              <div class="">
                                <table class="tt1" border="1" align="center">
                                  <tbody>
                                  </tbody>                                  
                                </table>
                            </div>
                            <br>
                            <c:if test="${sessionMemberLv == 1}">
                                    <div class="d-grid gap-3" style="text-align: center">
                                        <a href="" id="btn" class="btn btn-dark" style="width:150px">게시물 삭제</a>
                                        <a href="<%= request.getContextPath() %>/adList.co?cpage=1" id="btn" class="btn btn-dark" style="width:150px">목록으로</a>
                                    </div>
                            </c:if>
                          </div>
                        </div>
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