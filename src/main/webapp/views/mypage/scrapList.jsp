<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.leer.product.model.vo.Product, java.text.DecimalFormat"%>
    
<%
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
	DecimalFormat comma = new DecimalFormat("###,###");
%>    
<!DOCTYPE html>
<html>
<head>
</head>
<body>
    
    <%@ include file="../common/menubar.jsp" %>
	<section class="product spad">
        <div class="container">
            <div class="row">
                <%@ include file="../common/myPageSidebar.jsp" %>
                <div class="col-lg-9 col-md-7" style="padding-left:120px; flex-grow:1;">
                    <div class="etc_area" id="product_review">
                    
                   	    <h2 class="etc_title" style="margin-top:0%">찜한 목록</h2>
                    	
                   	    <hr>
                   	

                           <!-- <section class="featured spad">
                            <div class="container">
                                <div class="row featured__filter"> -->
                                
                                <%if(list.isEmpty()){ %>
									<div align="center">
										<label style="font-size: 30px; font-weight:600">찜한 상품이 없습니다</label> <br>
										<label style="font-size: 20px;">관심있는 상품을 찜해두면 쇼핑 MY에서 편하게 확인하고 관리할 수 있습니다.</label>
									</div>
                                <%}else{%>
                                
                                    <div class="row" id="list-area">
				                    <%for(Product p : list) {%>
				                        <div class="col-lg-4 col-md-6 col-sm-6">
				                            <div class="product__item">
				                                <div class="product__item__pic set-bg" style="background-image:url(<%=p.getImageUrl1()%>)">
				                                    <ul class="product__item__pic__hover">
				                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
				                                        <li><a href="<%=contextPath%>/detail.pd?pNo=<%=p.getpCode()%>"><i class="fa fa-shopping-cart"></i></a></li>
				                                    </ul>
				                                </div>
				                                <div class="product__item__text">
				                                    <h6><a href="#"><%= p.getpName() %></a></h6>
				                                    <h5><%= comma.format(p.getPrice())%> 원</h5>
				                                </div>
				                            </div>
				                        </div>  
				                     <% } %>      
				                	</div>
								
								<%} %>
                                    
                                    
                                </div>
                            </div>
                        </section>
                   	
                   	
                 	</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>