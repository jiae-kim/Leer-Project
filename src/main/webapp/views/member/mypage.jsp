<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	.mypage-wrap{
		background-color: white;
		margin-top: 100px;
	}

	.mypage-info{
		/* margin-bottom: 50px; */
	}

	.pwdCheck-form{
		background-color:rgba(241, 241, 241, 0.329);
		padding: 100px;
		margin-bottom: 5px;
	}

	.pwdCheck-form input{
		margin: 10px;
		width: 400px;
		height: 40px;
		border-radius: 5px;
		border: 1px solid lightgrey;
	}

	.pwdCheck-btn button{
		margin: 10px;
		height: 40px;
		width: 200px;
		border-radius: 5px;
		border: 1px solid lightgrey;
		line-height: 40px;
		font-size: 14px;
	}

</style>

</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	
	<%
		String memId = loginUser.getMemId();
		String memPwd = loginUser.getMemPwd();
		String memName = loginUser.getMemName();
	%>

	<hr>


	<div class="mypage-wrap">
		<form action="" method="post">
		
		<input type="hidden" name="memPwd" id="memPwd" value="<%=memPwd%>">
		
			<div class="mypage-info" align="center">
				<label for="" style="font-size: 35px; font-weight:900">회원정보 확인</label><br>
				<label for="" style="font-size: 20px; font-weight: 600; color: grey;"><%=memName %>님의 소중한 정보 보호를 위해, 비밀번호를 다시 한 번 확인합니다</label>
			</div>

			<div class="pwdCheck-form" align="center">
				<table>
					<tr>
						<td>아이디 &nbsp;</td>
						<td><input type="text" value="<%=memId %>" readonly style="border:0px; background:rgba(241, 241, 241, 0)"></td>
					</tr>
					<tr>
						<td>비밀번호&nbsp;&nbsp;&nbsp;</td> 
						<td><input type="password" name="checkPwd" id="checkPwd" required style="font-family: Arial;"></td>
					</tr>
				</table>
			</div>

			<div class="pwdCheck-btn" align="center">
				<button type="button" id="back">이전</button>
				<button type="button" id="check">확인</button>
			</div>
		</form>
	</div>
	
	
	<script>
		$(function(){
			$("#check").click(function(){
				
				const pwd1 = $("#memPwd").val();
				const pwd2 = $("#checkPwd").val();
				
				if( pwd1 == pwd2 ){
					location.href="<%=contextPath%>/mypage2.me";
				}else{
					alert("비밀번호가 틀렸습니다. 다시 입력해주세요.");
				}
				
			})
		})
		
		
		$(function(){
			$("#back").click(function(){
				window.history.back();
			})
		})
		
	</script>

</body>
</html>