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
                        <td colspan="3"><input type="text" id="inputId" name="memId" maxlength="10" required placeholder=" (4-12자의 영문 소문자, 숫자만 사용 가능합니다.)"></td>
                        <td>&nbsp;&nbsp;<button type="button" onclick="idCheck();" style="width: 80px; height: 40px; border: 1px solid lightgrey; border-radius: 5px;">중복확인</button></td>
                    </tr>

                    <tr>
                        <td colspan="2" id="outId"></td>
                    </tr>

                    <script>
                        $(document).ready(function(){

                            $("#inputId").on("keyup", function(event){

                                idRegExp = /^[a-z0-9]{4,12}$/;
    
                                if(!idRegExp.test($("#inputId").val())){
                                    $("#outId").html('<label style="color:red; margin-left: 135px; font-size:12px"> 부적합한 아이디입니다. </label>');
                                    $("#outId").show();
                                }else{
                                   /*  $("#outId").html('<label style="color:black; margin-left: 135px; font-size:12px"> 사용가능한 아이디입니다. </label>'); */
                                }
                            })
                     	})
                            
                         function idCheck(){
                        	
	                         const inputId = $("#inputId").val();
	                         console.log(inputId);
	                         $.ajax({
	                         	url:"<%=contextPath%>/idCheck.me",
	                         	data:{checkId:inputId},
	                         	success:function(result){
	                         		if(result == "NNNNN"){
	                         			$("#outId").html('<label style="color:red; margin-left: 135px; font-size:12px"> 이미 존재하는 아이디입니다. </label>');
	                         			$("#inputId").focus();
	                         		}else{
	                         			$("#outId").html('<label style="color:black; margin-left: 135px; font-size:12px"> 사용가능한 아이디입니다. </label>');
	                         			$("#inputId").focus();
	                         		}
	                         	},
	                         	error:function(){console.log("ajax 통신 실패");},
	                         })
	                         
                        }
                            
                    </script>



                    <tr>
                        <td>비밀번호</td>
                        <td colspan="3"><input type="password" name="memPwd" maxlength="12" required placeholder=" (6-10자의 영문, 숫자만 사용 가능합니다.)" style="font-family:Verdana;"></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td colspan="2" id="outPwd"></td>
                    </tr>

                    <tr>
                        <td>비밀번호 확인</td>
                        <td colspan="3"><input type="password" id="validatePwd" name="pwdCheck" maxlength="10" required style="font-family:Verdana;"></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td colspan="2" id="outPwd2"></td>
                    </tr>
                    
                    
                    <script>
	                     $(document).ready(function(){
	                            $("#validatePwd").on("focusout", function(event){
	                            	if( $("input[name=memPwd]").val() != $("input[name=pwdCheck]").val() ){
	                            		$("#outPwd2").html('<label style="color:red; margin-left: 135px; font-size:12px"> 부적합한 아이디입니다. </label>');
	                         		}
	                            })
	                     })
                    </script>
                    
                    

                    <tr>
                        <td>닉네임</td>
                        <td colspan="3"><input type="text" name="nickname" placeholder=" (4-10자의 한글, 숫자만 사용 가능합니다.)"></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td colspan="2"></td>
                    </tr>

                    <tr>
                        <td>이름</td>
                        <td colspan="3"><input type="text" name="memName" required></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td colspan="2"></td>
                    </tr>

                    <tr>
                        <td>생년월일</td>
                        <td colspan="3"><input type="text" name="birth" placeholder=" (6자리 숫자로만 입력해주세요.)"></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td colspan="2"></td>
                    </tr>

                    <tr>
                        <td>전화번호</td>
                        <td colspan="3"><input type="text" name="phone" required placeholder=" (-)을 제외하고 숫자만 입력해주세요."></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td colspan="2"></td>
                    </tr>

                    <tr>
                        <td>이메일</td>
                        <td colspan="3"><input type="email" name="email" required></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td colspan="2"></td>
                    </tr>

                    <tr>
                        <td>주소</td>
                        <td colspan="3"><input type="text" name="address" required></td>
                        <td></td>
                    </tr>
                    
                    <tr>
                        <td colspan="2"></td>
                    </tr>


                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>

                    
                    <tr>
                        <td rowspan="2">관심분야</td>
                    
                        <td style="width: 130px;">
                            <input type="checkbox" name="category" value="10">
                            <label for="">패션 여성</label>
                        </td>

                        <td style="width: 150px;">
                            <input type="checkbox" name="category" value="20">
                            <label for="">라이프 인테리어</label>
                        </td>

                        <td style="margin-left: -30px;">
                            <input type="checkbox" name="category" value="30"> 
                            <label for="">문화 예술</label> <br>
                        </td>
                        <td></td>
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
                        <td></td>
                    </tr>
                    
                </table>


                <br>


                <div align="center">
                	<button type="reset" onclick="termsPage();">이전</button>
                    <button type="submit">회원가입</button>
                </div>
                
                <script>
                	function termsPage(){
                		location.href="<%=contextPath%>/views/member/terms.jsp";
                	}
                </script>
                

            </form>

        </div>

    </div>

    <br><br>
    
    
</body>
</html>