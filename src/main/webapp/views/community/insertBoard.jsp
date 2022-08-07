<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.leer.member.model.vo.Member, java.util.ArrayList, com.leer.common.model.vo.*"%>
<%
	ArrayList<Category> cateList = (ArrayList<Category>)request.getAttribute("cateList");
	Member m = (Member)request.getAttribute("m");
	ComuBoard cb = (ComuBoard)request.getAttribute("cb");
	Attachment at = (Attachment)request.getAttribute("at");
	String flag = (String)request.getAttribute("flag");
%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LEER</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
   
    <style>
    
    	
	
	
	
	
	
	.blog__sidebar__search form {
	position: relative !important;
}

.blog__sidebar__search form input {
	width: 600px !important;
	height: 46px !important;
	font-size: 16px !important;
	color: #6f6f6f !important;
	padding-left: 15px !important;
	border: 1px solid #e1e1e1 !important;
	border-radius: 5px !important;
	
}

.blog__sidebar__search form button {
	font-size: 16px !important;
	color: #ffffff !important;
	background: #898989 !important;
	border: none !important;
	border-radius: 5px !important;
	position: absolute !important;
	margin-left: 5px !important;
	right: 25px !important;
	top: none !important; 
	height: 100% !important;
	padding: 0px 20px !important;

}
.row{
    display: -ms-flexbox !important; 
    display: flex !important;
    -ms-flex-wrap: none !important; 
    flex-wrap: none !important;  
    margin-right: -15px !important;
    margin-left: -15px !important;
}
.breadcrumb__text h2 {
	font-size: 35px  !important;
	color: #ffffff !important;
	font-weight: 700 !important;
}

.breadcrumb__option a:after {
	position: absolute !important;
	right: -12px !important;
	top: 13px !important;
	height: 1px !important;
	width: 10px !important;
	background: #ffffff !important;
	content: "" !important;
}

.breadcrumb__option span {
	display: inline-block !important;
	font-size: 16px !important;
	color: #ffffff !important;
}

.col-md-7 {
        -ms-flex: 0 0 58.333333% !important;
        flex: 0 0 58.333333% !important;
        max-width: 58.333333% !important;
    }
.col-lg-6 {
        -ms-flex: 0 0 50% !important;
        flex: 0 0 50% !important;
        max-width: 50% !important;
}

 .col-md-6 {
        -ms-flex: 0 0 50% !important;
        flex: 0 0 50% !important;
        max-width: 50% !important;
    }
    .blog__item__text {
	padding-top: 25px !important;
	width: 600px !important;
}
.blog__item__text .blog__btn {
	position: absolute !important;
	display: inline-block !important;
	font-size: 14px !important;
	color: #1c1c1c !important;
	text-transform: uppercase !important;
	letter-spacing: 1px !important;
	padding: 14px 20px 12px !important;
	border-radius: 25px !important;
	bottom: 0 !important;
	left: 0 !important;
}


.blog__item__text .blog__btn span {
	position: relative !important;
	top: 1px !important;
	margin-left: 5px !important;
}

.blog__item__text2 {
	width: 680px v
}

.blog__item__text2 ul {
	margin-bottom: 15px !important;
}
.hashtag{
	display: inline !important;
	color: #1c1c1c !important;
	background-color: rgb(221, 221, 221) !important;
	border-radius: 3px !important;
}
.hashtag:hover{
	cursor: pointer !important;
	color: white !important;
}

.blog__item__text2 ul li {
	font-size: 16px !important;
	color: #b2b2b2 !important;
	list-style: none !important;
	display: inline-block !important;
	margin-right: 15px !important;
}

#noti {
	margin-top: 15px !important;
}

.blog__item__text2 ul li:last-child {
	margin-right: 0 !important;
}

.blog__item__text2 h5 {
	margin-bottom: 12px !important;
}

.blog__item__text2 h5 a {
	font-size: 20px !important;
	color: #1c1c1c !important;
	font-weight: 700 !important;
}


.blog__item__text2 p {
	margin-bottom: 25px !important;
}


