<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .turms-btn button{
        border: none;
        border-radius: 5px;
        width: 150px;
    }
</style>
</head>
<body>

    <%@ include file="/views/common/menubar.jsp" %>
    <hr>

    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>

    <div class="t-wrap">

        <div class="t-info" align="center">
            <label for="" style="font-size: 35px; font-weight:900">이용약관</label><br>
            <label for="" style="font-size: 20px; font-weight: 600; color: grey;">회원가입 전 이용약관을 반드시 읽어보시기 바랍니다</label>
        </div>

        <div class="t-con" align="center" style="background-color:rgb(241, 241, 241); padding: 30px; height: 730px;">

            <div align="left" style="margin-left: 26%;"><label style="font-size:18px">약관 및 개인정보 보호</label></div>
            <div class="t1" style="border: 1px solid lightgrey; border-radius: 5px; width: 900px; height: 200px; background-color: white;">
            	<textarea id="privacy_scroll" style="resize:none; width:100%; height:200px; padding:1rem; border: 1px solid lightgrey; border-radius: 5px;" readonly>
타인의 권리를 존중해 주세요.
여러분이 무심코 게재한 게시물로 인해 타인의 저작권이 침해되거나 명예훼손 등 권리 침해가 발생할 수 있습니다. 리에르는 이에 대한 문제 해결을 위해 ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률’ 및 ‘저작권법’ 등을 근거로 권리침해 주장자의 요청에 따른 게시물 게시중단, 원 게시자의 이의신청에 따른 해당 게시물 게시 재개 등을 내용으로 하는 게시중단요청서비스를 운영하고 있습니다. 보다 상세한 내용 및 절차는 고객센터 내 게시중단요청서비스 소개를 참고해 주세요.
한편, 리에르 서비스를 통해 타인의 콘텐츠를 이용한다고 하여 여러분이 해당 콘텐츠에 대한 지식재산권을 보유하게 되는 것은 아닙니다. 여러분이 해당 콘텐츠를 자유롭게 이용하기 위해서는 그 이용이 저작권법 등 관련 법률에 따라 허용되는 범위 내에 있거나, 해당 콘텐츠의 지식재산권자로부터 별도의 이용 허락을 받아야 하므로 각별한 주의가 필요합니다.
리에르는 여러분이 리에르서비스를 마음껏 이용할 수 있도록 여러분께 리에르 서비스에 수반되는 관련 소프트웨어 사용에 관한 이용 권한을 부여합니다. 이 경우 여러분의 자유로운 이용은 리에르가 제시하는 이용 조건에 부합하는 범위 내에서만 허용되고, 이러한 권한은 양도가 불가능하며, 비독점적 조건 및 법적고지가 적용된다는 점을 유의해 주세요.
				</textarea>
            </div>
            <div align="right" style="margin-right:26%"><label>회원 이용약관에 동의합니다. &nbsp;</label><input type="checkbox" id="chk" name="chk"></div>

            <div align="left" style="margin-left: 26%;"><label style="font-size:18px">리에르 이용 관련 주의사항</label></div>
            <div class="t2" style="border: 1px solid lightgrey; border-radius: 5px; width: 900px; height: 200px; background-color: white">
            	<textarea id="privacy_scroll" style="resize:none; width:100%; height:200px; padding:1rem; border: 1px solid lightgrey; border-radius: 5px;" readonly>
리에르 서비스 이용과 관련하여 몇 가지 주의사항이 있습니다.
리에르는  여러분이 네이버 서비스를 자유롭고 편리하게 이용할 수 있도록 최선을 다하고 있습니다. 다만, 여러분이 리에르 서비스를 보다 안전하게 이용하고 리에르 서비스에서 여러분과 타인의 권리가 서로 존중되고 보호받으려면 여러분의 도움과 협조가 필요합니다. 여러분의 안전한 서비스 이용과 권리 보호를 위해 부득이 아래와 같은 경우 여러분의 게시물 게재나 리에르 서비스 이용이 제한될 수 있으므로, 이에 대한 확인 및 준수를 요청 드립니다.

회원 가입 시 이름, 생년월일, 휴대전화번호 등의 정보를 허위로 기재해서는 안 됩니다. 회원 계정에 등록된 정보는 항상 정확한 최신 정보가 유지될 수 있도록 관리해 주세요. 자신의 계정을 다른 사람에게 판매, 양도, 대여 또는 담보로 제공하거나 다른 사람에게 그 사용을 허락해서는 안 됩니다. 아울러 자신의 계정이 아닌 타인의 계정을 무단으로 사용해서는 안 됩니다. 이에 관한 상세한 내용은 계정 운영정책을 참고해 주시기 바랍니다.
타인에 대해 직접적이고 명백한 신체적 위협을 가하는 내용의 게시물, 타인의 자해 행위 또는 자살을 부추기거나 권장하는 내용의 게시물, 타인의 신상정보, 사생활 등 비공개 개인정보를 드러내는 내용의 게시물, 타인을 지속적으로 따돌리거나 괴롭히는 내용의 게시물, 성매매를 제안, 알선, 유인 또는 강요하는 내용의 게시물, 공공 안전에 대해 직접적이고 심각한 위협을 가하는 내용의 게시물은 제한될 수 있습니다.
관련 법령상 금지되거나 형사처벌의 대상이 되는 행위를 수행하거나 이를 교사 또는 방조하는 등의 범죄 관련 직접적인 위험이 확인된 게시물, 관련 법령에서 홍보, 광고, 판매 등을 금지하고 있는 물건 또는 서비스를 홍보, 광고, 판매하는 내용의 게시물, 타인의 지식재산권 등을 침해하거나 모욕, 사생활 침해 또는 명예훼손 등 타인의 권리를 침해하는 내용이 확인된 게시물은 제한될 수 있습니다.
            	</textarea>
            </div>
            <div align="right" style="margin-right:26%"><label>회원 이용약관에 동의합니다. &nbsp;</label>
                <input type="checkbox" id="chk" name="chk"></div>

            <div align="right" style="margin-right: 26%;">
                <label style="font-weight:500;">이용약관 및 개인정보수집 및 이용에 모두 동의합니다.</label>
                <input type="checkbox" id="checkAll" name="checkAll">
            </div>
            <br>

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


            <div class="turms-btn" align="center">
                <button type="button" onclick="history.back();">이전</button>
                <button type="submit" id="next">다음</button>
            </div>
            <br>


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