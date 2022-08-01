<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.member.model.vo.Member, com.leer.common.model.vo.PageInfo"%>
<% 
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");

	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.custom>tr:hover {
    cursor: pointer;
    opacity: 0.7;
    background:#cecece;
    color:dark;
}
</style>
</head>
<body>

	<%@ include file="../../common/adminMenubar.jsp" %>
	
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
                        <h5 class="card-title m-b-0" style="vertical-align:45px">회원전체조회</h5>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="btn-group bb1">
                            <button type="button" class="btn btn-success dropdown-toggle" style="margin:-40px 0px 200px 0px" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            	조회방법 선택
                            </button>
                            <div class="dropdown-menu" id="selectBox">
                                <a class="dropdown-item" id="all" onclick="changeList();">전체조회</a>
                                <a class="dropdown-item" id="ganada" onclick="changeList();">가나다 순 조회</a>
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
                                        <th scope="col">닉네임</th>
                                        <th scope="col">가입일</th>
                                        <th scope="col">포인트</th>
                                    </tr>
                                </thead>
                                <tbody class="custom">
                                	<% for(Member m : list) { %>
	                                    <tr onclick="location.href='<%=request.getContextPath()%>/adMemDetail.do?no=<%=m.getMemNo()%>';">
	                                        <th>
	                                            <label class="customcheckbox">
	                                                <span class="checkmark"></span>
	                                            </label>
	                                        </th>
	                                        <td><%=m.getMemNo()%></td>
	                                        <td><%=m.getMemId()%></td>
	                                        <td><%=m.getMemName()%></td>
	                                        <td><%=m.getEmail()%></td>
	                                        <td><%=m.getPhone()%></td>
	                                        <td><%=m.getAddress()%></td>
	                                        <td><%=m.getNickname()%></td>
	                                        <td><%=m.getEnrollDate()%></td>
	                                        <td><%=m.getPoint()%></td>
	                                    </tr>
                                    <% } %>
                                </tbody>
                                <tfoot>
                                    <tr align="center">
                                        <th colspan="10">
                                            <br>
                                            <div class="btn-group paging-area" role="group" aria-label="Basic example">
                                            
                                            	<% if(currentPage != 1) { %>
	                                                <button type="button" onclick="location.href='<%=request.getContextPath()%>/adMemList.do?cpage=<%=currentPage-1%>';"  
	                                                		class="btn btn-outline-secondary">&lt;</button>
	                                            <% } %>
	                                            <% for(int p=startPage; p<=endPage; p++) { %>
	                                            	<% if(p == currentPage) { %>
	                                                	<button type="button" disabled class="btn btn-outline-secondary"><%=p%></button>
	                                                <% } else { %>
	                                                	<button type="button" onclick="location.href='<%=request.getContextPath()%>/adMemList.do?cpage=<%=p%>';" 
	                                                			class="btn btn-outline-secondary"><%=p%></button>
	                                                <% } %>
	                                            <% } %>
	                                            
	                                            <% if(currentPage != maxPage) { %>
	                                            	<button type="button" onclick="location.href='<%=request.getContextPath()%>/adMemList.do?cpage=<%=currentPage+1%>';" 
	                                                		    class="btn btn-outline-secondary">&gt;</button>
	                                            <% } %>	                   
                                              </div>
                                        </th>
                                    </tr>
                                </tfoot>
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
            
            
		
		<!--------- 스크립트 ----------->
		<!--  -->
		<script>
			function changeList(){
				$.ajax({
					url:"<%=request.getContextPath()%>/adMemList.do",
					data:{align:$("#selectBox option:onclick").val()},
					success:function(list){
						console.log("list");
						
						let value = "";
						for(let i=0; i<list.length; i++){
							value+=
							''		
						}
												
					}, error:function(){
						console.log("조회실패");
					}
				});												
			}
		</script>
</body>
</html>









