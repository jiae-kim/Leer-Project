<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.leer.terms.model.vo.Terms"%>
<%
	Terms t = (Terms)request.getAttribute("terms");
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="../../common/adminMenubar.jsp" %>
	
	<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">이용약관</h2>
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
                            <h2 class="card-title" align="center">이용약관 상세</h2>
                            <div class="table-responsive pt-3">
                              <table class="tt1" border="1" align="center">
                                <tbody>
                                  <tr>
                                    <td width="300px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                      이용약관명
                                    </td>
                                    <td width="700px">
                                        <label for="" style="float: left;">&nbsp;&nbsp; <%=t.getTrmTitle()%></label> 
                                    </td>
                                  </tr>
                                  <tr>
                                    <td width="300px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                      상태
                                    </td>
                                    <td>
                                        <label for="" style="float: left;">&nbsp;&nbsp; <%=t.getTrmClass()%></label> 
                                    </td>
                                  </tr>
                                  <tr>
                                    <td width="300px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                      작성자
                                    </td>
                                    <td>
                                        <label for="" style="float: left;">&nbsp;&nbsp; <%=t.getMemId()%></label> 
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                              <br>
                              <table class="tarea" align="center" style="margin:5px 5px 5px 5px">
                                <textarea name="" id="" cols="133.5" rows="20" resize="none" placeholder=""><%=t.getContent()%></textarea>
                              </table>
                              <div class="">
                                <table class="tt1" border="1" align="center">
                                  <tbody>
                                    <tr>
                                      <td width="300px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                        이용약관명
                                      </td>
                                      <td width="700px">
                                        <label for="" style="float: left;">&nbsp;&nbsp; <%=t.getTrmRemarks()%></label> 
                                      </td>
                                    </tr>
                                  </tbody>                                  
                                </table>
                            </div>
                            <br>
                            <c:if test="${sessionMemberLv == 1}">
                            	<form action="<%=request.getContextPath()%>/adDelete.te" method=post>
                                    <div class="d-grid gap-3" style="text-align: center">
                                    	<a href="javascript: del();" id="btn" class="btn btn-dark" style="width:150px">이용약관 삭제</a>
                                        <a href="<%= request.getContextPath() %>/adTList.do?cpage=1" id="btn" class="btn btn-dark" style="width:150px">목록으로</a>
                                    </div>
								</form>                         
                            </c:if>
                          </div>
                        </div>
                        <!-- 이용약관삭제기능 -->	            
		                <script type="text/javascript">
							function del() {
								if (confirm('정말 삭제하시겠습니까?')) {
									window.location.href="<%=request.getContextPath()%>/adDelete.te?trmNo=<%=t.getTrmNo()%>";			   
								}
							}
						</script>
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