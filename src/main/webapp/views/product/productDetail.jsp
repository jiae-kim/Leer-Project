<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.leer.product.model.vo.Product, com.leer.product.model.vo.Inquiry"%>
<%@ page import='java.text.DecimalFormat' %>    

<% Product p = (Product)request.getAttribute("p");
   ArrayList<Inquiry> list = (ArrayList<Inquiry>)request.getAttribute("list");
   DecimalFormat comma = new DecimalFormat("###,###");
   int scrapResult = (int)request.getAttribute("scrapResult");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
    <!-- Css Styles -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/style.css" type="text/css">
    <style>
    @import url('https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css');

    .product_view_area {
        width: 1100px;
        overflow: hidden;
        box-sizing: border-box;
        margin: 0 auto;
    }
    .product_view_area .product_title {
        width: 100%;
        height: auto;
        box-sizing: border-box;
        overflow: hidden;
        position: relative;
        text-align: left;
        padding-bottom: 20px;
        border-bottom: 1px solid #303030;
        margin-bottom: 20px;
        
    }

    h2 {
        display: block;
        font-size: 1.5em;
        margin-block-start: 0.83em;
        margin-block-end: 0.83em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        font-weight: bold;
        font-family: 'NanumSquare';
    }

    .product_view_area .product_view .product_option_box {
    display: inline-block;
    vertical-align: top;
    width: 50%;
    height: auto;
    box-sizing: border-box;
    padding-left: 50px;
    }

    .option_info_box {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    padding: 25px 20px 25px 20px;
    border-bottom: 1px solid #e3e3e3;
    }

   .product_option_table {
    display: table;
    table-layout: fixed;
    max-width: none;
    width: auto;
    min-width: 100%;
    border-collapse: collapse;
    }

    .option_info_box .product_option_table .option_row {
    display: table-row;
    width: 100%;
    height: auto;
    }

    .option_title {
    width: 27%;
    font-size: 16px;
    font-weight: 800;
    letter-spacing: 0;
    line-height: 1.3;
    color: #343434;
    padding-right:20px;
    }

    .option_content {
    width: auto;
    font-size: 16px;
    font-weight: 400;
    letter-spacing: 0;
    line-height: 1.3;
    color: #343434;
    }

    .design_radio_box {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    overflow: hidden;
    }

    .radio_item {
    display: inline-block;
    vertical-align: top;
    float: left;
    width: calc(33.33% - 0.66px);
    height: 30px;
    /* margin-right: 1px; */
    /* margin-bottom: 1px; */
    position: relative;
    }
    input[type="radio" i] {
    background-color: initial;
    cursor: default;
    appearance: auto;
    box-sizing: border-box;
    margin: 3px 3px 0px 5px;
    padding: initial;
    border: initial;
    }

    .selected_option_box {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    margin-top: 30px;
    border: 1px solid #c4c4c4;
    background-color: #f5f5f5;
    padding: 20px;
    }
    .selected_option{
        width:100%;
        height:auto;
        box-sizing:border-box;
    }
    .selected_option_name {
    display: inline-block;
    text-align: center;
    float: left;
    padding-right:15px;
    /* font-size: 14px; */
    font-weight: 700;
    letter-spacing: -0.5px;
    color: #4c4c4c;
    height:48px;
    }
    .selected_list span{vertical-align: middle;}

    .acount_box {
    display: inline-block;
    vertical-align: top;
    padding-left: 160px;
    }
    .but_cnt{height:30px;}

    .acount_box a {
    display: inline-block;
    vertical-align: top;
    width: 30px;
    height: 30px;
    box-sizing: border-box;
    border: 1px solid #d4d4d4;
    background-color: #fff;
    text-align: center;
    line-height: 28px;
    cursor: pointer;
    font-size: 16px;
    -ms-user-select: none;
    -moz-user-select: -moz-none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    user-select: none;
    }
    .acount_box a,input{vertical-align: middle;}

    .acount_box a.up_btn {
    margin-left: -1px;
    }
    



    .product_view_area .product_view .product_option_box .selected_option_box .selected_option .selected_list .acount_box a {
        display: inline-block;
        vertical-align: top;
        float: left;
        width: 30px;
        height: 30px;
        box-sizing: border-box;
        border: 1px solid #d4d4d4;
        background-color: #fff;
        text-align: center;
        line-height: 28px;
        cursor: pointer;
        font-size: 16px;
        -ms-user-select: none;
        -moz-user-select: -moz-none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        user-select: none;
    }
    a {
        vertical-align: baseline;
        background: 0 0;
    }

    .product_view_area .product_view .product_option_box .selected_option_box .selected_option .selected_list .acount_box a {
    display: inline-block;
    vertical-align: top;
    float: left;
    width: 30px;
    height: 30px;
    box-sizing: border-box;
    border: 1px solid #d4d4d4;
    background-color: #fff;
    text-align: center;
    line-height: 28px;  
    cursor: pointer;
    font-size: 16px;
    -ms-user-select: none;
    -moz-user-select: -moz-none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    user-select: none;
    }
    li{display: table-row;}
    
    .price_box{text-align: right;}
    .payment_btn_box button{width:32%;}

    .product_etc_area .etc_area {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    margin-bottom: 55px;
    }
    .etc_title {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    overflow: hidden;
    font-size: 24px;
    font-weight: 700;
    letter-spacing: -1px;
    color: #343434;
    text-align: left;
    line-height: 33px;
    margin-bottom: 13px;
    }

    .etc_title button {
    display: inline-block;
    vertical-align: top;
    float: right;
    font-size: 15px;
    font-weight: 700;
    letter-spacing: -1px;
    color: #fff;
    width: 105px;
    height: auto;
    line-height: 33px;
    text-align: center;
    background-color:#343434;
    border: 0;
    cursor: pointer;
    }

    .etc_content_box {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    background-color: #fff;
    }
    .product_etc_area .etc_area .etc_content_box .product_review_list {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    background-color: #fff;
    border-top: 1px solid #2b2f3a;
    }

   .modal-body th{
        background-color: #f5f5f5;
        text-align: center;
        vertical-align: middle;

    }
    .modal-body tr{
        border: #e1e1e1 solid 1px;
        
    }

    </style>
    
     

