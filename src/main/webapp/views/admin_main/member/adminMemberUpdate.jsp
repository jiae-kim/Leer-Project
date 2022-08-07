<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, 
				 com.leer.member.model.vo.Member,
				 com.leer.order.model.vo.Order"%>    
<%
	Member m = (Member)request.getAttribute("member");
	ArrayList<Order> list = (ArrayList<Order>)request.getAttribute("list");
%>				   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="../../common/adminMenubar.jsp" %>
	
	<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">회원전체조회</h2>
                        &nbsp;&nbsp;&nbsp;
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
		<form action="<%=request.getContextPath()%>/adUpdate.me" id="enroll-form" method="post">            
            <div class="card mb-4">
	            <div class="card-header">
	                <i class=""></i>
	               	<h4 style="vertical-align:45px"><b></b></h4>
	            </div>
	            <div class="card-body">
	            <div class ="printView">
			    	<h2 style="text-align:center;"> 회원상세정보 </h2>
			    		<table class="table">
							<tr>
								<th class="text-center">회원번호</th>
								<td><%=m.getMemNo()%></td>
							</tr>
							<tr>
								<th class="text-center" style="width:400px">아이디</th>
								<td><input type="text" name="memId" value="<%=m.getMemId()%>" readonly></td>
							</tr>
							<tr>
								<th class="text-center">이름</th>
								<td><input type="text" name="memName" value="<%=m.getMemName()%>" required></td>
							</tr>
							<tr>
								<th class="text-center">닉네임</th>
								<td><input type="text" name="nickname" value="<%=m.getNickname()%>" required></td>
							</tr>
							<tr>
								<th class="text-center">주소</th>
								<td><input type="text" name="address" value="<%=m.getAddress()%>" readonly></td>
							</tr>
							<tr>
								<th class="text-center">휴대폰 번호</th>
								<td><input type="text" name="phone" value="<%=m.getPhone()%>" readonly></td>
							</tr>
							<tr>
								<th class="text-center">가입일</th>
								<td><%=m.getEnrollDate2()%></td>
							</tr>
							<tr>
								<th class="text-center">보유 포인트</th>
								<td><%=m.getPoint()%></td>
							</tr>
							<tr>
								<th class="text-center">구매내역</th>
								<td>
	                                <table border="1" style="text-align: center;">
	                                    <tr style="background: #343a40; color:white;">
	                                        <td width="70px" height="-4840px">No.</td>
	                                        <td width="200px">구매일자</td>
	                                        <td width="300px">잡지명</td>
	                                        <td width="200px">출간연월</td>
	                                    </tr>
	                                    <% for(Order o : list) { %>
		                                    <tr>
		                                        <td><%=o.getOrNo()%></td>
		                                        <td><%=o.getOrDate() %></td>
		                                        <td><%=o.getpName()%></td>
		                                        <td><%=o.getEnrollDate()%></td>
		                                    </tr>
	                                    <% } %>
	                                </table>
	                            </td>
							</tr>
						</table>
					</div>
					<div>
					<c:if test="${sessionMemberLv == 1}">
						<div class="d-grid gap-3" style="text-align: center">
							<a href="<%=request.getContextPath()%>/adMemList.do?cpage=1" id="btn" class="btn btn-dark" style="width:150px">취소하기</a>
                            <button type="submit" class="btn btn-dark" style="width:150px">회원정보변경</button>
						</div>
                    </c:if>
	            </div>
	        </div>
		</form>
</body>
</html>