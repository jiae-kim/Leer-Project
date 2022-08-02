<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.leer.common.model.vo.Category"%>
<%
	ArrayList<Category> list = (ArrayList<Category>)session.getAttribute("list");
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
<%-- <%@ include file="../common/menubar.jsp" %>  --%>

	
<section class="breadcrumb-section set-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-left">
                    <div class="breadcrumb__text">
                        <h2>커뮤니티</h2>
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
                                                    <td><input type="text" name="tag"></td>
                                                <td>
                                                    <select class="categorySelect" name="category">
                                                            <option value="" disabled selected hidden>
                                                                카테고리를 선택하세요.
                                                            </option>
                                                          	<% for(Category c : list) { %>
                                                            <option value="<%=c.getCategoryNo()%>">
                                                                <%=c.getCategoryName() %>
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
                                                    style="resize:none"></textarea></td>
                                                    
                                            </tr>
                                             <tr>
							                    <th>첨부파일</th>
							                </tr>
							               	<tr>
							                    <td><input type="file" name="comuupfile"></td>
							               	</tr>
                                        </table>
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
    
   
</body>
</html>