</head>
<body>
	
	<%@ include file="../common/menubar.jsp" %>
	
    <!-- Product Details Section Begin -->
    <section class="product-details spad product_view_area">
        <h2 class="product_title">
            <span style="font-size:28px; font-weight: 800;"><%=p.getpName() %></span>
            <br>
            <p class="title_sub_text" style="margin:0px; font-family: 'NanumSquare';">2022년 <%=p.getMonth() %>월호</p>
        </h2>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6" style="padding-left:70px;padding-right:70px;">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src=<%= p.getImageUrl1() %> alt="">
                        </div>
                       
                        <button type="button" style="border:#4c4c4c solid 1px; background-color:#ffffff; color:#343434;font-size: 14px; font-weight: 600; margin-left: 150px; margin-top:8px;padding:1px 15px;">과월호 보기</button>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                
                <form action="<%= contextPath %>/insert.pd" method="" id="product-option-form">
                    <input type="hidden" name="pNo" value="<%= p.getpCode()%>">
                    <%if (loginUser != null) {%>
                   	 <input type="hidden" name="memNo" value="<%= loginUser.getMemNo()%>">
             		<% } %>
                    <div class="option_info_box base_price">
                        <ul class="product_option_table">
                            <li class="option_row">
                                <span class="option_title">판매가</span> 
                                <span class="option_content">
                                    <strong style="font-size:30px; font-weight:800;"><%=comma.format(p.getPrice())%>원</strong>
                                </span>
                            </li>
                        </ul>
                    </div>

                    <div class="option_info_box delivery">
                        <ul class="product_option_table">
                            <li class="option_row">
                                <span class="option_title">적립포인트</span>
                                <span class="option_content">
                                    10% 적립
                                </span>
                            </li>
                        </ul>
                    </div>

                    <div class="option_info_box delivery">
                        <ul class="product_option_table">
                            <li class="option_row">
                                <span class="option_title">배송비</span>
                                <span class="option_content">
                                    3,000원(10,000원 이상 구매시 무료)
                                </span>
                            </li>
                        </ul>
                    </div>
					
					
                    <div class="option_info_box delivery">
                        <ul class="product_option_table">
                            <li class="option_row">
                                <span class="option_title">배송주기</span>
                                <span class="option_content">
                                    <div class="design_radio_box" >
                                        <div class="radio_item">
                                            <input type="radio" name="shipping_cycle" id="one_cycle" value="1" checked>
                                            <label for="one_cycle">개별구매</label>
                                        </div>
                                        <div class="radio_item">
                                            <input type="radio" name="shipping_cycle" id="one_month" value="2">
                                            <label for="one_month">1달에 한번</label>
                                        </div>
                                        <div class="radio_item">
                                            <input type="radio" name="shipping_cycle" id="two_month" value="3">
                                            <label for="two_month">2달에 한번</label>
                                        </div>

                                    </div>
                                </span>
                            </li>
                        </ul>
                    </div>
					
					<script>
					function number_format(num){
                        return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',');
                    }
					
					$(function(){
						 
						let count = 1;
						let price = <%=p.getPrice()%>;
						
						$(".radio_item").click(function(){
							if($(this).children().eq(0).val() == 1){
								price = <%=p.getPrice()%>
								let priceStr = number_format(price);
								
								$("#total_item_qty1").html(1);
								count = 1;
								$(".but_cnt").val(count);
								$("#total_item_qty2").html(1);
								$("#total_item_krw_price").html(priceStr);
							}
							
							if($(this).children().eq(0).val() == 2){
								price = (<%=p.getPrice()%>) * 12 ;
								let priceStr = number_format(price);
								
								$("#total_item_qty1").html(1);
								count = 1;
								$(".but_cnt").val(count);
								$("#total_item_qty2").html(12);
								$("#total_item_krw_price").html(priceStr);
							}
							
							if($(this).children().eq(0).val() == 3){
								price = (<%=p.getPrice()%>) * 6;
								let priceStr = number_format(price);
								
								$("#total_item_qty1").html(1);
								count = 1;
								$(".but_cnt").val(count);
								$("#total_item_qty2").html(6);
								$("#total_item_krw_price").html(priceStr);
							}
						})
						
						let sum = price;
						$(".up_btn").click(function(){
							
							$("#total_item_qty1").html(++count);
							$(".but_cnt").val(count);
							sum = price * count;
							
							let sumStr = number_format(sum);
							$("#total_item_krw_price").html(sumStr);
							
						})
						
						$(".down_btn").click(function(){
							
							if(count >=1){
								if(count >= 2){
									$("#total_item_qty1").html(--count);
									$(".but_cnt").val(count);
									sum = price * count;
									
									let sumStr = number_format(sum);
									$("#total_item_krw_price").html(sumStr);
								}else{
									$(".but_cnt").val(count);
									sum = price * count;
									
									let sumStr = number_format(sum);
									$("#total_item_krw_price").html(sumStr);
								}
							}
							
							
						})
					})
					</script>
					
                    <div class="option_info_box delivery">
                        <ul class="product_option_table">
                            <li class="option_row">
                                <span class="option_title">구독기간</span>
                                <span class="option_content">
                                    12개월
                                </span>
                            </li>
                        </ul>
                    </div>


                    <div class="selected_option_box">
                        <ul class="selected_option" id="selected">
                            <li class="selected_list">
                                <span class="selected_option_name">
                                    <%=p.getpName() %>
                                </span>
                                <span class="acount_box">
                                    <a class="down_btn">-</a>
                                    <input type="text" class="but_cnt" name="amount" value="1">
                                    <a class="up_btn">+</a>
                                </span>
                            </li>
                        </ul>
                    </div>

                    <div class="price_box">
                        총 상품금액(수량) :
                        <strong id="total_item_krw_price" style="font-size:30px; font-weight:800;"><%=comma.format(p.getPrice()) %></strong>
                        원 (
                        <span id="total_item_qty1">1</span>
                        개) X
                        <span id="total_item_qty2">1</span>개월 
                    </div>
                    <div class="payment_btn_box">
                        <button type="submit" class="site-btn" style="padding:0px; margin-right:5px; font-size: 15px; color:#303030; background-color: #ffffff; border: #303030 solid 1px;">장바구니</button>
                        <button type="button" class="site-btn" style="padding:0px; margin-right:5px; font-size: 15px;">바로구매</button>
                        
                        <% if(loginUser != null){ %> 
                        	
                        	<% if(scrapResult == 1){%> <!-- 이 상품을 이미 찜한 회원 -->
	                        	<button type="button" id="scrap" class="de site-btn" style="padding:0px; font-size: 15px; color:#303030;  background-color: #ffffff; border: #303030 solid 1px;" id="scrap">
	                        	찜완료
	                        	</button>
                        	<% } else{ %> <!-- 찜하지 않은 회원 -->
                        		<button type="button" id="scrap" class="in site-btn " style="padding:0px; font-size: 15px; color:#303030;  background-color: #ffffff; border: #303030 solid 1px;" id="scrap">
	                        	찜하기
	                        	</button>
	                        	
                        	<% } %>
                        
                        <% }else{ %>
                        	<button type="button" onclick="loginPage();" class="site-btn" style="padding:0px; font-size: 15px; color:#303030;  background-color: #ffffff; border: #303030 solid 1px;" id="scrap">찜하기</button>
                        <% }%>
                    </div>
                </form>    
                </div>

                <script>
                	
                	//로그인 하지 않은 상태로 찜하기 버튼을 눌렀을 때 => 로그인 페이지 / 그대로
                 	function loginPage(){
                 		if(confirm("로그인 후 찜하기 가능합니다.")){
	                 		location.href="<%=contextPath%>/loginPage.me";
                 		}
                 	}
                	
                	$("#scrap").click(function(){
                		
                		let $scrapBtn = $(this);
                		
                		if( $(this).is(".in") ){
                			console.log("찜하기클릭");
		                 	// 찜하지 않은 회원이 찜하기 버튼 클릭 시 insert
	                        $.ajax({
	                            url:"<%= contextPath%>/insertScrap.pd",
	                            data:{"pCode":"<%= p.getpCode() %>"},
	                            
	                            success:function(result){ 
                            	   // insert 성공 => btn글자 찜완료로 변경
	                               if(result > 0) { 
	                            	   $scrapBtn.text("찜완료");
	                            	   
	                            	   //글자 변경이 바로 안되고 새로고침 해야하는 문제 
	                            	   //location.reload();
	                            	   $scrapBtn.removeClass("in");
	                                   $scrapBtn.addClass("de");
	                            	   $scrapBtn.css({color:'red'});
	                            	   
	                               }
	                            },
	                            error:function(){
	                                console.log("ajax 게시글 삭제 실패")
	                            }
	                        })
                		}else {
                			console.log("찜완료클릭");
	                        $.ajax({
	                            url:"<%= contextPath%>/deleteScrap.pd",
	                            data:{"pCode":"<%= p.getpCode() %>"},
	                            
	                            success:function(result){ 
                            	   // delete 성공 => btn글자 찜하기로 변경
	                               if(result > 0) { 
	                            	   $scrapBtn.text("찜하기");
	                            	   //location.reload();
	                            	   $scrapBtn.removeClass("de");
	                                   $scrapBtn.addClass("in");
	                            	   $scrapBtn.css({color:'black'});
	                               }
	                            },
	                            error:function(){
	                                console.log("ajax 게시글 삭제 실패")
	                            }
	                        })
                		}
                		
                	})
                	
                </script>

                
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab" id="detail"
                                    aria-selected="true" style="font-size:18px">상품 상세정보</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false" style="font-size:18px">리뷰</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false" style="font-size:18px">상품문의 <span></span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">

                                <section class="related-product">
                                    <div class="container" style="padding-top:80px; text-align: center;">
                                      <img src="<%=p.getImageUrl2()%>">  
                                      <% if (p.getSupYn().equals("Y")){ %>
                                      	<img src="<%=p.getImageUrlS()%>"> 
                                      <% } %>
                                    </div>
                                </section>

                                <div class="etc_area" id="product_review" style="padding-bottom:100px;">
                                    <h2 class="etc_title" >리뷰
                                        <button type="button" class="etn_write_btn">리뷰 쓰기</button>
                                    </h2>
                                    <div style="border-bottom: 1px solid #303030;"></div>
                                    <div class="etc_content_box" >
                                        <ul class="product_review_list" id="review_list"></ul>
                                    </div>
                                </div>

                                <div class="etc_area" id="product_review">
                                    <h2 class="etc_title" >상품문의
                                    <% if (loginUser != null) {%>
                                        <button type="button" class="etn_write_btn" data-toggle="modal" data-target="#inquiryModal">상품문의</button>
                                    <%} else { %>
                                    <button type="button" class="etn_write_btn">
                                    	<a href="<%=contextPath%>/loginPage.me"></a>
                                    	상품문의
                                    </button>
                                    <% } %>
                                    </h2>
                                    <div style="border-bottom: 1px solid #303030;"></div>
                                    <div class="etc_content_box" >
                                        <ul class="product_review_list" id="review_list"></ul>
                                        <table class="table">
                                            <tr>
                                                <th>번호</th>
                                                <th>처리상태</th>
                                                <th>문의 제목</th>
                                                <th>작성자</th>
                                                <th>작성일</th>
                                            </tr>
                                        <% int number = list.size(); %>
                                        <%for(Inquiry iq : list) {%>
                                            <tr id="inquiry-area1">
                                                <td><%= number--%></td>
                                                <% if(iq.getqYn().equals("N")) {%>
                                                <td>답변대기</td>
                                                <% } else { %>
                                                <td>답변완료</td>
                                                <% } %>
                                                <td><%=iq.getTitle() %></td>
                                                <td><%=iq.getMemName() %></td>
                                                <td><%=iq.getEnrollDate() %></td>
                                            </tr>
                                            <%} %>
                                        </table>
                                    </div>
                                </div>

                            </div>
                            <% if(loginUser != null) {%>
                            
                                <div class="modal" id="inquiryModal">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                                    
                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                               <h3 class="modal-title">상품문의 작성하기</h3>
                                               <button type="button" class="close" data-dismiss="modal" style="size:40px;">&times;</button>
                                            </div>
      
                                            <!-- Modal body -->
                                            <div class="modal-body" align="center" style="margin-top:10px;">
            
                                                <%-- <form action="<%= contextPath %>/inquiry.pd" method=""> --%>
                                                    <input type="hidden" name="pCode" value="<%=p.getpCode()%>"> <!-- form 요청시 같이 넘어가게 -->
                                                    <table class="table"style="border-bottom solid 1px">
                                                        <tr>
                                                            <th>상품문의 유형</th>
                                                            <td>
                                                                <input type="radio" name="type" name="category" value="pd">상품
                                                                <input type="radio" name="type" name="category" value="del">배송
                                                                <input type="radio" name="type" name="category" value="cl">주문취소/환불
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <th>상품문의 제목</th>
                                                            <td><input type="text" class="form-control" id="title"></td>
                                                        </tr>
                                                        <tr>
                                                            <th>상품문의 내용</th>
                                                            <td>
                                                                <textarea class="form-control" style="resize:none; height:200px" id="content"></textarea>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <button type="button" class="btn btn-secondary" style="padding:10px 20px;" onclick="write();" >작성하기</button>
                                                   
                                                <!-- </form> -->
                                                </div>
                                                </div>
                                                </div>
                                    			</div>
                                                
                                                <div class="tab-pane" id="tabs-2" role="tabpanel">
					                                <div class="etc_area" id="product_review">
					                                    <h2 class="etc_title">리뷰
					                                        <button type="button" class="etn_write_btn">리뷰 쓰기</button>
					                                    </h2>
					                                    <div style="border-bottom: 1px solid #303030;"></div>
					                                    <div class="etc_content_box">
					                                        <ul class="product_review_list" id="review_list"></ul>
					                                        
					                                    </div>
					                                </div>
					                            </div>
					                            <div class="tab-pane" id="tabs-3" role="tabpanel">
					                                <div class="etc_area" id="product_review">
					                                    <h2 class="etc_title">상품문의
					                                        <button type="button" class="etn_write_btn">상품문의</button>
					                                    </h2>
					                                    <div style="border-bottom: 1px solid #303030;"></div>
					                                    <div class="etc_content_box">
					                                        <ul class="product_review_list" id="review_list"></ul>
					                                        <table class="table">
					                                            <tr>
					                                                <th>번호</th>
					                                                <th>처리상태</th>
					                                                <th>문의 제목</th>
					                                                <th>작성자</th>
					                                                <th>작성일</th>
					                                            </tr>
					                                            <tr>
					                                                <td>1</td>
					                                                <td>답변대기</td>
					                                                <td>언제 들어오나요?</td>
					                                                <td>name</td>
					                                                <td>2022-07-24</td>
					                                            </tr>
					                                        </table>
					                                    </div>
					                                </div>
					                            </div>
                                                
                                                <script>
                                                	
                                                    function write(){
                                                        $.ajax({
                                                        	url:"<%=contextPath%>/inquiry.pd",
                                                        	data:{
                                                        		pNo:'<%=p.getpCode()%>' ,
                                                        		memName:<%=loginUser.getMemNo()%>,
                                                        		category:$("input[type=radio]:checked").val(),
                                                        		title:$("#title").val(),
                                                        		content:$("#content").val()
                                                        	},
                                                        	type:"post",
                                                        	success:function(iqList){ // 상품문의 성공 
                                                        		
                                                        			console.log(iqList)
                             
                                                        		   let value = "";
                                            						for(let i=0; i<iqList.length; i++){
                                            							value += 
                                            								'<td>' + i++  +'</td>' +
                                                                            '<td>답변대기</td>' +
                                                                            '<td>' + iqList[i].title + '</td>' +
                                                                            '<td>' + iqList[i].memName + '</td>'
                                                                            '<td>' + iqList[i].enrollDate + '</td>'
                                            						
                                                        		     
                                                        		}
                                            						$("#inquiry-area1").html(value); 
                                                        		// 그 페이지 부분 목록에 보여지게 다시 
                                                        	}
                                                        });
                                                        return false;
                                                    }
                                                    
                                                    
                                                </script>
                                            
        
                                      
                                
								<% } %>
						      </div>
						    </div>
						  </div>
                        </div>
                    </div>
       
    </section>
    <!-- Product Details Section End -->
	<%@ include file="../common/footer.jsp" %>
	
</body>
</html>