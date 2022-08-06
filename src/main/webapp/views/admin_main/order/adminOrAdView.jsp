<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.order.model.vo.Order, com.leer.common.model.vo.PageInfo" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Order> list = (ArrayList<Order>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 및 배송 전체조회</title>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	<%@ include file="../../common/adminScript.jsp" %>
	
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">주문 및 배송 전체조회</h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <!--<input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">조회</button>-->
                    	<div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                    </nav>
                    <!-- 운송장 등록 Button trigger modal -->
                    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#inputpackage" onclick="orderNoInput();">
                        운송장 등록
                    </button>
                    <script>
                    	function orderNoInput(){
                    		$("#parcelOrNo").val($(".listCheckbox:checked").val());
                    	}
                    </script>
                    <!-- Modal -->
                    <div class="modal fade" id="inputpackage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">운송장 등록</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form action="<%=request.getContextPath()%>/adPnInsert.do" method="post">
                                	<input type="hidden" name="orNo" value="" id="parcelOrNo">
                                	<div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
	                                    <table>
	                                        <tr>
	                                            <td>택배사</td>
	                                            <td>
	                                                <select name="parcelName" id="parcel-select" class="col-md-12">
	                                                    <option disabled selected hidden>택배사를 선택하세요</option>
	                                                    <option>대한통운</option>
	                                                    <option>한진택배</option>
	                                                    <option>우체국택배</option>
	                                                </select>
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <td>운송장 번호</td>
	                                            <td><input type="text" name="parcelNum" class="col-md-12" required placeholder="운송장 번호('-'포함)"></td>
	                                        </tr>
	                                    </table>        
	                                </div>
	                                <div class="modal-footer">
	                                    <button type="submit" class="btn btn-info">등록</button>
	                                    <button type="reset" class="btn btn-dark" data-dismiss="modal">취소</button>
	                                </div>
                                </form>
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
                                <a class="dropdown-item" href="#">상품명</a>
                                <a class="dropdown-item" href="#">택배사</a>
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
                                    <th scope="col">회원번호</th> <!--주문관리t-->
                                    <th scope="col">주문번호</th> <!--주문관리t-->
                                    <th scope="col">상품명</th> <!-- join 상품등록 : 잡지명 -->
                                    <th scope="col">수량</th> <!-- join 주문별상품 : 수량 -->
                                    <th scope="col">결제일시</th> <!-- 주문날짜 컬럼 -->
                                    <th scope="col">결제금액</th> <!-- 총가격 컬럼 -->
                                    <th scope="col">택배사</th> <!--주문관리t-->
                                    <th scope="col">운송장번호</th>	 <!--주문관리t-->
                                    <th scope="col">배송상태</th> <!-- 배송현황 컬럼 -->
                                </tr>
                            </thead>
                            <tbody class="customtable">
                            	<% for(Order o : list) { %>
                                <tr>
                                    <th>
                                        <label class="customcheckbox">
                                            <input type="checkbox" class="listCheckbox" value="<%=o.getOrNo()%>">
                                            <span class="checkmark"></span>
                                        </label>
                                    </th>
                                    <td><%=o.getMemNo()%></td>
                                    <td><%=o.getOrNo()%></td>
                                    <td><%=o.getpName()%></td>
                                    <td><%=o.getOrAmount()%></td>
                                    <td><%=o.getOrDate()%></td>
                                    <td><%=o.getOrPrice()%></td>
                                    <td><%=o.getParcelName()%></td>
                                    <td><%=o.getParcelNum()%></td>
                                    <td><%=o.getParcelStatus()%></td>
                                </tr>
                                <% } %>
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
                   <br>
		                <div class="btn-group paging-area" role="group" aria-label="Basic example">
		                <% if(currentPage != 1) { %>
		                    <button type="button" onclick="location.href='<%=request.getContextPath()%>/adOrderList.do?cpage=<%=currentPage-1%>';"
		                        class="btn btn-outline-secondary">&lt;</button>
		                <% } %>
		                <% for(int p=startPage; p<=endPage; p++) { %>
		                    <% if(p == currentPage) { %>
		                        <button type="button" disabled class="btn btn-outline-secondary"><%=p%></button>
		                    <% } else { %>
		                        <button type="button" onclick="location.href='<%=request.getContextPath()%>/adOrderList.do?cpage=<%=p%>';"
		                            class="btn btn-outline-secondary"><%=p%></button>
		                    <% } %>
		                <% } %>
		                
		                <% if(currentPage != maxPage) { %>
		                    <button type="button" onclick="location.href='<%=request.getContextPath()%>/adOrderList.do?cpage=<%=currentPage+1%>';"
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
</body>
</html>