<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상품 재고 전체조회 페이지</title>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	<%@ include file="../../common/adminScript.jsp" %>
	
	<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">상품 재고 현황 조회</h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">조회</button>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                            </nav>
                            <button type="button" class="btn btn-info btn-lg">상품 입고</button> &nbsp;&nbsp;&nbsp;
                            <button type="button" class="btn btn-warning btn-lg">상품 출고</button> &nbsp;&nbsp;&nbsp;
                            <button type="button" class="btn btn-dark btn-lg">상품 취소</button> &nbsp;&nbsp;&nbsp;
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
                <!-- 전체조회  -->
                <!-- ============================================================== -->
                <div class="card">
                    <div class="card-body" style="height:55px">
                        <!-- <h5 class="card-title m-b-0">상품전체조회</h5> -->
                        <!-- 조회방법 선택 -->
                        <div class="btn-group">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">상품코드</a>
                                <a class="dropdown-item" href="#">상품명</a>
                                <a class="dropdown-item" href="#">출간일</a>
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
                                        <th scope="col">입고번호</th>
                                        <th scope="col">상품코드</th>
                                        <th scope="col">상품명</th>
                                        <th scope="col">출간일</th>
                                        <th scope="col">입고수량</th>
                                        <th scope="col">출고수량</th>
                                        <th scope="col">재고수량</th>
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
                                        <td>FW-14</td>
                                        <td>보그</td>
                                        <td>22-08</td>
                                        <td>500</td>
                                        <td>200</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>56</td>
                                        <td>FW-14</td>
                                        <td>보그</td>
                                        <td>22-08</td>
                                        <td>500</td>
                                        <td>200</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                    
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
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->

</body>
</html>