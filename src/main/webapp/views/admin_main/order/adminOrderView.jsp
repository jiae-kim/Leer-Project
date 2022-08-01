<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>결제내역 전체조회 페이지</title>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	<%@ include file="../../common/adminScript.jsp" %>
	
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">결제내역 전체조회</h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">조회</button>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- 목록 -->
                <div class="card">
                    <div class="card-body">
                        <!-- 전체조회  -->
                        <div class="btn-group">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">상품코드</a>
                                <a class="dropdown-item" href="#">입금상태</a>
                                <a class="dropdown-item" href="#">배송상태</a>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
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
                                    <th scope="col">등록 순번</th>
                                    <th scope="col">구매자 아이디</th>
                                    <th scope="col">상품코드</th>
                                    <th scope="col">상품명</th>
                                    <th scope="col">결제금액</th>
                                    <th scope="col">결제일시</th>
                                    <th scope="col">입금상태</th>
                                    <th scope="col">배송상태</th>
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
                                    <td>56</td>
                                    <td>user56</td>
                                    <td>FW-34</td>
                                    <td>나일론</td>
                                    <td>9,800</td>
                                    <td>2022-07-26</td>
                                    <td style="color: red;">미입금</td>
                                    <td style="color: red;">배송준비중</td>
                                </tr>
                                <tr>
                                    <th>
                                        <label class="customcheckbox">
                                            <input type="checkbox" class="listCheckbox" />
                                            <span class="checkmark"></span>
                                        </label>
                                    </th>
                                    <td>56</td>
                                    <td>user56</td>
                                    <td>FW-34</td>
                                    <td>나일론</td>
                                    <td>9,800</td>
                                    <td>2022-07-26</td>
                                    <td style="color: blue;">입금완료</td>
                                    <td style="color: blue;">배송완료</td>
                                </tr>
                                <tr>
                                    <th>
                                        <label class="customcheckbox">
                                            <input type="checkbox" class="listCheckbox" />
                                            <span class="checkmark"></span>
                                        </label>
                                    </th>
                                    <td>56</td>
                                    <td>user56</td>
                                    <td>FW-34</td>
                                    <td>나일론</td>
                                    <td>9,800</td>
                                    <td>2022-07-26</td>
                                    <td style="color: blue;">입금완료</td>
                                    <td style="color: red;">배송준비중</td>
                                </tr>
                            </tbody>
                            <tfoot>
                            </tfoot>
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
                        <div class="btn-group" role="group" aria-label="Basic example">
                            
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