<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.leer.mtm.model.vo.Mtm"%>
    
<%
	Mtm m = (Mtm)request.getAttribute("m");
	int mtmNo = (int)request.getAttribute("mtmNo");
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #enrollBtn button{
        width: 150px;
        border: none;
        border-radius: 10px;
    }
</style>


</head>
<body>
    
    <%@ include file="../common/menubar.jsp" %>
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
    <link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/summernote/summernote-lite.css">
    
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" style="background-image:url(<%=contextPath%>/resources/images/productCategory/lifestyle.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-lg-12" style="text-align:left;">
                    <div class="breadcrumb__text" >
                        <h2 style="font-size:35px">고객센터</h2>
                        <div class="breadcrumb__option">
                            
                            <span>1대1 문의</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    
    
    
    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebarr">
                        <div class="sidebar__item">
                            <h4>고객센터</h4>
                            <ul>
                                <li><a href="#">공지사항</a></li>
                                <li><a href="#">FAQ</a></li>
                                <li><a href="#">1대1 문의</a></li>
                            </ul>
                        </div>
                        
                    </div>
                </div>

            <div class="enroll-wrap">
                <label style="font-size: 25px; font-weight:600">1:1 문의하기</label>
                
                <hr>
                
                <form action="<%=contextPath%>/update.mtm" method="post">
                <input type="hidden" name="mtmNo" value="<%= mtmNo %>">
                    <table>
                        <tr>
                            <td style="font-weight:bold">문의유형</td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="mtmTitle" style="width: 750px; height:40px; border:1px solid lightgrey; border-radius: 5px;" readonly value="<%=m.getMtmType() %>"></td>
                            </td>
                        </tr>
                        
                        
                        
                        <!-- select option 기존의 선택했던 값 가져오는 구문 
                        <script>
                        	$(function(){
                        		 $("#mtmType").children().each(function(){
                                     $(this).attr('selected',selected);
                        </script>-->

                        

                        <tr>
                            <td style="font-weight:bold">제목</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="mtmTitle" style="width: 750px; height:40px; border:1px solid lightgrey; border-radius: 5px;" value="<%=m.getMtmTitle() %>"></td>
                        </tr>
                        <tr>
                            <td style="font-weight:bold">내용</td>
                        </tr>
                        <tr>
                            <td colspan="2"><textarea id="summernote" name="mtmContent" required style="resize:none; border-radius: 5px;"><%= m.getMtmContent() %></textarea></td>
                        </tr>
                    </table>

                    <br>
                    <div id="enrollBtn" align="center">
                        <button type="button" onclick="history.back();">취소</button>
                        <button type="submit">확인</button>
                    </div>
                </form>


            </div>
        </div>
    </section>
    <!-- Product Section End -->
    
      <script>
      	$(document).ready(function() {
              $('#summernote').summernote({
                    height:300,
                    width:750,
                    mintheight:300,
                    maxheight:null,      
                    focus: true,                  
                    lang: "ko-KR",					
                    placeholder: '내용을 작성하세요.',
                    tabsize:2,
                    toolbar: [
                            //[groupName, [list of button]]
                            //['fontname', ['fontname']],
                            //['fontsize', ['fontsize']],
                            //['style', ['bold']],
                            //['color', ['forecolor']],
                            //['para', ['ul', 'ol', 'paragraph']],
                            //['insert',['picture']],
                            ['style', ['style']],
                            ['font', ['bold', 'underline', 'clear']],
                            ['color', ['color']],
                            ['para', ['ul', 'ol', 'paragraph']],
                            ['table', ['table']],
                            ['insert', ['link', 'picture', 'video']],
                            ['view', ['fullscreen', 'codeview', 'help']]

                    ],
              fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
              fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
              });
          });
      </script>
        
    <br><br>

    <%@ include file="../common/footer.jsp" %>

</body>
</html>