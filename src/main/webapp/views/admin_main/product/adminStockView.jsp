<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                <h2 class="page-title">상품 재고 현황 조회</h2>
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb"></nav>
                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#input">상품 입고 등록</button>
                    <form action="<%=request.getContextPath()%>/adStkInsert.do" method="post">
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
    <div class="container-fluid">
        <div class="card">
            <div class="card-body">
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
                                    <span class="checkmark"></span>
                                </label>
                            </th>
                            <th scope="col">상품코드</th>
                            <th scope="col">상품명</th>
                            <th scope="col">입출고</th>
                            <th scope="col">수량</th>
                            <th scope="col">일자</th>
                        </tr>
                    </thead>
                    <tbody class="customtable">
                        <% for(ProductIo pio : list) { %>
                        <tr>
                            <th>
                                <label class="customcheckbox">
                                    <span class="checkmark"></span>
                                </label>
                            </th>
                            <td><%=pio.getpCode()%></td>
                            <td><%=pio.getpName()%></td>
                            <% if(pio.getStatus().equals("입고")) { %>
                                <td style="color : blue;">입고</td>
                            <% }else { %>
                                <td style="color : red;">출고</td>
                            <% } %>
                            <td><%=pio.getStatusAmount()%></td> <!-- join : PRODUCT -->
                            <td><%=pio.getStatusDate()%></td>
                        </tr>
                        <% } %>
                    </tbody>
                    <tfoot>
                        <tr align="center">
                            <th colspan="10">
                                <div class="btn-group paging-area" role="group" aria-label="Basic example">
                                    <% if(currentPage != 1) { %>
                                        <button type="button" onclick="location.href='<%=request.getContextPath()%>/adStockList.do?cpage=<%=currentPage-1%>';" class="btn btn-outline-secondary">&lt;</button>
                                    <% } %>
                                    <% for(int p=startPage; p<=endPage; p++) { %>
                                        <% if(p == currentPage) { %>
                                            <button type="button" disabled class="btn btn-outline-secondary"><%=p%></button>
                                        <% } else { %>
                                            <button type="button" onclick="location.href='<%=request.getContextPath()%>/adStockList.do?cpage=<%=p%>';" class="btn btn-outline-secondary"><%=p%></button>
                                        <% } %>
                                    <% } %>
                                    <% if(currentPage != maxPage) { %>
                                        <button type="button" onclick="location.href='<%=request.getContextPath()%>/adStockList.do?cpage=<%=currentPage+1%>';" class="btn btn-outline-secondary">&gt;</button>
                                    <% } %>
                                </div>
                            </th>
                        </tr>
                    </tfoot>  
                </table>
            </div>
        </div>
    </div>

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