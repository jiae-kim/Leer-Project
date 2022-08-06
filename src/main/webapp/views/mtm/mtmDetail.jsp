<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.leer.mtm.model.vo.Mtm"%>
    
<%
	Mtm m = (Mtm)request.getAttribute("m");
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

</head>
<body>

    	
	<%@ include file="../common/menubar.jsp" %>

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" style="background-image:url(<%=contextPath%>/resources/images/productCategory/lifestyle.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-lg-12" style="text-align=left;">
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
                    <div class="sidebar">
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
    
    

    <div class="mtm-dt-wrap" style="height: 800px;">

        <div>
            <label style="font-size: 25px; font-weight:600">"<%=loginUser.getMemName() %>" 님의 1:1문의 내역</label><br>
        </div>

        <hr><br>

        <div class="q">
            <div class="q-title" >
                <table style="background-color:rgba(173, 216, 230, 0.116); padding: 20px;">
                    <tr>
                        <td><p style="color: rgb(34, 61, 136); font-size: 50px; font-weight: 900;">Q &nbsp;</p></td>
                        <td align="center"><p style="font-size: 18px; font-weight:600;">[<%=m.getMtmType() %>] &nbsp;</p></td>
                        <td width="500px"><p style="font-size: 18px; font-weight:600; color: black;"><%=m.getMtmTitle() %></p></td>
                        <td><p>2022-08-05</p></td>
                    </tr>
                </table>
            </div>
            <div style="height: 200px;">  
                <table>
                    <tr>
                        <td style="width: 60px; padding: 30px;"></td>
                        <td colspan="3"> <fieldset><%=m.getMtmContent() %></fieldset></td>
                    </tr>
                </table>    
            </div>      
        </div>

        <br><br>

		<%if(m.getAnsYn().equals('Y')){ %>
        <div class="a">
            <div class="a-title">
                <table style="background-color:rgba(230, 173, 176, 0.116); padding: 20px;">
                    <tr>
                        <td><p style="color: rgb(136, 34, 48); font-size: 50px; font-weight: 900;">A &nbsp;</p></td>
                        <td align="center"><p style="font-size: 18px; font-weight:600;"><%=m.getMtmType() %> &nbsp;</p></td>
                        <td width="500px"><p style="font-size: 18px; font-weight:600; color: black;">답변 드립니다</p></td>
                        <td><p>2022-08-05</p></td>
                    </tr>
                </table>
            </div>
            <div style="height: 200px;">   
                <table>    
                    <tr>
                        <td style="width: 60px;"></td>
                        <td colspan="3"><%=m.getAnsContent() %></td>
                    </tr>
                </table>
            </div> 
        </div>
        <%} %>

    </div>
    
    
    
            </div>
        </div>
    </section>
    <!-- Product Section End -->    


	<%@ include file="../common/footer.jsp" %>
	
</body>
</html>