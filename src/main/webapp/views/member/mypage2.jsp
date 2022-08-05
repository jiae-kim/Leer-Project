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
        padding: 0 50px;
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
        padding: 0 50px;
        border-radius: 10px;
        background-color: rgb(247, 247, 247);
    }

    .f3{
        border: 1px solid lightgrey;
        padding: 0 50px;
        border-radius: 10px;
        background-color: rgb(247, 247, 247);
    }

    .modal-body input{
        /* padding: 30px; */
        width: 300px; 
        height: 40px;
    }

    #deleteCheck{
        width: 15px;
        height: 15px;
    }

    .deleteInfo{
        padding: 30px;
    }

</style>

	<!-- 모달 쓰기 위해서 필요한 링크들입니다!!!! 주석처리 하지 말아주세요 ~!!! -->
    <!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"> 
   
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
   
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    

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

                                    <ul>
                                        <li style="color: darkgrey; font-size:14px">고객님의 회원정보를 수정하실 수 있습니다. 회원정보를 변경하시고 반드시 하단에 있는 확인 버튼을 클릭해 주셔야 합니다.</li>
                                        <li style="color: darkgrey; font-size:14px">보다 다양한 서비스를 받으시려면 정확한 정보를 항상 유지해 주셔야합니다.</li>
                                    </ul>

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
											<td><input type="text" name="memBirth" value="<%=birth %>"></td>
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
                                        <button type="submit">확인</button>
                                    </div>

                                    <br>

                                </fieldset>
                            </form>



                            <br>



                            <fieldset class="f2">
                                <legend>비밀번호 변경</legend>
                                <ul>
                                    <li style="color: darkgrey; font-size:14px">안전한 계정 사용을 위해 비밀번호는 주기적으로 변경해 주세요.</li>
                                    <li style="color: darkgrey; font-size:14px">다른 아이디/사이트에서 사용한 적 없는 비밀번호 이전에 사용한 적 없는 비밀번호가 안전합니다.</li>
                                </ul>

                                <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#updatePwd">비밀번호 변경</button><br><br>

                                <!-- The Modal -->
                                <div class="modal fade" id="updatePwd">
                                    <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                    
                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">비밀번호 변경</h4><br>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        
                                        <!-- Modal body -->
                                        <div class="modal-body" align="center">
                                         <form action="<%=contextPath %>/updatePwd.me" method="post">
                                         <input type="hidden" name="memId" value="<%=memId%>">
                                         
                                             <table>
                                                 <tr>
                                                     <td>기존 비밀번호</td>
                                                     <td><input type="password" name="memPwd" required style="font-family:Verdana;"></td>
                                                 </tr>
                                                 <tr>
                                                     <td>새 비밀번호</td>
                                                     <td><input type="password" name="updatePwd" required style="font-family:Verdana;"></td>
                                                 </tr>
                                                 <tr>
                                                     <td>새 비밀번호 확인</td>
                                                     <td><input type="password" name="checkPwd" required style="font-family:Verdana;"></td>
                                                 </tr>
                                                 <tr>
                                                     <td colspan="2">&nbsp;</td>
                                                 </tr>
                                             </table>

                                             <button type="submit" class="btn btn-secondary" onclick="return validatePwd();">확인</button>
                                         </form>
                                         
                                         <script>
                                         	function validatePwd(){
                                         		if( $("input[name=updatePwd]").val() != $("input[name=checkPwd]").val() ){
                                         			alert("비밀번호가 일치하지 않습니다.");
                                         			return false;
                                         		}
                                         	}
                                         </script>
                                         
                                        </div>

                                    </div>
                                    </div>
                                </div>
                            </fieldset>
                                

                               <fieldset class="f3">
                                   <legend>회원탈퇴</legend>
                                   <ul>
                                       <li style="color: darkgrey; font-size:14px">탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가하오니 신중하게 선택하시기 바랍니다.</li>
                                       <li style="color: darkgrey; font-size:14px">회원정보 및 메일, 블로그, 주소록 등 개인형 서비스 이용기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.</li>
                                   </ul>

                                   <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#deleteMember">회원탈퇴</button>
                                   <br><br>
                                   
                                   <!-- The Modal -->
                                <div class="modal fade" id="deleteMember">
                                    <div class="modal-dialog modal-dialog-centered modal-lg">
                                    <div class="modal-content">
                                    
                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">회원탈퇴</h4><br>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        
                                        <!-- Modal body -->
                                        <div class="modal-body1" align="center">
                                        
                                            <form action="<%=contextPath %>/delete.me" method="post">
                                       	    <input type="hidden" name="memId" value="<%=memId%>">

                                               <div class="deleteInfo">
                                       	        <label style="font-size: 20px; font-weight:600">Leer를 이용해주셔서 감사합니다</label>

                                                   <label>회원탈퇴 시 모든 회원정보와 포인트, 구매내역 등이 자동으로 삭제 처리되며, 복구가 불가합니다</label><br>
                                                   <label>회원탈퇴 시 모든 회원정보와 포인트, 구매내역 등이 자동으로 삭제 처리되며, 복구가 불가합니다</label><br>
                                                   <label>회원탈퇴 시 모든 회원정보와 포인트, 구매내역 등이 자동으로 삭제 처리되며, 복구가 불가합니다</label><br>
                                                   <label>회원탈퇴 시 모든 회원정보와 포인트, 구매내역 등이 자동으로 삭제 처리되며, 복구가 불가합니다</li><br>
                                               </div>
                                       	    <input type="checkbox" id="deleteCheck" name="deleteCheck" required><label style="color: rgb(253, 0, 0);">&nbsp;위 사항을 확인하였으며 회원탈퇴에 동의합니다.</label></b><br>
                                       	
                                         	<button type="submit" class="btn btn-secondary">탈퇴하기</button><br><br>
                                            </form>
                                        </div>

                                       </div>
                                    </div>
                                </div>
                            </fieldset>

                    </div>
                </div>   
            </div>
        </div>
    </section>

</body>
</html>