.blog__item__text2 .blog__btn {
	position: absolute !important;
	display: inline-block !important;
	font-size: 14px !important;
	color: #1c1c1c !important;
	text-transform: uppercase !important;
	letter-spacing: 1px v
	padding: 14px 20px 12px !important;
	border-radius: 25px !important;
	bottom: 0 !important;
	left: 0 !important;
}

.blog__item__text2 .blog__btn span {
	position: relative !important;
	top: 1px !important;
	margin-left: 5px !important;
}

.blog__pagination {
	padding-top: 5px !important;
	position: relative !important;
}

/* .blog__pagination:before {
	position: absolute;
	left: 0;
	top: 0;
	height: 1px;
	width: 100%;
	background: #000000;
	opacity: 0.1;
	content: "";
} */

.blog__btn:before{
	position: absolute !important;
	left: 0 !important;
	bottom: 0 !important;
	height: 1px !important;
	width: 630px !important;
	background: #000000 !important;
	opacity: 0.1 !important;
	content: "" !important;
}

.blog__sidebar {
	margin-top: 50px !important;
}

.blog__sidebar__item {
	margin-top: 50px !important;
	max-width: 20% !important;
}

.imgChange:hover{
	cursor: pointer !important;
	background-color: gray !important;
}

.blog__sidebar__item h4 {
	color: #1c1c1c !important;
	font-weight: 700 !important;
	margin-bottom: 25px !important;
}
.myBoard{
	margin-top: 20px !important;
}
#profile{
	margin-bottom:30px !important;
	margin-left:20px !important;
}
#profile strong{
	margin-left: 10px !important;
	font-size: 16px !important;
	color: #828282 !important;
}

#profile strong:hover{
	cursor: pointer !important;
	color: skyblue !important;
}
.myPageList{
	border-top: 1px solid black !important;
	border-bottom: 1px solid black !important;
	height: 260px !important; 
}
#myPage{
	height: 180px !important;
	margin-top: 25px !important;
}
/* .writeBoard{
	margin-bottom: 10px;
	width: 100%;
	background-color: gray;
	border-image-repeat: 5px;
} */
.writeBoard button{
	border: 1px solid black !important;
	color: white !important;
	width: 100% !important;
	background-color: gray !important;
	font-size: 16px !important;
	line-height: 40px !important;
	border-style: none !important;
}
.blog__sidebar__item ul{
	margin-bottom: 20px !important;
}
.blog__sidebar__item ul li {
	list-style: none !important;
	font-size: 12px !important;
	height: 30px !important;
	margin-left: 20px !important;
}
.box-g h4{
	font-size: 12px !important;
	margin: 10px !important;
}
.blog__sidebar__item ul li a {
	font-size: 12px !important;
	color: #666666 !important;
	line-height: 48px !important;
	-webkit-transition: all, 0.3s !important;
	-moz-transition: all, 0.3s !important; 
	-ms-transition: all, 0.3s !important;
	-o-transition: all, 0.3s !important;
	transition: all, 0.3s !important;
}

.blog__sidebar__item ul li a:hover {
	color: #7fad39 !important;
}


.blog__sidebar__search {
	margin: 50px 0px 30px !important;
}

.blog__sidebar__search form {
	position: relative !important;
}

.blog__sidebar__search form input {
	width: 520px !important;
	height: 46px !important;
	font-size: 16px !important;
	color: #6f6f6f !important;
	padding-left: 15px !important;
	border: 1px solid #e1e1e1 !important;
	border-radius: 5px !important;
	
}

.blog__sidebar__search form input::placeholder {
	color: #6f6f6f !important;
}

.blog__sidebar__search form button {
	font-size: 16px;!important
	color: #ffffff !important;
	background: #898989 !important;
	border: none !important;
	border-radius: 5px !important;
	position: absolute !important;
	margin-left: 5px !important;
	right: none !important;
	top: none !important;
	height: 100% !important;
	padding: 0px 20px !important;

}

.blog__sidebar__recent .blog__sidebar__recent__item {
	display: block !important;
}

.blog__sidebar__recent .blog__sidebar__recent__item:last-child {
	margin-bottom: 0 !important;
}

.blog__sidebar__recent__item {
	overflow: hidden !important;
	margin-bottom: 20px !important;
}

.blog__sidebar__recent__item__pic {
	float: left !important;
	margin-right: 20px !important;
}

