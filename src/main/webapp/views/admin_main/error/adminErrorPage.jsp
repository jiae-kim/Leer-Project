<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Error Page</title>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>

	<div class="main-wrapper">
        <div class="preloader">
            <div class="lds-ripple">
                <div class="lds-pos"></div>
                <div class="lds-pos"></div>
            </div>
        </div>
        <div class="error-box">
            <div class="error-body text-center">
                <h1 class="error-title text-danger">error</h1>
                <h3 class="text-uppercase error-subtitle">PAGE NOT FOUND !</h3>
                <p class="text-muted m-t-30 m-b-30" style="color: red;">아래 버튼 클릭 시 관리자 메인페이지로 돌아갑니다</p>
                <a href="<%=request.getContextPath()%>/views/admin_main/adminMainPage.jsp" class="btn btn-danger btn-rounded waves-effect waves-light m-b-40">돌아가기</a> 
            </div>
        </div>
    </div>

    <script src="assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <script>
    $('[data-toggle="tooltip"]').tooltip();
    $(".preloader").fadeOut();
    </script>
</body>
</html>