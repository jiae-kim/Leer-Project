<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 취소 전체조회 페이지</title>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	<%@ include file="../../common/adminScript.jsp" %>
	
	<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">상품 취소 전체조회</h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">조회</button>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                            </nav>
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#Modal2">
                                상품 취소 등록
                            </button>
                                <!-- Modal -->
                                <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">상품 취소 등록</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
                                                <table>
                                                    <tr>
                                                        <td>주문번호</td>
                                                        <td><input type="text" name="orNo" required placeholder="주문번호를 입력하세요"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>상품코드</td>
                                                        <td><input type="text" name="pCode" required placeholder="상품코드를 입력하세요"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>상품명</td>
                                                        <td><input type="text" name="pName" required placeholder="잡지명을 입력하세요"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>발간월</td>
                                                        <td>
                                                            <select name="" id="" required class="col-md-11">
                                                                <option value="" disabled selected hidden>해당 호를 선택하세요</option>
                                                                <option value="">01월호</option>
                                                                <option value="">02월호</option>
                                                                <option value="">03월호</option>
                                                                <option value="">04월호</option>
                                                                <option value="">05월호</option>
                                                                <option value="">06월호</option>
                                                                <option value="">07월호</option>
                                                                <option value="">08월호</option>
                                                                <option value="">09월호</option>
                                                                <option value="">10월호</option>
                                                                <option value="">11월호</option>
                                                                <option value="">12월호</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class>취소일</td>
                                                        <td>
                                                            <div class="input-group">
                                                                <input type="text" class="form-control col-md-9" id="datepicker-autoclose" placeholder="mm/dd/yyyy">
                                                                <div class="input-group-append">
                                                                    <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>취소량</td>
                                                        <td><input type="text" name="" required placeholder="수량을 입력하세요"></td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger">네</button>
                                                <button type="button" class="btn btn-info" data-dismiss="modal">아니오</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <!-- <button type="button" class="btn btn-warning btn-lg">상품 출고</button> &nbsp;&nbsp;&nbsp; -->
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
                <div class="btn-group">
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">상품명</a>
                        <a class="dropdown-item" href="#">출간일</a>
                        <a class="dropdown-item" href="#">취소일</a>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- 목록 -->
                <div class="card">
                    <div class="card-body">
                        <!-- <h5 class="card-title m-b-0">상품전체조회</h5> -->
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
                                        <th scope="col">등록순번</th>
                                        <th scope="col">주문번호</th>
                                        <th scope="col">상품코드</th>
                                        <th scope="col">상품명</th>
                                        <th scope="col">출간일</th>
                                        <th scope="col">취소일</th>
                                        <th scope="col">취소수량</th>
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
                                        <td>123-456</td>
                                        <td>FW-14</td>
                                        <td>보그</td>
                                        <td>08월호</td>
                                        <td>08/01/2202</td>
                                        <td>200</td>
                                        <td>100</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>56</td>
                                        <td>123-456</td>
                                        <td>FW-14</td>
                                        <td>보그</td>
                                        <td>08월호</td>
                                        <td>08/01/2202</td>
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
                                        <td>123-456</td>
                                        <td>FW-14</td>
                                        <td>보그</td>
                                        <td>08월호</td>
                                        <td>08/01/2202</td>
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
                                        <td>123-456</td>
                                        <td>FW-14</td>
                                        <td>보그</td>
                                        <td>08월호</td>
                                        <td>08/01/2202</td>
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
                                        <td>123-456</td>
                                        <td>FW-14</td>
                                        <td>보그</td>
                                        <td>08월호</td>
                                        <td>08/01/2202</td>
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
                                        <td>123-456</td>
                                        <td>FW-14</td>
                                        <td>보그</td>
                                        <td>08월호</td>
                                        <td>08/01/2202</td>
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
                                        <td>123-456</td>
                                        <td>FW-14</td>
                                        <td>보그</td>
                                        <td>08월호</td>
                                        <td>08/01/2202</td>
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
                                        <td>123-456</td>
                                        <td>FW-14</td>
                                        <td>보그</td>
                                        <td>08월호</td>
                                        <td>08/01/2202</td>
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
                                        <td>123-456</td>
                                        <td>FW-14</td>
                                        <td>보그</td>
                                        <td>08월호</td>
                                        <td>08/01/2202</td>
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
                                        <td>123-456</td>
                                        <td>FW-14</td>
                                        <td>보그</td>
                                        <td>08월호</td>
                                        <td>08/01/2202</td>
                                        <td>200</td>
                                        <td>300</td>
                                    </tr>
                                    
                                    
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