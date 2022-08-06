<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.common.model.vo.Category"%>
<%
	ArrayList<Category> list = (ArrayList<Category>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<title>상품 등록</title>
<meta charset="UTF-8">
<!-- datepicker css -->
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	<%@ include file="../../common/adminScript.jsp" %>

	<div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <br><br><br>
                <h2 class="page-title">상품 등록 및 수정</h2>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
    <form action="<%=request.getContextPath()%>/adProInsert.do" method="post" enctype="multipart/form-data">
        <div class="card-body">
            <!-- 상품명 -->
            <div class="form-group row">
                <label for="fname" class="col-sm-1 control-label col-form-label">상품명</label>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="pname" id="fname" placeholder="잡지명을 입력하세요" required>
                </div>
            </div>
            <!-- 출간일 -->
            <div class="form-group row">
                <label for="fname" class="col-sm-1 control-label col-form-label">출간일</label>
                <input type="text" name="publishmonth2" class="form-control col-sm-2" id="datepicker-autoclose" placeholder="mm/dd/yyyy" style="margin-left: 10px;">
                <div class="input-group-append">
                    <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                </div>
            </div>
            <!-- 발행사 -->
            <div class="form-group row">
                <label for="fname" class="col-sm-1 control-label col-form-label">발행사</label>
                <div class="col-sm-2">
                    <input type="text" name="publisher" class="form-control" id="fname" placeholder="발행사를 입력하세요" required>
                </div>
            </div>
            <!-- 카테고리 -->
            <div class="form-group row">
                <label class="col-sm-1">카테고리</label>
                <div class="col-sm-2">
                    <select class="select2 form-control custom-select" required name="category">
                        <option hidden>카테고리 선택</option>
                        <% for(Category c : list) { %>
                        	<option value="<%=c.getCategoryNo()%>"><%=c.getCategoryName()%></option>
                        <% } %>	
                        <!-- <option value="">10</option> 	패션/여성 
                        <option value="">20</option> 	    라이프/인테리어
                        <option value="">30</option> 	    문화/예술
                        <option value="">40</option> 	    여행/취미 
                        <option value="">50</option> 	    시사/경제
                        <option value="">60</option> 	    교육/과학 -->
                    </select>
                </div>
            </div>
            <!-- 상품코드 -->
            <div class="form-group row">
                <label class="col-sm-1">상품코드</label>
                <div class="col-sm-2">
                    <select class="select2 form-control custom-select" name="pcode" required>
                        <option hidden>상품코드 선택</option>
                        <option>FW-</option>
                        <option>LI-</option>
                        <option>CA-</option>
                        <option>TH-</option>
                        <option>SE-</option>
                        <option>ES-</option>
                    </select>
                </div>
            </div>
            <!-- 판매가 -->
            <div class="form-group row">
                <label for="fname" class="col-sm-1 control-label col-form-label">판매가</label>
                <div class="col-sm-2">
                    <input type="text" name="price" class="form-control" id="fname" placeholder="가격을 입력하세요" required>
                </div>
            </div>
            <!-- 재고 -->
            <div class="form-group row">
                <label for="fname" class="col-sm-1 control-label col-form-label">재고</label>
                <div class="col-sm-2">
                    <input type="text"  name="stock" class="form-control" id="fname" placeholder="입고수량을 입력하세요" required>
                </div>
            </div>
            <!-- 표지 이미지 -->
            <div class="form-group row">
                <label class="col-md-1">표지 이미지</label>
                <div class="col-sm-3">
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" id="validatedCustomFile" name="url1">
                        <label class="custom-file-label" for="validatedCustomFile">표지 이미지를 선택하세요</label>
                        <!-- <div class="invalid-feedback">Example invalid custom file feedback</div> -->
                    </div>
                </div>
                <!-- Button trigger modal -->
                <!-- <button type="button" class="btn btn-light margin-5" data-toggle="modal" data-target="#Modal3">
                    표지 이미지 미리보기
                </button> -->
                <!-- Modal -->
                <!-- <div class="modal fade" id="Modal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">표지 이미지 미리보기</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <img src="assets/images/background/img5.jpg" width="100% ">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
            <!-- 상세 이미지 -->
            <div class="form-group row">
                <label class="col-md-1">상세 이미지</label>
                <div class="col-sm-3">
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" id="validatedCustomFile" name="url2">
                        <label class="custom-file-label" for="validatedCustomFile">상세 이미지를 선택하세요</label>
                        <!-- <div class="invalid-feedback">Example invalid custom file feedback</div> -->
                    </div>
                </div>
                <!-- Button trigger modal -->
                <!-- <button type="button" class="btn btn-light margin-5" data-toggle="modal" data-target="#Modal3">
                    상세 이미지 미리보기
                </button> -->
                <!-- Modal -->
                <!-- <div class="modal fade" id="Modal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">상세 이미지 미리보기</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <img src="assets/images/background/img5.jpg" width="100% ">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
            <!-- 부록 이미지 -->
            <div class="form-group row">
                <label class="col-md-1">부록 이미지</label>
                <div class="col-sm-3">
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" id="validatedCustomFile" name="url3">
                        <label class="custom-file-label" for="validatedCustomFile">부록 이미지를 선택하세요</label>
                        <!-- <div class="invalid-feedback">Example invalid custom file feedback</div> -->
                    </div>
                </div>
                <!-- Button trigger modal -->
                <!-- <button type="button" class="btn btn-light margin-5" data-toggle="modal" data-target="#Modal3">
                    부록 이미지 미리보기
                </button> -->
                <!-- Modal -->
                <!-- <div class="modal fade" id="Modal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">부록 이미지 미리보기</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <img src="assets/images/background/img5.jpg" width="100% ">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
            <!-- 배송비 -->
            <div class="form-group row">
                <label class="col-sm-1">배송비</label>
                <div class="col-sm-2">
                    <select name="deliFee" class="select2 form-control custom-select" required>
                        <option hidden>금액(원) 선택</option>
                        <option value="3000">3000</option>
                        <option value="2500">2500</option>
                        <option value="0">무료</option>
                    </select>
                </div>
            </div>
            <!-- 적립금 -->
            <div class="form-group row">
                <label class="col-sm-1">적립금</label>
                <div class="col-sm-2">
                    <select name="point" class="select2 form-control custom-select" required>
                        <option hidden>적립(%) 선택</option>
                        <option value="0.1">10</option>
                        <option value="0.2">20</option>
                        <option value="0.3">30</option>
                        <option value="0.4">40</option>
                        <option value="0.5">50</option>
                    </select>
                </div>
            </div>
            <!-- 버튼 -->
            <div class="border-top">
                <div class="card-body">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Modal2">
                        등록 / 수정
                    </button>
                        <!-- Modal -->
                        <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">상품 등록 및 수정</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
                                        해당 상품을 등록 또는 수정하시겠습니까?
                                    </div>
                                    <div class="modal-footer">
                                        <!-- form요소 안에 submit 버튼있어야 작성값 넘어감 -->
                                        <button type="submit" class="btn btn-primary">네</button>
                                        <button type="reset" class="btn btn-dark" data-dismiss="modal">아니오</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <button type="reset" class="btn btn-dark btn-lg">뒤로가기</button>
                </div>
            </div>
        </div>
    </form>
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
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
    
    <!-- ============================================================== -->
	<!-- autoclose datepicker -->
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script>
    jQuery('.mydatepicker').datepicker();
        jQuery('#datepicker-autoclose').datepicker({
            autoclose: true,
            todayHighlight: true
        });
        var quill = new Quill('#editor', {
            theme: 'snow'
        });
    </script>

</body>
</html>