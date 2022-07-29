<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <style>

        .login-wrap{
            background-color: white;
            margin-top: 100px;

        }

        .login-info{
            margin-bottom: 50px;
        }

        .login-form{
            background-color:rgb(250, 250, 250);
            padding: 50px;
            margin-bottom: 5px;
        }


        .login-form input{
            margin: 10px;
            height: 40px;
            width: 400px;
        }

        .login-form button{
            margin: 10px;
            height: 40px;
            width: 408px;
        }

        .login-form-etc a{
            text-decoration: none;
            color: rgb(58, 60, 66);
            font-size: 11px;
        }

    </style>

</head>
<body>

	<%@ include file="/views/common/menubar.jsp" %>


	<div class="login-wrap">


        <div class="login-info" align="center">
            <label for="" style="font-size: 35px; font-weight: 900;">로그인</label><br>
            <label for="" style="font-size: 20px; font-weight: 600; color: grey;">로그인 후 리에르의 다양한 서비스를 만나보세요</label><br>
        </div>


        <div class="login-form" align="center">
            <form action="">
                <div class="login-input">
                    <input type="text" id="userId" placeholder=" 아이디"><br>
                    <input type="password" id="password" placeholder=" 비밀번호"><br>
                </div>

                <div class="login-btn">
                    <button>로그인</button>
                </div>


                <div class="login-form-etc" align="center">
                    <a href="" id="a1">회원가입</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <a href="" id="a2">아이디 찾기</a>
                    <a href="" id="a3">비밀번호 찾기</a>
                </div>

                
            </form>
        </div>


    </div>



</body>
</html>