.blog__sidebar__recent__item__text {
	overflow: hidden !important;
}

.blog__sidebar__recent__item__text h6 {
	font-weight: 700 !important;
	color: #333333 !important;
	line-height: 20px !important;
	margin-bottom: 5px !important;
}

.blog__sidebar__recent__item__text span {
	font-size: 12px !important;
	color: #999999 !important;
	text-transform: uppercase !important;
}

.bestTag{
	margin-top:30px !important;
	max-width: 80% !important;
}

.blog__sidebar__item__tags a {
	font-size: 12px !important;
	color: #6f6f6f !important;
	background: #f5f5f5 !important;
	display: inline-block !important;
	padding: 7px 13px 5px !important;
	margin-right: 6px !important;
	margin-bottom: 10px !important;
}

/*---------------------
  Blog Details Hero
-----------------------*/

.blog-details-hero {
	height: 350px !important;
	display: flex !important;
	align-items: center !important;
}

.blog__details__hero__text {
	text-align: center !important;
}

.blog__details__hero__text h2 {
	font-size: 46px !important;
	color: #ffffff !important;
	font-weight: 700 !important;
	margin-bottom: 10px !important;
}

.blog__details__hero__text ul li {
	font-size: 16px !important;
	color: #ffffff !important;
	list-style: none !important;
	display: inline-block !important;
	margin-right: 45px !important;
	position: relative !important;
}

.blog__details__hero__text ul li:after {
	position: absolute !important;
	right: -26px !important;
	top: 0 !important;
	content: "|" !important;
}

.blog__details__hero__text ul li:last-child {
	margin-right: 0 !important;
}

.blog__details__hero__text ul li:last-child:after {
	display: none !important;
}

/*---------------------
  Blog Details
-----------------------*/

.related-blog {
	padding-top: 70px !important;
	padding-bottom: 10px !important;
}

.related-blog-title {
	margin-bottom: 70px !important;
}

.blog-details {
	padding-bottom: 75px !important;
	border-bottom: 1px solid #e1e1e1 !important;
}

.blog__details__text {
	margin-bottom: 45px !important;
}

.blog__details__text img {
	margin-bottom: 30px !important;
}

.blog__details__text p {
	font-size: 18px !important;
	line-height: 30px !important;
}

.blog__details__text h3 {
	color: #333333 !important;
	font-weight: 700 !important;
	line-height: 30px !important;
	margin-bottom: 30px !important;
}

.blog__details__author__pic {
	float: left !important;
	margin-right: 15px !important; 
}

.blog__details__author__pic img {
	height: 92px !important;
	width: 92px !important;
	border-radius: 50% !important;
}

.blog__details__author__text {
	overflow: hidden !important;
	padding-top: 30px !important;
}

.blog__details__author__text h6 {
	color: #1c1c1c !important;
	font-weight: 700 !important;
}

.blog__details__author__text span {
	font-size: 16px !important;
	color: #6f6f6f !important;
}

.blog__details__widget ul {
	margin-bottom: 5px !important;
}

.blog__details__widget ul li {
	font-size: 16px !important;
	color: #6f6f6f !important;
	list-style: none !important;
	line-height: 30px !important;
}

.blog__details__widget ul li span {
	color: #1c1c1c !important;
	font-weight: 700 !important;
}

.blog__details__widget .blog__details__social a {
	display: inline-block !important;
	font-size: 20px !important;
	color: #6f6f6f !important;
	margin-right: 24px !important;
	-webkit-transition: all, 0.3s;
	-moz-transition: all, 0.3s;
	-ms-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
}

.blog__details__widget .blog__details__social a:hover {
	color: #7fad39 !important;
}

.blog__details__widget .blog__details__social a:last-child {
	margin-right: 0 !important;
}
        #enroll-form table{
            font-size: 14px;
        }
        
        #enroll-form input, #enroll-form textarea{
            width: 100%;
            box-sizing:border-box;
        }
        .upfiles{
        }
        #enroll-form {
            font-size: 14px;
            
        }
        #enroll-form{
            /* background-color: rgb(206, 206, 206); */
            margin-top: top 25px;

        }
        .blog__item__text2 h4{
            display: inline-block;
            color: rgb(137, 137, 137);
            margin: 25px 0px 25px 0px;
        }
    
        .boardBtn button {
            border: 1px solid black;
            color: white;
            width: 15%;
            background-color: #878787;
            font-size: 14px;
            line-height: 40px;
            border-style: none;
        }
        select{
            width: 300px;
            height: 48px;
            text-align: center;
        }
		.categorySelect option{
			position:absolute !important;
			right:0 !important;
			margin-left:100px;
		}
       
    </style>
