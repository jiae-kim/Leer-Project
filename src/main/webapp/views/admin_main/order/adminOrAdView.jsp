<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 및 배송 전체조회 페이지</title>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	<%@ include file="../../common/adminScript.jsp" %>
	
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">주문내역 전체조회</h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">조회</button>
                    	<div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                    </nav>
                    <!-- 운송장 등록 Button trigger modal -->
                    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#deleteReview">
                        운송장 등록
                    </button>
                    <!-- Modal -->
                    <div class="modal fade" id="deleteReview" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">운송장 등록</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
                                    <table>
                                        <tr>
                                            <td>택배사</td>
                                            <td>
                                                <select name="" id="" class="col-md-12">
                                                    <option value="" disabled selected hidden>택배사를 선택하세요</option>
                                                    <option value="">대한통운</option>
                                                    <option value="">한진택배</option>
                                                    <option value="">우체국택배</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>운송장 번호</td>
                                            <td><input type="text" name="" class="col-md-12" required placeholder="운송장 번호('-'포함)"></td>
                                        </tr>
                                    </table>        
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-info">등록</button>
                                    <button type="reset" class="btn btn-dark" data-dismiss="modal">취소</button>
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
                                    <th scope="col">회원번호</th>
                                    <th scope="col">주문번호</th>
                                    <th scope="col">상품명</th> <!-- join 상품등록 : 잡지명 -->
                                    <th scope="col">결제일시</th> <!-- 주문날짜 컬럼 -->
                                    <th scope="col">결제금액</th> <!-- 총가격 컬럼 -->
                                    <th scope="col">배송상태</th> <!-- 배송현황 컬럼 -->
                                    <th scope="col">택배사</th>
                                    <th scope="col">운송장번호</th>	
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
                                    <td>21</td>
                                    <td>주문번호</td>
                                    <td>나일론</td>
                                    <td>2022-07-26</td>
                                    <td>9,800</td>
                                    <td>배송상태</td>
                                    <td>한진택배</td>
                                    <td>운송장번호</td>
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