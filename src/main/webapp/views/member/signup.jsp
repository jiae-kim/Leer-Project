<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<style>
        .signup-wrap{
            background-color: white;
            margin-top: 100px;
        }


        .signup-info{
            margin-bottom: 30px;
        }

        .signup-input{
            margin: auto;
            background-color: rgba(245, 245, 245, 0.705);
            padding: 50px;
        }

        

        #enroll-form table{
            margin: auto;
        }

        #enroll-form button{
            width: 300px;
            height: 50px;
            border: 1px ;
            font-size: 14px;
            line-height: 14px;
        }


        #table1 input[type=text], #table1 input[type=password], #table1 input[type=email]{
            margin: 5px;
            height: 40px;
            width: 400px;
            border-radius: 5px;
            border: 1px solid lightgrey;
        }


        #table1 input[type=checkbox]{
            width: 17px;
            height: 17px;
            margin: 7px;
        }

        /* #table2 input{
            margin: 5px;
            height: 15px;
            width: 15px;
        }

        #table2 label{
            font-size: 17px;
        } */



        /* .signup-info{
            margin: auto;
        } */
    </style>
</head>
<body>


	<%@ include file="/views/common/menubar.jsp" %>
	
	<hr>

    <div class="signup-wrap">

        <div class="signup-info" align="center">
            <label for="" style="font-size: 35px; font-weight:900">회원가입</label><br>
            <label for="" style="font-size: 20px; font-weight: 600; color: grey;" >회원가입 후 리에르의 다양한 서비스를 만나보세요</label>
        </div>


        <div class="signup-input">

            <form action="" id="enroll-form">

                <table id="table1">

                    <tr>
                        <td>아이디</td>
                        <td colspan="3"><input type="text" name="memId" required placeholder=" (6-10자의 영문 소문자, 숫자만 사용 가능합니다.)"></td>
                    </tr>

                    <tr>
                        <td>비밀번호</td>
                        <td colspan="3"><input type="password" name="memPwd" required placeholder=" (6-10자의 영문, 숫자만 사용 가능합니다.)"></td>
                    </tr>

                    <tr>
                        <td>비밀번호 확인</td>
                        <td colspan="3"><input type="password" name="pwdCheck" required></td>
                    </tr>

                    <tr>
                        <td>닉네임</td>
                        <td colspan="3"><input type="text" name="nickname" placeholder=" (4-10자의 한글, 숫자만 사용 가능합니다.)"></td>
                    </tr>

                    <tr>
                        <td>이름</td>
                        <td colspan="3"><input type="text" name="memName" required></td>
                    </tr>

                    <tr>
                        <td>생년월일</td>
                        <td colspan="3"><input type="text" name="birth"></td>
                    </tr>

                    <tr>
                        <td>전화번호</td>
                        <td colspan="3"><input type="text" name="phone" required placeholder=" (-)을 제외하고 입력해주세요."></td>
                    </tr>

                    <tr>
                        <td>이메일</td>
                        <td colspan="3"><input type="email" name="email" required></td>
                    </tr>

                    <tr>
                        <td>주소</td>
                        <td colspan="3"><input type="text" name="address" required></td>
                    </tr>
                    

                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>


                    <tr>
                        <td>관심분야</td>
                    
                        <td>
                            <input type="checkbox" name="intereset" value="fw">
                            <label for="">패션 여성</label>
                        </td>

                        <td>
                            <input type="checkbox" name="interset" value="li">
                            <label for="">라이프 인테리어</label>
                        </td>

                        <td>
                            <input type="checkbox" name="interest" value="ca"> 
                            <label for="">문화 예술</label> <br>

                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td> 
                            <input type="checkbox" name="interest" value="th"> 
                            <label for="">여행 취미</label> 
                        </td>
                        <td>
                            <input type="checkbox" name="interest" value="se"> 
                            <label for="">시사 경제</label> 
                        </td>
                        <td>
                            <input type="checkbox" name="interest" value="es">
                            <label for="">교육 과학</label> 
                        </td>
                    </tr>
                    
                </table>


                <br>


                <div align="center">
                    <button type="submit">회원가입</button>
                </div>

            </form>

        </div>

    </div>
    
    
</body>
</html>