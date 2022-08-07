<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEER_ADMIN_PAGE</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp" %>
	
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h2 class="page-title">관리자 메인페이지</h2>
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
                <div class="row">
                    <!-- Column -->
                    <div class="col-md-6 col-lg-2 col-xlg-3">
                        <div class="card card-hover1">
                            <div class="box bg-cyan text-center c1">
                                <h4 class="text-white">1:1문의</h6>
                                <h4 class="text-white">533</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <div class="col-md-6 col-lg-4 col-xlg-3">
                        <div class="card card-hover2">
                            <div class="box bg-success text-center c2">
                                <h4 class="text-white">상품 리뷰</h4>
                                <h4 class="text-white">320</h4>
                            </div>
                        </div>
                    </div>
                     <!-- Column -->
                    <div class="col-md-6 col-lg-2 col-xlg-3">
                        <div class="card card-hover3">
                            <div class="box bg-warning text-center c3">
                                <h4 class="text-white">신고 게시물</h4>
                                <h4 class="text-white">53</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <div class="col-md-6 col-lg-4 col-xlg-3">
                        <div class="card card-hover4">
                            <div class="box bg-danger text-center c4">
                                <h4 class="text-white">커뮤니티 게시글</h4>
                                <h4 class="text-white">67</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <div class="blank">
                    <!-- ============================================================== -->
                    <!-- 게시글 -->
                    <!-- ============================================================== -->
                    <div class="sCard">
                        <div class="ccard">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">커뮤니티관리</h5>
                            </div>
                            <table class="table">
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td width="1100px">공지사항작성</td>
                                      <td width="1000px">2022-08-01</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">2</th>
                                      <td>게시물관리</td>
                                      <td>2022-07-26</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>신고관리</td>
                                        <td>2022-07-26</td>
                                      </tr>
                                  </tbody>
                            </table>
                        </div>
                        <div class="ccard">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">회원관리</h5>
                            </div>
                            <table class="table">
                                <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td width="1900px">회원전체조회</td>
                                      <td width="1000px">2022-07-26</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">2</th>
                                      <td>장기구독자조회</td>
                                      <td>2022-07-26</td>
                                    </tr>
                                  </tbody>
                            </table>
                        </div>
                        <div class="ccard">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">고객센터관리</h5>
                            </div>
                            <table class="table">
                                <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td width="1400px">공지사항</td>
                                      <td width="1000px">2022-07-26</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">2</th>
                                      <td>1:1상담</td>
                                      <td>2022-07-26</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">3</th>
                                      <td>FAQ</td>
                                      <td>2022-07-26</td>
                                    </tr>
                                  </tbody>
                            </table>
                        </div>
                        <div class="ccard">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">제품관리</h5>
                            </div>
                            <table class="table">
                                <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td width="1300px">상품리뷰 관리</td>
                                      <td width="1000px">2022-07-26</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">2</th>
                                      <td>상품문의</td>
                                      <td>2022-07-26</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>상품등록</td>
                                        <td>2022-07-26</td>
                                      </tr>
                                  </tbody>
                            </table>
                        </div>                           
                    </div>
                    <!-- ============================================================== -->
                    <!-- 게시글 끝 / 하단 네모칸 시작 -->
                    <!-- ============================================================== -->    
                    </div>
                    <div class="col-md-6 col-lg-2 col-xlg-3">
                        <div class="card card-hover5">
                            <div class="box bg-info text-center c5">
                                <h4 class="text-white">오늘 방문자 수 1,100</h4>
                                <h4 class="text-white">누적 방문자 수 5,685,122</h4>
                            </div>
                        </div>
                    </div>
                     <!-- Column -->
                    <div class="col-md-6 col-lg-2 col-xlg-3">
                        <div class="card card-hover6">
                            <div class="box bg-cyan text-center c6">
                                <h4 class="text-white">오늘 주문수량 152</h4>
                                <h4 class="text-white">어제 주문수량 255</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <div class="col-md-6 col-lg-2 col-xlg-3">
                        <div class="card card-hover7">
                            <div class="box bg-success text-center c7">
                                <h4 class="text-white">발송대기 200</h4>
                                <h4 class="text-white">발송중 224</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Recent comment and chats -->
                <!-- ============================================================== -->
                
                <!-- ============================================================== -->
                <!-- Recent comment and chats -->
                <!-- ============================================================== -->
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