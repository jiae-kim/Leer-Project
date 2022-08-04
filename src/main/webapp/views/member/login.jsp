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
            /* margin-bottom: 50px; */
        }

        .login-form{
            background-color:rgba(241, 241, 241, 0.329);
            padding: 50px;
            margin-bottom: 5px;
        }


        .login-form input{
            margin: 10px;
            height: 40px;
            width: 400px;
            border-radius: 5px;
            border: 1px solid lightgrey;
            color:black;
        }

        .login-form button{
            margin: 10px;
            height: 40px;
            width: 400px;
            border-radius: 5px;
            border: 1px solid lightgrey;
            line-height: 40px;
            font-size: 14px;
        }

        .login-form-etc a{
            text-decoration: none;
            color: rgb(58, 60, 66);
            font-size: 13px;
        }


        
    </style>

</head>
<body>

	<%@ include file="/views/common/menubar.jsp" %>

    <hr>

	<div class="login-wrap">


        <div class="login-info" align="center">
            <label style="font-size: 35px; font-weight: 900;">로그인</label><br>
            <label style="font-size: 20px; font-weight: 600; color: grey;">로그인 후 리에르의 다양한 서비스를 만나보세요</label><br>
        </div>


        <div class="login-form" align="center">
            <form action="<%=contextPath%>/login.me" method="post">
                <div class="login-input">
                    <input type="text" name="memId" id="id" placeholder="  아이디" required><br>
                    <input type="password" name="memPwd" id="password" placeholder="  비밀번호" required style="font-family: Arial;"><br>
                </div>

                <div class="login-btn">
                    <button type="submit">로그인</button>
                </div>
                
                
                <div class="login-form-etc" align="center">
                    <a href="<%=contextPath %>/termsPage.me" id="a1" style="float: left; margin-left: 39%">회원가입</a>

                    <a href="" id="a3" style="float:right; margin-right:39%">비밀번호 찾기</a>
                    <a href="" id="a2" style="float:right; margin-right:1%">아이디 찾기</a>
                </div>
                <br>
            </form>
        </div>


    </div>



</body>
</html>