</head>
<body>
<%@ include file="../common/menubar.jsp" %>

	
<section class="breadcrumb-section set-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-left">
                    <div class="breadcrumb__text">
                        <h2><a href="<%=contextPath%>/comu.bo?cpage=1" style="color:white;">커뮤니티</a></h2>
                        <div class="breadcrumb__option">
                            <span>게시글 작성하기</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
 <%@ include file="../community/communityMain.jsp"%>
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/elegant-icons.css" type="text/css">

	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/jquery-ui.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/owl.carousel.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/slicknav.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/style.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/summernote/summernote-lite.css">
			<%if(flag.equals("insert")) { %>
                <div class="col-lg-8 col-md-7">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="blog__item__text2">
                                    <h4 align="left" class="boardTitle"><b>커뮤니티 작성하기</b></h4><hr style="color: black">

                                    <form action="<%=contextPath %>/comuinsert.bo" method="post" id="enroll-form"
                                        enctype="multipart/form-data">
                                        <!--게시글은 post방식으로 작성 get방식은 데이터가 부족해서 날아감-->
                                        <!-- 카테고리번호, 제목, 내용, 로그인한 회원번호, 첨부파일 한개 -->
                                        <table align="center">
                                            <tr>
                                                <th width="300">태그 작성</th>
                                                <th width="300">게시판 선택</th>
                                            </tr>
                                            <tr>
                                                    <td><input type="text" name="tag" placeholder="(태그는,쉼표를,이용해,구분,작성해,주세요)"></td>
                                                <td>
                                                    <select class="categorySelect" name="category" required>
                                                            <option value="" disabled selected hidden>
                                                                카테고리를 선택하세요.
                                                            </option>
                                                          	<% for(Category ct : cateList) { %>
                                                            <option value="<%=ct.getCategoryNo()%>">
                                                                <%=ct.getCategoryName() %>
                                                            </option>
                                                    		<% } %>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th colspan="2">제목을 작성해주세요.</th>
                                            </tr>
                                            <tr>
                                                <td colspan="2"><input type="text" name="title" required></td>
                                            </tr>
                                            <tr>
                                                <th colspan="2">내용을 작성해주세요.</th>
                                                
                                            </tr>
                                            <tr>
                                                <td colspan="2"><textarea id="summernote" name="content" rows="10" required
                                                    style="resize:none"></textarea>
                                                    </td>
                                            </tr>
                                          	<!-- <tr>
                                          		<img id="contentImg" width="150" height="120" onclick="chooseFile(1);" style="bprder:1px solid black">
                                          	</tr> -->
                                        </table>
                                        <!-- <div id="file-area" >
							            
							                    <input type="file" name="comuupfile" onchange="loadImg(this,1);">
						                     </div> -->
                                        <br>

                                        <div align="center" class="boardBtn">
                                            <button type="submit">작성하기</button>
                                            <button type="reset">취소하기</button>
                                        </div>
                                    </form>
                                    
                            </div>
                            </div>
                        </div>
                    </div>
                  <% }else { %>	
                  	 <div class="col-lg-8 col-md-7">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="blog__item__text2">
                                    <h4 align="left" class="boardTitle"><b>커뮤니티 수정하기</b></h4><hr style="color: black">

                                    <form action="<%=contextPath %>/comuUpdate.bo" method="post" id="enroll-form"
                                        enctype="multipart/form-data">
                                        <input type="hidden" name="no" value="<%=cb.getComuNo()%>">
                                        <table align="center">
                                            <tr>
                                                <th width="300">태그 작성</th>
                                                <th width="300">게시판 선택</th>
                                            </tr>
                                            <tr>
                                            
                                            	<% if(cb.getTag() != null) { %>
                                                    <td><input type="text" name="tag" value="<%= cb.getTag() %>"></td>
                                                <% } else { %>
                                                	<td><input type="text" name="tag" value="" placeholder="(태그는,쉼표를,이용해,구분,작성해,주세요)"></td>
                                                <% } %>
                                                
                                                <td>
                                                    <select class="categorySelect" name="category" required>
                                                            <option value="<%= cb.getCategoryNo() %>"  selected hidden>
                                                               <%=cb.getCategoryName() %>
                                                            </option>
                                                          	<% for(Category ct : cateList) { %>
                                                            <option value="<%=ct.getCategoryNo()%>">
                                                                <%=ct.getCategoryName() %>
                                                            </option>
                                                    		<% } %>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th colspan="2">제목을 작성해주세요.</th>
                                            </tr>
                                            <tr>
                                                <td colspan="2"><input type="text" name="title" required value="<%=cb.getTitle()%>"></td>
                                            </tr>
                                            <tr>
                                                <th colspan="2">내용을 작성해주세요.</th>
                                                
                                            </tr>
                                            <tr>
                                                <td colspan="2"><textarea id="summernote" name="content" rows="10" required
                                                    style="resize:none"><%= cb.getContent() %></textarea>
                                                </td>
                                                    
                                            </tr> 
                                        </table>
						               	<%-- 	
						               	<img id="contentImg" width="150" height="120" onclick="chooseFile();">
						               	<div id="file-area" style="display:none">
							               		<% if(at != null) { %>
							               			<%= at.getOriginName() %>
							               			<input type="hidden" name="originFileNo" value="<%=at.getFileNo()%>">
							               			<br>
							               		<% } %>
							                    <input type="file" name="comuupfile" onchange="loadImg(this);">
						                     </div> --%>
                                        <br>
										
                                        <div align="center" class="boardBtn">
                                            <button type="submit">작성하기</button>
                                            <button type="reset">취소하기</button>
                                        </div>
                                    </form>
                            </div>
                            </div>
                        </div>
                    </div>
                    <% } %>
		 <%@ include file="../community/comuMypage.jsp" %>
	 <%@ include file="../common/footer.jsp" %>
    <!-- Blog Section End -->
