<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.leer.common.model.vo.Category2"%>
<%
	ArrayList<Category2> list = (ArrayList<Category2>)request.getAttribute("list");
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
                <div class="card mb-4">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body">
                            <h2 class="card-title" align="center">이용약관 등록</h2>
                            <div class="table-responsive pt-3">
                              <table class="tt1" border="1" align="center">
                                <tbody>
                                  <tr>
                                    <td width="300px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                      이용약관명
                                    </td>
                                    <td width="700px">
                                        <input type="text" placeholder="이용약관명 입력">
                                    </td>
                                  </tr>
                                  <tr>
                                    <td width="300px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                      상태
                                    </td>
                                    <td>
                                        <select name="address">
                                            <option value="upload">작성완료</option>
                                            <option value="ing">작성중</option>
                                            <option value="discuss">회의중</option>
                                            <option value="keep">보류</option>
                                        </select>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td width="300px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                      작성자
                                    </td>
                                    <td>
                                      <input type="text" placeholder="관리자아이디 자동노출">
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                              <br>
                              <table class="tarea" align="center" style="margin:5px 5px 5px 5px">
                                <textarea name="" id="" cols="133.5" rows="20" resize="none" placeholder="이용약관 내용 입력"></textarea>
                              </table>
                              <div class="">
                                <table class="tt1" border="1" align="center">
                                  <tbody>
                                    <tr>
                                      <td width="300px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                        이용약관명
                                      </td>
                                      <td width="700px">
                                        <input type="text" placeholder="비고 입력">
                                      </td>
                                    </tr>
                                  </tbody>                                  
                                </table>
                            </div>
                            <br>
                            <c:if test="${sessionMemberLv == 1}">
                                    <div class="d-grid gap-3" style="text-align: center">
                                        <a href="" id="btn" class="btn btn-dark" style="width:150px">취소</a>
                                        <a href="" class="btn btn-dark" style="width:150px">이용약관등록</a>
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