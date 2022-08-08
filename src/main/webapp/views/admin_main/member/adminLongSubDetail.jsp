<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, 
				 com.leer.member.model.vo.Member"%>        
<!DOCTYPE html>
<%
	Member m = (Member)request.getAttribute("member");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.tt2{
    float: left;
}
</style>
</head>
<body>

	<%@ include file="../../common/adminMenubar.jsp" %>	
	
	<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">장기구독자 조회</h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="form-control mr-sm-2" type="text" placeholder="Search" hidden>
                        <button class="btn btn-success" type="submit" hidden>Search</button>
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
                <div class="card mb-4">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body">
                            <h2 class="card-title" align="center">구독 상세정보</h2>
                            <div class="table-responsive pt-3">
                              <table class="tt1" border="1" align="center">
                                <tbody >
                                    <tr>
                                      <div class="tt2">
                                          <img src="<%=m.getImageUrl1()%>" alt="" width="470px" style="margin: 0px -100px 0px 222px;">
                                            <td class="td1" colspan="2" width="500px" height="45px" style="font-weight: bold;
                                                                                        background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                            <h4 style="margin:0px 0px 0px 0px; float:left;">&nbsp;&nbsp;&nbsp;&nbsp; 주문 상세</h4>
                                            </td>
                                      </tr>
                                      <tr>
                                          <td width="100px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                            주문번호
                                          </td>
                                          <td>
                                              <label for="" width="300px" style="float: left;">&nbsp;&nbsp; <%=m.getOrNo()%></label> 
                                          </td>
                                      </tr>
                                      <tr>
                                          <td width="" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                            주문금액
                                          </td>
                                          <td>
                                              <label for="" style="float: left;">&nbsp;&nbsp; <%=m.getPrice()%></label> 
                                          </td>
                                      </tr>
                                      <tr hidden>
                                        <tdwidth="" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                            
                                        </td>
                                        <td>
                                            <label for="" style="float: left;">&nbsp;&nbsp; <%=m.getP_name()%></label> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                            상품코드
                                        </td>
                                        <td>
                                            <label for="" style="float: left;">&nbsp;&nbsp; <%=m.getP_code()%></label> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                            출간일
                                        </td>
                                        <td>
                                            <label for="" style="float: left;">&nbsp;&nbsp; <%=m.getPublishMonth()%></label> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                            구독기간
                                        </td>
                                        <td>
                                            <label for="" style="float: left;">&nbsp;&nbsp; 12개월</label> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                            배송주기
                                        </td>
                                        <td>
                                            <label for="" style="float: left;">&nbsp;&nbsp; <%=m.getOrCycle()%></label> 
                                        </td>
                                    </tr>
                                     </div>
                                     <table class="" border="1" align="center">
                                        <tbody>
                                          <br>
                                          <tr>
                                            <td class="td1" colspan="2" width="500px" height="45px" style="font-weight: bold;
                                              background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                              <h4 style="margin:0px 0px 0px 0px; float:left;">&nbsp;&nbsp;&nbsp;&nbsp; 주문자 상세</h4>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td width="100px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                              회원번호
                                            </td>
                                            <td>
                                              <label for="" width="300px" style="float: left;">&nbsp;&nbsp; <%=m.getMemNo()%></label> 
                                            </td>
                                          </tr>
                                          <tr>
                                            <td width="100px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                              회원아이디
                                            </td>
                                            <td>
                                              <label for="" width="300px" style="float: left;">&nbsp;&nbsp; <%=m.getMemId()%></label> 
                                            </td>
                                          </tr>
                                          <tr>
                                            <td width="100px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                              회원이름
                                            </td>
                                            <td>
                                              <label for="" width="300px" style="float: left;">&nbsp;&nbsp; <%=m.getMemName()%></label> 
                                            </td>
                                          </tr>
                                          <tr>
                                            <td width="100px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                              포인트
                                            </td>
                                            <td>
                                              <label for="" width="300px" style="float: left;">&nbsp;&nbsp; <%=m.getPoint()%></label> 
                                            </td>
                                          </tr>
                                        </tbody>       
                                  </tbody>
                                </div>
                                </tbody>
                              </table>  
                              <br>
                              <div class="tt3">
                                                           
                                </table>
                              </div>
                            <br>
                            <c:if test="${sessionMemberLv == 1}">
                                    <div class="d-grid gap-3" style="text-align: center">
                                        <a href="<%=request.getContextPath()%>/adLongList.do?cpage=1" id="btn" class="btn btn-dark" style="width:150px"">
                                        	목록으로
                                        </a>
                                    </div>
                            </c:if>
                          </div>
                        </div>
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