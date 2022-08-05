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
	
	
	<!-- Hero Section Begin -->
    <section class="hero">
        <div class="ccontainer">
            <div class="row">
               
                <div class="col-lg-12">
                    
                    <div class="hero__item set-bg" style="background-image:url(<%=contextPath%>/resources/images/mainImg.jpg);">
                        <div class="hero__text">
                            <!-- 
                            <h2>Vegetable <br />100% Organic</h2>
                            <p>Free Pickup and Delivery Available</p>
                            <a href="#" class="primary-btn">SHOP NOW</a> 
                            -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <br>

    <div class="hero__search">
        <div class="hero__search__formm"> <!-- 클래스명 변경했음 -->
            <form action="#">
                <!--
                <div class="hero__search__categories">
                    All Categories
                    <span class="arrow_carrot-down"></span>
                </div>
                -->
                <input type="text" style="width: 30%; height: 52px; border:1px solid lightgrey">
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
    			data:{categoryNo:cateNo}, //li요소 클릭시 해당하는 카테고리 값이 여기 데이터로 적용돼 넘어가야 함!!!!
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
				                   +             '<h5>' + list[i].price + '</h5>'
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
                        <div class="featured__item__pic set-bg" data-setbg="경로">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">제목</a></h6>
                            <h5>가격</h5>
                        </div>
                        
                    </div>
                </div>
                
                
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="경로">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">제목</a></h6>
                            <h5>가격</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="경로">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">제목</a></h6>
                            <h5>가격</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="경로">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">제목</a></h6>
                            <h5>가격</h5>
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
                        <div class="featured__item__pic set-bg" data-setbg="https://www.walbox.co.kr/upfile/item/%EB%A6%AC%EB%B9%998_1658642603.jpg
                        ">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://www.walbox.co.kr/upfile/item/%EB%A9%94%EC%A2%858_1658391878.jpg
                        ">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://www.walbox.co.kr/upfile/item/6_1593616665.jpg
                        ">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://www.walbox.co.kr/upfile/item/7_1593616756.jpg
                        ">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <!-- <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://www.walbox.co.kr/upfile/item/7_1593616756.jpg
                        ">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div> -->
            </div>
        <!-- </div> -->
    </section>
    
    </div>
    
    
	
	
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