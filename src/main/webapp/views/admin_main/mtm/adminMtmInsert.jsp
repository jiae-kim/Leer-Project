<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.leer.member.model.vo.Member"%>
<%@ page import="com.leer.mtm.model.vo.Mtm" %>
<%
	Mtm m = (Mtm)request.getAttribute("mtm");
	int mtmNo = (int)request.getAttribute("mtmNo");
	Member loginUser = (Member)session.getAttribute("loginUser");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.btbt button{
		width:150px;
		height:40px;
		border:none;
		border-radius:5px;
		margin:3px;
	}
</style>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	
	<div class="page-breadcrumb">
	   <div class="row">
	       <div class="col-12 d-flex no-block align-items-center">
	           <br><br><br>
	           <h2 class="page-title">1:1상담 전체 조회</h2>
	           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	           <input class="form-control mr-sm-2" type="text" placeholder="Search">
	           <button class="btn btn-success" type="submit">조회</button>
	           <div class="ml-auto text-right">
	               <nav aria-label="breadcrumb">
	               </nav>
	               <!-- <button type="button" class="btn btn-info btn-lg">답변</button> &nbsp;&nbsp;&nbsp; -->
	               <button type="button" class="btn btn-warning btn-lg">수정</button> &nbsp;&nbsp;&nbsp;
	               <!-- Button trigger modal -->
	               <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#Modal2">
	                   삭제
	               </button>
	                   <!-- Modal -->
	                   <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	                       <div class="modal-dialog" role="document">
	                           <div class="modal-content">
	                               <div class="modal-header">
	                                   <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">공지사항 삭제</h5>
	                                   <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                       <span aria-hidden="true">&times;</span>
	                                   </button>
	                               </div>
	                               <div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
	                                    해당 글을 삭제하시겠습니까?
	                                </div>
	                                <div class="modal-footer">
	                                    <button type="button" class="btn btn-danger">네</button>
	                                    <button type="button" class="btn btn-info" data-dismiss="modal">아니오</button>
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
	    <!-- ============================================================== -->
	   <!-- Sales Cards  -->
	   <!-- ============================================================== -->
	   <div class="card mb-4">
	       <div class="col-lg-12 grid-margin stretch-card">
	           <div class="card">
	             <div class="card-body">
	             
	             	<br>
	             	
	               <h2 class="card-title" align="center">1:1문의 답변 상세</h2>
	               <div class="table-responsive pt-3">
	               
	                 <table class="tt1" border="1" align="center">
	                   <tbody>
	                       <tr>
	                         <td width="300px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
	                           문의사항 제목
	                         </td>
	                         <td width="700px">
	                             <label for="" style="float: left;">&nbsp;&nbsp; <%=m.getMtmTitle()%></label> 
	                         </td>
	                       </tr>
	                       <tr>
	                         <td width="300px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
	                           작성자
	                         </td>
	                         <td>
	                             <label for="" style="float: left;">&nbsp;&nbsp; <%=m.getMemId()%></label> 
	                         </td>
	                       </tr>
	                     </tbody>
	                 </table>
	                 <br>
	                 
	                 <table class="tarea" align="center" style="margin:5px 5px 5px 5px">
	                   <textarea name="" id="" cols="133.5" rows="10" resize="none" placeholder="" readonly><%=m.getMtmContent()%></textarea>
	                 </table>
	                 
	                 
	                 <br>
	                 
					<form action="<%=request.getContextPath() %>/adminInsert.mtm" method="post">
					
						<input type="hidden" name="mtmNo" value="<%= mtmNo %>">
						<input type="hidden" name="adminNo" value="<%=loginUser.getMemNo()%>">
						
						<table class="tarea" align="center" style="margin:5px 5px 5px 5px">
		                   <h2>1:1문의 답변등록</h2>
		                   <textarea name="ansContent" cols="133.5" rows="10" resize="none" placeholder="1:1문의 답변 내용 입력"></textarea>
		                </table>
		                
		                <br>
						
		                <c:if test="${sessionMemberLv == 1}">
	                    	<div class="d-grid gap-3 btbt" style="text-align: center">
	                        	<button type="button" onclick="location.href='<%= request.getContextPath() %>/adList.mt?cpage=1'">취소</a>
	                        	<button type="submit" style="width:150px">답변등록</a>
	                    	</div>
						</c:if>
						
					</form>
		                 
					<script>
					</script>
	                
	               <br>
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