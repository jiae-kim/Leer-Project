<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .f1{
        border: 1px solid lightgrey;
        padding: 20px;
        border-radius: 10px;
        background-color: rgb(247, 247, 247);
    }

    .f1 table td input{
        border: 1px solid darkgrey;
        border-radius: 3px;
        width: 300px;
        height: 30px;
        margin: 5px;
    }

    .f1 div button{
        width: 100px;
        border: 1px;
    }

    .f2{
        border: 1px solid lightgrey;
        padding: 20px;
        border-radius: 10px;
        background-color: rgb(247, 247, 247);
    }

    .f3{
        border: 1px solid lightgrey;
        padding: 20px;
        border-radius: 10px;
        background-color: rgb(247, 247, 247);
    }
</style>

</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	<section class="product spad">
        <div class="container">
            <div class="row">
                <%@ include file="../common/myPageSidebar.jsp" %>
                <div class="col-lg-9 col-md-7" style="padding-left:120px; flex-grow:1;">
                    <div class="etc_area" id="product_review">
                    
                    
                    
                    <%
                    	String memId = loginUser.getMemId();
                    	String memName = loginUser.getMemName();
                    	String nickname = (loginUser.getNickname() == null) ? "" : loginUser.getNickname();
                    	String phone = loginUser.getPhone();
                    	String email = loginUser.getEmail();
                    	String address = loginUser.getAddress();
                    	String birth = (loginUser.getMemBirth() == null) ? "" : loginUser.getMemBirth();
                    %>
                    



                    	<h2 class="etc_title" style="margin-top:0%">회원정보 수정</h2>
                    	
                    	<hr>
                    	
                        <div class="update-wrap">

                            <form action="<%=contextPath %>/update.me" method="post" id="enroll-form">
                
                                <fieldset class="f1">
                                    <legend>기본정보 수정</legend>

                                    <table id="table1">
                                        <tr>
                                            <td>아이디</td>
                                            <td><input type="text" name="memId" required readonly value="<%=memId%>"></td>
                                        </tr>

                                        <tr>
                                            <td>닉네임</td>
                                            <td><input type="text" name="nickname" required value="<%=nickname%>"></td>
                                            <td></td>
                                        </tr>
                                        
                                        <tr>
                                            <td>이름</td>
                                            <td><input type="text" name="memName" required readonly value="<%=memName%>"></td>
                                        </tr>

										<tr>
											<td>생년월일</td>
											<td><input type="text" name="birth" value="<%=birth %>"></td>
										</tr>
                    
                                        <tr>
                                            <td>전화번호</td>
                                            <td><input type="text" name="phone" required value="<%=phone%>"></td>
                                        </tr>
                    
                                        <tr>
                                            <td>이메일</td>
                                            <td><input type="email" name="email" required value="<%=email%>"></td>
                                        </tr>
                    
                                        <tr>
                                            <td>주소</td>
                                            <td><input type="text" name="address" required value="<%=address%>"></td>
                                        </tr>
                                    </table>

                                    <br>

                                    <div align="right">
                                        <button type="reset">취소</button>
                                        <button type="submit">수정</button>
                                    </div>

                                </fieldset>

                            </form>

                            <br>

                            <form action="">
                                <fieldset class="f2">
                                    <legend>비밀번호 변경</legend>
                                    <button type="button">비밀번호 변경</button>
                                </fieldset>
                            </form>
                                

                            <form action="">
                                <fieldset class="f3">
                                    <legend>회원탈퇴</legend>
                                    <button type="button">회원탈퇴</button>
                                </fieldset>
                            </form>
                                
                        </div>
                





                    </div>
                </div>   
            </div>
        </div>
    </section>

</body>
</html>