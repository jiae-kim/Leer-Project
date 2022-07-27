<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.leer.product.model.vo.Product"%>
<%
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@ include file="../common/menubar.jsp" %>

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" style="background-image:url(<%=contextPath%>/resources/images/productCategory/lifestyle.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-lg-12" style="text-align=left;">
                    <div class="breadcrumb__text" >
                        <h2 style="font-size:35px">카테고리</h2>
                        <div class="breadcrumb__option">
                            
                            <span>패션/여성</span>
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
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4>카테고리</h4>
                            <ul>
                                <li><a href="<%=contextPath%>/list.pd">패션/여성</a></li>
                                <li><a href="#">라이프/인테리어</a></li>
                                <li><a href="#">시사/경제</a></li>
                                <li><a href="#">교육/과학</a></li>
                                <li><a href="#">문화/예술</a></li>
                                <li><a href="#">여행/취미</a></li>
                                <!-- 
                                <li><a href="#">Fastfood</a></li>
                                <li><a href="#">Fresh Onion</a></li>
                                <li><a href="#">Papayaya & Crisps</a></li>
                                <li><a href="#">Oatmeal</a></li>
                                 -->
                            </ul>
                        </div>
                        
                    </div>
                </div>

                <div class="col-lg-9 col-md-7">
                    
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>Sort By</span>
                                    <select onchange="changeItem();" id="selectBox">
                                        <option id="new">최신순</option>
                                        <option id="old">오래된순</option>
                                    </select>
                                </div>
                                
                                <script>
                                	function changeItem(){
                                		$.ajax({
                        					url:"<%=contextPath%>/nlist.pd",
                        					data:{align:$("#selectBox option:selected").val()},
                        					success:function(list){
                        						console.log(list);
                        						
                        						let value = "";
                        						for(let i=0; i<list.length; i++){
                        							value += 
                        							'<div class="col-lg-4 col-md-6 col-sm-6">' + 
                    	                            	'<div class="product__item">' + 
                	                                		'<div class="product__item__pic set-bg" style="background-image:url(' + list[i].imageUrl1 + ')">' + 
                	                                    		'<ul class="product__item__pic__hover">' + 
                	                                        		'<li><a href="#"><i class="fa fa-heart"></i></a></li>' + 
                	                                        		'<li><a href="#"><i class="fa fa-retweet"></i></a></li>' +
                	                                        		'<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>' + 
                	                                    		'</ul>' + 
                	                                		'</div>' +
                	                                		'<div class="product__item__text">' + 
                	                                   			'<h6><a href="#">' + list[i].pName + '</a></h6>' + 
                	                                    		'<h5>' + list[i].price + '원</h5>' + 
                	                              			'</div>' +
                	                            		'</div>' + 
                	                       			'</div>'   
                        						}
                        						$("#list-area").html(value);
                        					}, error:function(){
                        						console.log("댓글목록 조회용 ajax 통신 실패"); 
                        					}
                        				});
                                	}
                                </script>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span>16</span> Products found</h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <span class="icon_grid-2x2"></span>
                                    <span class="icon_ul"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
	                    <div class="row" id="list-area">
	                    <%for(Product p : list) {%>
	                        <div class="col-lg-4 col-md-6 col-sm-6">
	                            <div class="product__item">
	                                <div class="product__item__pic set-bg" style="background-image:url(<%= p.getImageUrl1()%>)">
	                                    <ul class="product__item__pic__hover">
	                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
	                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
	                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
	                                    </ul>
	                                </div>
	                                <div class="product__item__text">
	                                    <h6><a href="#"><%= p.getpName() %></a></h6>
	                                    <h5><%= p.getPrice() %> 원</h5>
	                                </div>
	                            </div>
	                        </div>  
	                     <% } %>      
	                </div>
               
            </div>
        </div>
    </section>
    <!-- Product Section End -->
    
    <%@ include file="../common/footer.jsp" %>
	
</body>
</html>