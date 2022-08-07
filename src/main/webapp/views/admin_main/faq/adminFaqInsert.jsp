<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.common.model.vo.FaqCategory" %>
<%
	ArrayList<FaqCategory> list = (ArrayList<FaqCategory>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 등록</title>
<meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FAQ 등록</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/eunjee/noti/css/summernote/summernote-lite.css">

    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/eunjee/noti/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/eunjee/noti/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/eunjee/noti/css/elegant-icons.css" type="text/css">
    <!-- <link rel="stylesheet" href="css/nice-select.css" type="text/css"> -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/eunjee/noti/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/eunjee/noti/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/eunjee/noti/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/eunjee/noti/css/style.css" type="text/css">
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
            margin: 10px 0px 0px 0px;
        }
        
        select{
            width: 200px;
            height: 48px;
            text-align: center;
        }

    </style>
</head>
<body>
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-left">
                    <div class="breadcrumb__text">
                        <h2>고객센터</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
<!-- --------------------------------------------- -->
    <!-- Blog Section Begin -->
    <section class="blog spad" style="margin-left: 50px">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
                        <div class="sidebar__item">
                            <p style="font-size: small;">글작성 페이지 이동</p>
                            <ul>
                                <li><a href="#">공지사항</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-lg-8 col-md-7">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item__text2">
                                <h4 align="left" class="boardTitle"><b>FAQ 등록</b></h4><hr style="color: black">
                                <form action="<%=request.getContextPath()%>/adFaqInsert.do" method="post" id="enroll-form">
                                    <table align="center">
                                       <tr>
                                            <th width="800" colspan="4"></th>
                                        </tr>
                                        <tr style="float: left">
                                            <td colspan="2" style="">
                                                 <!-- <select name="faqCategory">
                                                        <option disabled selected hidden>카테고리를 선택하세요</option>
                                                        <option value="10">주문/결제</option>
                                                        <option value="20">반품</option>
                                                        <option value="30">적립금</option>
                                                        <option value="40">로그인/회원가입</option>
                                                </select> -->
                                            </td>
                                        </tr> 
                                        <tr> 
                                            <th colspan="4">제목</th>
                                        </tr>
                                        <tr>
                                            <td colspan="4"><input type="text" name="faqTitle" required placeholder="제목을 작성하세요"></td>
                                        </tr>
                                        <tr>
                                            <th colspan="4">내용</th>
                                        </tr>
                                        <tr>
                                            <td colspan="4">
                                            <textarea id="summernote" name="faqContent" placeholder="내용을 작성하세요" rows="10" required style="resize:none"></textarea>
                                            </td>
                                        </tr>
                                    </table>

                                    <div align="center" class="boardBtn bbb1">
                                        <button type="submit">작성하기</button>
                                        <button type="reset">취소하기</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->
<!-- --------------------------------------------- -->
    <script>
        
        $(document).ready(function() {
            //여기 아래 부분
            $('#summernote').summernote({
                  minHeight: 350,             // 최소 높이
                  maxHeight: 350,             // 최대 높이
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
			    ['insert',['picture']],
			  ],
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
            });
        });
    </script>
    <!-- Js Plugins -->
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/noti/js/jquery-3.3.1.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/noti/js/bootstrap.min.js"></script>
    <!-- <script src="js/jquery.nice-select.min.js"></script> -->
    
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/noti/js/jquery-ui.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/noti/js/jquery.slicknav.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/noti/js/mixitup.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/noti/js/owl.carousel.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/noti/js/main.js"></script>
    
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/noti/js/summernote/summernote-lite.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/noti/js/summernote/summernote-ko-KR.js"></script>
    
</body>
</html>