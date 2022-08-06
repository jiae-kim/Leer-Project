<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.product.model.vo.ProductIo, com.leer.common.model.vo.PageInfo" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<ProductIo> list = (ArrayList<ProductIo>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 재고 전체조회</title>
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
                <h2 class="page-title">상품 재고 현황 조회</h2>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <!--<input class="form-control mr-sm-2" type="text" placeholder="Search">
                <button class="btn btn-success" type="submit">조회</button>-->
                <div class="ml-auto text-right">
                <nav aria-label="breadcrumb">
                </nav>
                    <!-- <button type="button" onclick="location.href='<%=request.getContextPath()%>/adProInput.do'" class="btn btn-info btn-lg">상품 입고</button> &nbsp;&nbsp;&nbsp;
                    <button type="button" onclick="location.href='<%=request.getContextPath()%>/adProOutput.do'" class="btn btn-warning btn-lg">상품 출고</button> &nbsp;&nbsp;&nbsp; -->

                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#input">
                        상품 입고 등록
                    </button>
                    
                    <form action="<%=request.getContextPath()%>/adStkInsert.do" method="post">
                        <!-- Modal -->
                        <div class="modal fade" id="input" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">상품 입고 등록</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
                                        <table>
                                            <tr>
                                                <td>상품코드</td>
                                                <td><input type="text" name="pCode" required placeholder="기존에 있는 코드 입력"></td>
                                                <!-- <td>상품코드</td>
                                                <td>
                                                    <select class="select2 form-control custom-select" name="pcode" required>
                                                        <option hidden>상품코드 선택</option>
                                                        <option>FW-</option>
                                                        <option>LI-</option>
                                                        <option>CA-</option>
                                                        <option>TH-</option>
                                                        <option>SE-</option>
                                                        <option>ES-</option>
                                                    </select>
                                                </td> -->
                                            </tr>
                                            <tr>
                                                <td>상품명</td>
                                                <td><input type="text" name="pName" required placeholder="코드에 해당하는 잡지명"></td>
                                            </tr>
                                            <tr>
                                                <td>입고</td>
                                                <td><input type="text" name="status" value="입고" readonly></td>
                                            </tr>
                                            <tr>
                                                <td>수량</td>
                                                <td><input type="text" name="statusAmount" required placeholder="입고 수량 입력"></td>
                                            </tr>
                                            <tr>
                                                <td>입고일자</td>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control col-md-9" name="statusDate2" id="datepicker-autoclose" placeholder="mm/dd/yyyy">
                                                        <div class="input-group-append">
                                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- <tr>
                                                <td>반품상품 여부</td>
                                                <td><input type="checkbox"></td>
                                            </tr> -->
                                        </table>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-info">네</button>
                                        <button type="reset" class="btn btn-danger" data-dismiss="modal">아니오</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    
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
            <div class="card-body">
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
                                        <!-- <input type="checkbox" id="mainCheckbox" /> -->
                                        <span class="checkmark"></span>
                                    </label>
                                </th>
                                <th scope="col">상품코드</th>
                                <th scope="col">상품명</th>
                                <th scope="col">입출고</th>
                                <th scope="col">수량</th>
                                <th scope="col">일자</th>
                                <!-- <th scope="col">재고수량</th> -->
                            </tr>
                        </thead>
                        <tbody class="customtable">
                            <% for(ProductIo pio : list) { %>
                            <tr>
                                <th>
                                    <label class="customcheckbox">
                                        <!-- <input type="checkbox" class="listCheckbox" /> -->
                                        <span class="checkmark"></span>
                                    </label>
                                </th>
                                <td><%=pio.getpCode()%></td>
                                <td><%=pio.getpName()%></td>
                                <td><%=pio.getStatus()%></td> 
                                <td><%=pio.getStatusAmount()%></td> <!-- join : PRODUCT -->
                                <td><%=pio.getStatusDate()%></td>
                                <!-- <td>재고수량</td> -->      
                            </tr>
                            <% } %>
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
            <br>
                <div class="btn-group paging-area" role="group" aria-label="Basic example">
                <% if(currentPage != 1) { %>
                    <button type="button" onclick="location.href='<%=request.getContextPath()%>/adStockList.do?cpage=<%=currentPage-1%>';"
                        class="btn btn-outline-secondary">&lt;</button>
                <% } %>
                <% for(int p=startPage; p<=endPage; p++) { %>
                    <% if(p == currentPage) { %>
                        <button type="button" disabled class="btn btn-outline-secondary"><%=p%></button>
                    <% } else { %>
                        <button type="button" onclick="location.href='<%=request.getContextPath()%>/adStockList.do?cpage=<%=p%>';"
                            class="btn btn-outline-secondary"><%=p%></button>
                    <% } %>
                <% } %>
                
                <% if(currentPage != maxPage) { %>
                    <button type="button" onclick="location.href='<%=request.getContextPath()%>/adStockList.do?cpage=<%=currentPage+1%>';"
                        class="btn btn-outline-secondary">&gt;</button>
                <% } %>
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
        
        <!-- date picker -->
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