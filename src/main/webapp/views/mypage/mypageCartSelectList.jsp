<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.mypage.model.vo.Cart, java.text.DecimalFormat" %>
<%
	ArrayList<Cart> list = (ArrayList<Cart>)request.getAttribute("list");
	DecimalFormat comma = new DecimalFormat("###,###");
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
    
       
    </style>
</head>

<body>
	
	<%@ include file="../common/menubar.jsp" %>
	<section class="product spad">
        <div class="container">
            <div class="row">
                <%@ include file="../common/myPageSidebar.jsp" %>

                <div class="col-lg-9 col-md-7" style="padding-left:120px; flex-grow:1;">
                    <div class="etc_area" id="product_review">
                                    <h2 class="etc_title" style="margin-top:0%" >장바구니
                                        
                                    </h2>
                                    <div style="border-bottom: 1px solid #303030;"></div>
                                    <form action="<%= contextPath %>/cdelete.me" method="" id="cartForm">
                                    	<input type="hidden" name="memNo" value="<%=loginUser.getMemNo()%>">
	                                    <div class="etc_content_box" >
	                                        <ul class="product_review_list" id="review_list"></ul>
	                                        <table class="table">
	                                            <tr style="font-size:14px;">
	                                                <th><input type="checkbox" id="check-all" checked></th>
	                                                <th style="width:30%;" width:40%;>상품정보</th>
	                                                <th>수량</th>
	                                                <th>상품금액</th>
	                                                <th>상품총액</th>
	                                                <th>배송비</th>
	                                            </tr>
	                                            <% for(Cart c : list) { %>
		                                            <tr style="font-size:14px;">
		                                                <td><input type="checkbox" name="chk" value="<%=c.getCartNo() %>" checked></td>
		                                                <td style="width:40%;">
		                                                    <span style="display:inline">
		                                                        <img src="<%=c.getImageUrl() %>" width="15%;" >
		                                                    </span>
		                                                    <span style="height:100%;">
		                                                        <a><b><%=c.getpName() %></b></a>
		                                                        <% if(c.getOrCycle() == 1) {%>
		                                                        	<a style="font-size:12px">구독기간:개별구매</a>
		                                                        <% } %>
		                                                        <% if(c.getOrCycle() == 2) {%>
		                                                        	<a style="font-size:12px">구독기간:1달에 한번</a>
		                                                        <% } %>
		                                                        <% if(c.getOrCycle() == 3) {%>
		                                                        	<a style="font-size:12px">구독기간:2달에 한번</a>
		                                                        <% } %>
		                                                    </span>  
		                                                </td>
		                                                <td><%=c.getAmount() %></td>
		                                                <td><%=comma.format(c.getPrice()) %><span> 원</span></td>
		                                                <% if(c.getOrCycle() == 1){ %>
		                                                	<td class="total-price"> 
			                                                	<span><%= comma.format((c.getPrice() * c.getAmount())) %></span>
			                                                	<span>원</span>	
		                                                	</td>
		                                                	
		                                                <%} %>
		                                                <% if(c.getOrCycle() == 2){ %>
		                                                	<td class="total-price">
		                                                		<span><%= comma.format(c.getPrice() * 12 * c.getAmount())%></span>
			                                                	<span>원</span>
		                                                		
		                                                	</td>
		                                                	
		                                                <%} %>
		                                                <% if(c.getOrCycle() == 3){ %>
		                                                	<td class="total-price">
		                                                		<span><%=comma.format(c.getPrice() * 6 * c.getAmount() )%></span>
		                                                		<span>원</span>
		                                                	</td>
		                                                	
		                                                <%} %>
		                                                <% if(c.getOrCycle() == 1 && c.getAmount() == 1){ %>
		                                                	<td class="deli-fee">3,000 원</td>
		                                                <% } else{ %>
		                                                	<td class="deli-fee">무료배송</td>
		                                                <% } %>
		                                            </tr>
	                                            <% } %>
	
	                                        </table>
											
	                                        <div style="text-align:right">
	                                            <span style="font-size:20px; font-weight: 800;">상품총액 : </span>
	                                            
	                                            <span id="sum-price" style="font-size:20px; color:red; font-weight: 600;">0</span>
	                                            <span style="font-size:20px; color:red; font-weight: 600;">원</span>
	                                        </div>
	
	                                        <br>
	                                        <span style="text-align:left; ">
	                                            <button type="submit" class="site-btn" style="font-size: 15px; margin-right:370px; color:#303030; background-color: #ffffff; border: #303030 solid 1.5px;" >선택상품 삭제</button>
	                                        </span>
	                                        <span style="text-align:right">
	                                            
	                                            <a href="<%=contextPath %>/list.pd" class="site-btn" style="font-size: 15px; color:#303030; background-color: #ffffff; border: #303030 solid 1.5px;" >계속 쇼핑하기</a>
	                                            <button type="button" onclick="return submit2(this.form);" class="site-btn" style="font-size: 15px; border:#303030 solid 1.5px;">주문하기</button>
	                                        </span>
	                                        
											<script>
	
											function number_format(num){
						                        return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',');
						                    }
										
											function submit2(frm) { 
												 frm.action='<%=contextPath %>/order.od'; 
												 frm.submit(); 
												 return true; 
											  } 
	
											$(function(){ 
												
												let sumPrice = 0;
												
												$(".total-price").each(function(){
													
													//console.log($(this).children().eq(0).text().replace(",", ""))
													
													sumPrice += parseInt($(this).children().eq(0).text().replace(",", "")); /* 왜 $(".total-price")로 선택해줬는데 첫번째 값만 반복되는것 같을까  */
												});
												
												$("#sum-price").html(number_format(sumPrice)); 
												
												
												if(sumPrice > 10000){
													$(".deli-fee").html("무료배송");
												}
												
												
												$("#check-all").click(function(){
													if($("#check-all").prop("checked")){
														$("input[name=chk]").prop("checked", true)
														$("#sum-price").html(number_format(sumPrice)); 
														
													}else{
														$("input[name=chk]").prop("checked", false)
														$("#sum-price").html(0); 
													}
												})
											
												$("input[name=chk]").click(function(){
													
													let sumPrice2 = 0;
														
														$("input:checkbox[name=chk]:checked").each(function(){
															sumPrice2 += parseInt($(this).parent().siblings(".total-price").children().eq(0).text().replace(",", ""));
															
														});
														console.log(sumPrice2);
														$("#sum-price").html(number_format(sumPrice2));
													
												})
												
											});
												 
											
	
												
											</script>
	
	                                    </div>
                                    </form>
                                </div>
                         
                    
                </div>   
            </div>
        </div>
    </section>
	<%@ include file="../common/footer.jsp" %>
</body>

</html>