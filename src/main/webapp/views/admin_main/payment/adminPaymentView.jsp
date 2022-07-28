<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>결제내역 전체조회 페이지</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<%= request.getContextPath() %>/resources/css/jiae/assets/images/favicon.png">
    <!-- Custom CSS -->
    <link href="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/flot/css/float-chart.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<%= request.getContextPath() %>/resources/css/jiae/dist/css/style.min.css" rel="stylesheet">
</head>
<body>
	<div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin5">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon -->
                        <b class="logo-icon p-l-10">
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                        </b>
                        <!--End Logo icon -->
                        <!-- leer로고 -->
                        <!-- ============================================================== -->
                        <span class="logo-text">
                            <!-- dark Logo text -->
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <img src="<%= request.getContextPath() %>/resources/css/jiae/image/KakaoTalk_20220727_090856741.png" alt="" width="130px">
                        </span>
                        <!-- ============================================================== -->
                        <!-- Logo icon -->
                        <!-- <b class="logo-icon"> -->
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <!-- <img src="assets/images/logo-text.png" alt="homepage" class="light-logo" /> -->
                            
                        <!-- </b> -->
                        <!--End Logo icon -->
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto">
                        <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-24"></i></a></li>
                        <!-- ============================================================== -->
                        <!-- create new -->
                        <!-- ============================================================== -->                        
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <!-- 우측상단 -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-right">
                        <label for="">admin01</label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="<%= request.getContextPath() %>/resources/css/jiae/assets/images/users/1.jpg" alt="user" class="rounded-circle" width="31"></a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated">
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-user m-r-5 m-l-5"></i> My Profile</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
                            </div>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin5">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav" class="p-t-30">
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-face"></i><span class="hide-menu">회원관리</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="<%=request.getContextPath()%>/views/admin_main/adminMemberView.jsp" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 회원전체조회 </span></a></li>
                                <li class="sidebar-item"><a href="<%=request.getContextPath()%>/views/admin_main/adminLongSub.jsp" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 장기구독자조회 </span></a></li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">고객센터</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 공지사항 </span></a></li>
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 1:1상담 </span></a></li>
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> FAQ </span></a></li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-chart-bubble"></i><span class="hide-menu">제품관리</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 리뷰관리 </span></a></li>
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 상품문의 </span></a></li>
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 상품조회 </span></a></li>
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 상품등록 </span></a></li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-receipt"></i><span class="hide-menu">상품및결제관리</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 입출고관리 </span></a></li>
                                <li class="sidebar-item"><a href="<%= request.getContextPath() %>/views/admin_main/adminPaymentView.jsp" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu">결제내역조회</span></a></li>
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 환불관리 </span></a></li>
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 배송관리 </span></a></li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-move-resize-variant"></i><span class="hide-menu">홈페이지관리</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 이용약관 </span></a></li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-pencil"></i><span class="hide-menu">커뮤니티관리</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 공지사항 </span></a></li>
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 게시물관리 </span></a></li>
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 신고관리 </span></a></li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-chart-bar"></i><span class="hide-menu">통계</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 전체조회 </span></a></li>
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 게시글통계 </span></a></li>
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 매출통계 </span></a></li>
                                <li class="sidebar-item"><a href="" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 별점통계 </span></a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
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
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- 전체조회  -->
                <div class="btn-group">
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">상품코드</a>
                        <a class="dropdown-item" href="#">입금상태</a>
                        <a class="dropdown-item" href="#">배송상태</a>
                    </div>
                </div>
                <!-- ============================================================== -->

                <!-- ============================================================== -->
                <!-- 목록 -->
                <div class="card-body">
                </div>
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
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
	
	<!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="<%= request.getContextPath() %>/resources/css/jiae/dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="<%= request.getContextPath() %>/resources/css/jiae/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="<%= request.getContextPath() %>/resources/css/jiae/dist/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <!-- <script src="dist/js/pages/dashboards/dashboard1.js"></script> -->
    <!-- Charts js Files -->
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/flot/excanvas.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/flot/jquery.flot.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/flot/jquery.flot.pie.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/flot/jquery.flot.time.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/flot/jquery.flot.stack.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/flot/jquery.flot.crosshair.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/jiae/dist/js/pages/chart/chart-page-init.js"></script>
    <!-- 체크박스 전체선택 -->
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/jiae/assets/extra-libs/multicheck/jquery.multicheck.js"></script>
	
</body>
</html>