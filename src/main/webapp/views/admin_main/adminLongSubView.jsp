<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
</head>
<body>

	<%@ include file="../common/adminMenubar.jsp" %>
	
            <!-- ============================================================== -->
             <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">회원관리</h2>
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
                <div class="card">
                    <div class="card-body" style="height:55px">
                        <h5 class="card-title m-b-0" style="vertical-align:45px">장기구독자조회</h5>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="btn-group bb1" style="margin: 0px 0px 150px 0px;">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">전체조회</a>
                                <a class="dropdown-item" href="#">등록일 순 조회</a>
                                <a class="dropdown-item" href="#">가나다 순 조회</a>
                            </div>
                        </div>
                    </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead class="thead-light">
                                    <tr>
                                        <th width="1">
                                            <label class="customcheckbox m-b-20">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <th scope="col">No.</th>
                                        <th scope="col">아이디</th>
                                        <th scope="col">이름</th>
                                        <th scope="col">이메일</th>
                                        <th scope="col">휴대폰</th>
                                        <th scope="col">주소</th>
                                        <th scope="col">구독시작일</th>
                                        <th scope="col">구독종료일</th>
                                        <th scope="col">포인트</th>
                                    </tr>
                                </thead>
                                <tbody class="custom">
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>19</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>18</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>17</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>16</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>15</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>14</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>13</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>12</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>11</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>10</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr align="center">
                                        <th colspan="10">
                                            <br>
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
</body>
</html>