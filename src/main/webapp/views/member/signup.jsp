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
            width: 250px;
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

            <form action="<%=contextPath %>/signup.me" method="post" id="enroll-form">

                <table id="table1">

                    <tr>
                        <td>아이디</td>
                        <td colspan="3"><input type="text" name="memId" maxlength="10" required placeholder=" (6-10자의 영문 소문자, 숫자만 사용 가능합니다.)"></td>
                    </tr>

                    <tr>
                        <td>비밀번호</td>
                        <td colspan="3"><input type="password" name="memPwd" maxlength="10" required placeholder=" (6-10자의 영문, 숫자만 사용 가능합니다.)"></td>
                    </tr>

                    <tr>
                        <td>비밀번호 확인</td>
                        <td colspan="3"><input type="password" name="pwdCheck" maxlength="10" required></td>
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
                        <td colspan="3"><input type="text" name="birth" placeholder=" (6자리 숫자로만 입력해주세요.)"></td>
                        
                    </tr>

                    <tr>
                        <td>전화번호</td>
                        <td colspan="3"><input type="text" name="phone" required placeholder=" (-)을 제외하고 숫자만 입력해주세요."></td>
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
                        <td rowspan="2">관심분야</td>
                    
                        <td>
                            <input type="checkbox" name="category" value="10">
                            <label for="">패션 여성</label>
                        </td>

                        <td>
                            <input type="checkbox" name="category" value="20">
                            <label for="">라이프 인테리어</label>
                        </td>

                        <td>
                            <input type="checkbox" name="category" value="30"> 
                            <label for="">문화 예술</label> <br>

                        </td>
                    </tr>
                    <tr>
                        <td> 
                            <input type="checkbox" name="category" value="40"> 
                            <label for="">여행 취미</label> 
                        </td>
                        <td>
                            <input type="checkbox" name="category" value="50"> 
                            <label for="">시사 경제</label> 
                        </td>
                        <td>
                            <input type="checkbox" name="category" value="60">
                            <label for="">교육 과학</label> 
                        </td>
                    </tr>
                    
                </table>


                <br>


                <div align="center">
                	<button type="reset" onclick="termsPage();">이전</button>
                    <button type="submit" onclick="signupSuccess();">회원가입</button>
                </div>
                
                <script>
                	function termsPage(){
                		location.href="<%=contextPath%>/views/member/terms.jsp";
                	}
                	function signupSuccess(){
                		alert("회원가입 완료 되었습니다.");
                	}
                </script>
                
                <!-- 회원가입 완료 창 보여주고 로그인 화면으로 넘겨주기 -->

            </form>

        </div>

    </div>

    <br><br>
    
    
</body>
</html>