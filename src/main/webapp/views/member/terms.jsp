<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- <script src="//code.jquery.com/jquery-3.3.1.min.js"></script> -->

<style>
        .signUp-turms-wrap{
            background-color: white !important;
            margin-top: 100px !important;
            margin: auto;
        }

        .signUp-turms-info{
            margin-bottom: 30px !important;
        }


        .signUp-turms-content{
            width: 1000px !important;
            height: 780px !important;
            margin: auto !important;
            margin-top: 50px !important;
            background-color: rgb(243, 243, 243) !important;
            padding: 30px !important;
        }

        /* .signUp-turms-content>div>input[type=checkbox]{
            text-align: right;
        } */

        .signUp-turms-content>div label{
            text-align: right !important;
        }

        .signUp-turms-btn>button{
            width: 300px !important;
            height: 50px !important;
        }
        
        
        /* 우측 정렬 테스트 */
        #turms1>label{
        	text-align:right !important;
        }

    </style>


</head>
<body>

	<%@ include file="/views/common/menubar.jsp" %>

	<hr>
	
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>


  	<div class="signUp-turms-wrap">

        <div class="signup-turms-info" align="center">
            <label for="" style="font-size: 35px; font-weight:900">이용약관</label><br>
            <label for="" style="font-size: 20px; font-weight: 600; color: grey;">회원가입 전 이용약관을 반드시 읽어보시기 바랍니다</label>
        </div>


        <div class="signUp-turms-content" action="" method="">
            <div id="turms1">
                <p>회원 이용약관</p>
                <hr><br>
                <textarea name="" id="" cols="140" rows="15" style="resize:none;"></textarea><br>
                <label>회원 이용약관에 동의합니다.</label>
                <input type="checkbox" id="chk" name="chk">
            </div>

            <br><br><br>

            <div id="turms2">
                <p>회원 이용약관</p>
                <hr><br>
                <textarea name="" id="" cols="140" rows="15" style="resize:none"></textarea><br>
                <label for="">회원 이용약관에 동의합니다.</label>
                <input type="checkbox" id="chk" name="chk">
            </div>

            <br>

            <div id="turms3">
                <label for="">이용약관 및 개인정보수집 및 이용에 모두 동의합니다.</label>
                <input type="checkbox" id="checkAll" name="checkAll">
            </div>
		
		
            <script>
                $(function() {
                	
                    $("#checkAll").click(function() {
                    	
                        if ($("#checkAll").prop("checked")) {
                            $("input[name=chk]").prop("checked", true)
                        } else {
                            $("input[name=chk]").prop("checked", false)
                        }
                    })
                    
                    $("input[name=chk]").click(function() {
                    	
        				var total = $("input[name=chk]").length;
        				var checked = $("input[name=chk]:checked").length;
        				
        				if(total != checked) $("#checkAll").prop("checked", false);
        				else $("#checkAll").prop("checked", true); 
        			});
                    
                });
            </script>



            <br><br><br>
            


            <div class="signUp-turms-btn" align="center">
                <button type="button" onclick="location.href='<%=contextPath %>';">이전</button>
                <button type="submit" id="next">다음</button>
            </div>
        
        </div>

        
        <script>
        	$(function(){
        		$("#next").click(function(){
        			
        			const check = document.getElementsByName("chk");
        			
        			
        			if(check[0].checked == true && check[1].checked == true){
        				location.href="<%=contextPath%>/signupPage.me";
        			}else{
        				alert("모든 이용약관에 동의해주세요");
        			}
        		})
        	})
        </script>

    </div>
    
  
    
</body>
</html>