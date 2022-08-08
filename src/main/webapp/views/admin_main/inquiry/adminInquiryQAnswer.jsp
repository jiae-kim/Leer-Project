<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.leer.product.model.vo.Inquiry" %>
<%
	Inquiry iq = (Inquiry)request.getAttribute("inquiry");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품문의 답변등록</title>
</head>
<body>

	<%@ include file="../../common/adminMenubar.jsp" %>
	
	<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">상품문의 상세조회</h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <!-- <input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">조회</button> -->
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                            </nav>
                            <!-- <button type="button" class="btn btn-info btn-lg">답변 등록</button> &nbsp;&nbsp;&nbsp;
                            <button type="button" class="btn btn-warning btn-lg">답변 수정</button> &nbsp;&nbsp;&nbsp; -->
                            <!-- Button trigger modal -->
                            <!-- <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#Modal2">
                                문의 삭제
                            </button> -->
                                <!-- Modal -->
                                <!-- <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">공지사항 삭제</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
                                                해당 글을 삭제하시겠습니까?
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger">네</button>
                                                <button type="button" class="btn btn-info" data-dismiss="modal">아니오</button>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
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
                <!-- Sales Cards  -->
                <!-- ============================================================== -->
                <div class="card mb-4">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body">
                          <a href="<%=request.getContextPath()%>/adProIqList.do?cpage=1" class="btn btn-dark" style="float:right">이전으로</a>
                            <!-- <h2 class="card-title" align="center">상품문의 상세 내용</h2> -->
                            <div class="table-responsive pt-3">
                              <table class="tt1" border="1" align="center">
                                <!--  상품코드, 상품명, 카테고리, 제목, 내용, -->
                                <tbody>
                                    <tr>
                                      <td width="150px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                        문의번호
                                        <td width="350px">
                                          <label for="" style="float: left;">&nbsp;&nbsp;<%=iq.getqNo()%></label> 
                                        </td>
                                      </td>

                                      <td width="150px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                        아이디
                                        <td width="350px">
                                          <label for="" style="float: left;">&nbsp;&nbsp;<%=iq.getMemId()%></label> 
                                        </td>
                                      </td>

                                      <td width="150px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                        등록일
                                        <td width="350px">
                                            <label for="" style="float: left;">&nbsp;&nbsp;<%=iq.getEnrollDate()%></label> 
                                        </td>
                                      </td>
                                    </tr>
                                    
                                    
                                    <tr>
                                      <td width="150px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                        문의유형
                                        <td width="350px">
                                          <label for="" style="float: left;">&nbsp;&nbsp;<%=iq.getqCategory()%></label> 
                                        </td>
                                      </td>
                                      
                                      <td width="150px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                        상품코드
                                        <td width="350px">
                                          <label for="" style="float: left;">&nbsp;&nbsp;<%=iq.getpCode2()%></label> 
                                        </td>
                                      </td>

                                      <td width="150px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                        상품명
                                        <td width="350px">
                                          <label for="" style="float: left;">&nbsp;&nbsp;<%=iq.getpName()%></label> 
                                        </td>
                                      </td>
                                    </tr>
                                    
                                    <tr>
                                      <td width="150px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                        제목
                                        <td width="350px" colspan="5">
                                            <label for="" style="float: left;">&nbsp;&nbsp;<%=iq.getTitle()%></label> 
                                        </td>
                                      </td>
                                    </tr>
                                  </tbody>
                              </table>

                              <br>
                              <table class="tarea" align="center" style="margin:5px 5px 5px 5px">
                                <textarea name="" id="" cols="133.5" rows="9" resize="none"><%=iq.getContent()%></textarea>
                              </table>
                              <br>

                              <table class="tarea" align="center" style="margin:5px 5px 5px 5px">
                                <h4>상품문의 답변등록</h4>
                                <textarea name="" id="" cols="133.5" rows="9" resize="none" placeholder="상품문의 답변 내용 입력"></textarea>
                              </table>

                              <div class="">
                                <table class="tt1" border="1" align="center">
                                </table>
                            </div>
                            <br>
                            <c:if test="${sessionMemberLv == 1}">
                                    <div class="d-grid gap-3" style="text-align: center">
                                      <a href="" class="btn btn-info" style="width:150px">등록</a>
                                      <a href="" id="btn" class="btn btn-warning" style="width:150px">수정</a>
                                      <a href="" id="btn" class="btn btn-danger" style="width:150px">삭제</a>
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