<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="views/common/menubar.jsp" %>
	<a href="<%=contextPath%>/views/order/productDetail.jsp">상품상세바로가기</a>
	<br>
	<a href="<%=contextPath%>/views/admin_main/adminMainPage.jsp">관리자메인페이지 바로가기</a> 
	<%@ include file="views/common/footer.jsp" %>
</body>
</html>