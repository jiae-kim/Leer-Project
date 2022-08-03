<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 전체조회 페이지</title>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	<%@ include file="../../common/adminScript.jsp" %>
	
	           <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">FAQ 전체 조회</h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">조회</button>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                            </nav>
                            <button type="button" class="btn btn-info btn-lg" onclick="location.href='<%=request.getContextPath()%>/views/admin_main/faq/adminFaqInsert.jsp'">등록</button> &nbsp;&nbsp;&nbsp;
                            <button type="button" class="btn btn-warning btn-lg">수정</button> &nbsp;&nbsp;&nbsp;
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#Modal2">
                                삭제
                            </button>
                                <!-- Modal -->
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
                                                해당 글을 삭제하시겠습니까?
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger">네</button>
                                                <button type="button" class="btn btn-info" data-dismiss="modal">아니오</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">카테고리 선택</button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">주문/결제</a>
                                <a class="dropdown-item" href="#">반품</a>
                                <a class="dropdown-item" href="#">적립금</a>
                                <a class="dropdown-item" href="#">로그인/회원가입</a>
                            </div>
                        </div>
                    </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead class="thead-light">
                                    <tr>
                                        <th>
                                            <label class="customcheckbox m-b-20">
                                                <input type="checkbox" id="mainCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <th scope="col">글번호</th>
                                        <th scope="col">카테고리</th>
                                        <th scope="col">제목</th>
                                        <th scope="col">작성자</th>
                                        <th scope="col">작성일</th>
                                        <th scope="col">조회수</th>
                                    </tr>
                                </thead>
                                <tbody class="customtable">
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>10</td>
                                        <td>주문/결제</td>
                                        <td>정기구독 관련 안내사항</td>
                                        <td>관리자1</td>
                                        <td>2022-07-26</td>
                                        <td>154</td>
                                    </tr>
                                    
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
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->

</body>
</html>