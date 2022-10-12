<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.leer.product.model.vo.Product"%>

<%
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Leer</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans:400" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/dahye/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/dahye/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/dahye/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/dahye/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/dahye/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/dahye/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/dahye/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/heeyeong/style.css" type="text/css">
    
</head>


<body>
	<%@ include file="views/common/menubar.jsp" %>
	<!-- 메뉴바 이하 내용들 -->
    <section class="hero">
        <div class="ccontainer">
            <div class="row">
                <div class="col-lg-12">
                    <div class="hero__item set-bg" style="background-image:url(<%=contextPath%>/resources/images/mainImg.jpg);">
                        <div class="hero__text">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <br>

    <div class="hero__search">
        <div class="hero__search__formm"> 
            <form action="<%=contextPath%>/search.main?search=">
                <input type="text" style="width: 30%; height: 52px; border:1px solid lightgrey" name="search">
                <button type="submit" class="site-btn" style="background:lightgrey; height: 52px; margin-left: -3px;">SEARCH</button>
            </form>
        </div>
    </div> 
	
	<div class="outer">
	<!-- 첫번째 단 -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>New Product</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li data-filter=".10" name="10" onclick="selectNew(10);">패션 / 여성</li>
                            <li data-filter=".20" name="20" onclick="selectNew(20);">라이프 / 인테리어</li>
                            <li data-filter=".30" name="30" onclick="selectNew(30);">문화 / 예술</li>
                            <li data-filter=".40" name="40" onclick="selectNew(40);">여행 / 취미</li>
                            <li data-filter=".50" name="50" onclick="selectNew(50);">시사 / 경제</li>
                            <li data-filter=".60" name="60" onclick="selectNew(60);">교육 / 과학</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="row featured__filter" id="newSelect">
            </div>
        </div>
    </section>
    
    <script>
    	$(function(){
    		selectNew(10);
    		selectBest();
    	})
    	
		function selectNew(cateNo){
    		$.ajax({
    			url:"<%=contextPath%>/selectNew.id",
    			data:{categoryNo:cateNo}, 
    			success:function(list){
    				console.log(list);
    					let value = "";
    					for(let i=0; i<list.length; i++){
    						value += '<div class="col-lg-3 col-md-4 col-sm-6 mix">'
				    		       +     '<div class="featured__item">'
				                   +         '<div class="featured__item__pic set-bg" style="background-image:url(\'' + list[i].imageUrl1 + '\')">'
				                   +             '<ul class="featured__item__pic__hover">'
				                   +                 '<li><a href="#"><i class="fa fa-heart"></i></a></li>'
				                   +                 '<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>'
				                   +             '</ul>'
				                   +         '</div>'
				                   +         '<div class="featured__item__text">'
				                   +             '<h6><a href="#">' + list[i].pName + '</a></h6>'
				                   +             '<h5>' + number_format(list[i].price) + '원</h5>'
				                   +         '</div>'
				                   +     '</div>'
				                   + '</div>';	
                    	}	
						$("#newSelect").html(value);
    					console.log(value);
    			},
    			error:function(){
    			}
    		})
    	}    	
    </script>

    <!-- 두번째 단 -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Best Product</h2>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" style="background-image:url(<%=contextPath%>/resources/mainpro/8.jpg);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">MILK DECORATION (E-ED) (FR)</a></h6>
                            <h5>18,000원</h5>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" style="background-image:url(<%=contextPath%>/resources/mainpro/4.jpg);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">VOGUE (Italy)</a></h6>
                            <h5>24,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" style="background-image:url(<%=contextPath%>/resources/mainpro/9.jpg);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">논노 NONNO (JP)</a></h6>
                            <h5>7,800원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" style="background-image:url(<%=contextPath%>/resources/mainpro/7.jpg);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">롤링스톤 코리아(창간호)</a></h6>
                            <h5>13,800원</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <script>
    	function selectBest(){
    		$.ajax({
    			url:"<%=contextPath%>/selectBest.id",
    			data:{categoryNo:10},
    			success:function(){
    			},
    			error:function(){
    			}
    		})
    	}    	    		
    </script>

    <!-- 세번째 단 -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Recommend Product</h2>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" style="background-image:url(<%=contextPath%>/resources/mainpro/1.jpg);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">킨포크 KINFOLK</a></h6>
                            <h5>17,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" style="background-image:url(<%=contextPath%>/resources/mainpro/2.jpg);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">ICON (UK)</a></h6>
                            <h5>26,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" style="background-image:url(<%=contextPath%>/resources/mainpro/3.jpg);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">TEEN BREATHE (UK)</a></h6>
                            <h5>18,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" style="background-image:url(<%=contextPath%>/resources/mainpro/12.jpg);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">THE NEW ERA</a></h6>
                            <h5>60,000원</h5>
                        </div>
                    </div>
                </div>
            </div>
    </section>
    
    </div>

    <br><br>

    <script>
        function number_format(num){
            return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',');
        }
    </script>
	
	<%@ include file="views/common/footer.jsp" %>
	
	<!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
	
</body>
</html>