<script>
        
        $(document).ready(function() {
            //여기 아래 부분
            $('#summernote').summernote({
                  minHeight: 400,             // 최소 높이
                  maxHeight: 400,             // 최대 높이
                  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
                  lang: "ko-KR",					// 한글 설정
                  placeholder: '내용을 작성하세요.',	//placeholder 설정
                  toolbar: [
			    // [groupName, [list of button]]
			    ['fontname', ['fontname']],
			    ['fontsize', ['fontsize']],
			    ['style', ['bold']],
			    ['color', ['forecolor']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    /* ['insert',['picture']], */
			  ],
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
            });
        });
    </script>
   <!--  <script>
                function chooseFile(num){
                    $("input[name=file" + num + "]").click();
                }
                function loadImg(inputFile, num){
                    // inputFile : 현재 변화가 생긴 input type="file" 요소객체
                    // num : 몇번째 input요소인지 구분할 값 (각 영역을 찾아서 미리보기해야되서)

                    // 현재 파일이 선택됐다면
                    // => inputFile.files[0]에 선택된 파일정보 담겨있음
                    // => inputFile.files.length 또한 1이 될거임.

                    if(inputFile.files.length == 1){ // 파일선택된경우 => 파일읽어들여서 미리보기

                        // 파일을 읽어들일 FileReader 객체 생성
                        const reader = new FileReader();

                        // 파일을 읽어들이는 메소드 
                        reader.readAsDataURL(inputFile.files[0]);

                        // 파일 읽어들이기가 완료됐을 때 실행할 함수를 정의해두기
                        reader.onload = function(e){
                            // e.target.result => 읽어들인 파일의 고유한 url
                            // console.log(e.target.result);
                            switch(num){
                                case 1: $("contentImg1").attr("src", e.target.result); break;
                            }
                        }

                    }else{ // 파일취소됐을경우 => 미리보기된것도 사라지게
                        switch(num){
                                case 1: $("#contentImg1").attr("src", null); break;
                            }  
                    }
                }
            </script> -->
   
</body>
</html>