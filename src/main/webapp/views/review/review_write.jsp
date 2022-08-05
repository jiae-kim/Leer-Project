<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.leer.review.model.vo.Review , com.leer.member.model.vo.Member" %>
    
<%
	Review r = (Review)request.getAttribute("r");
	Member loginUser = (Member)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Document</title>
     
     <style>
          #reviewscopes{
               box-sizing: border-box;
               width: 650px;
               height: 50px;
          }


          #box{
               background-color: white;
          }

          #btn{
               width: 95%;
               height: 30px;
               text-align: center;
          }

          #button_box{
               margin: 10px;
          }

          #date{
               font-size: 13px;
          }

          #p_name{
               font-size: 18px;
               font-weight: 500;
          }

     
     </style>
</head>
<body>

     <form action="<%= request.getContextPath() %>/reviewWrite"  method="post" enctype="multipart/form-data" id="autor">
          <br>
          <h2>리뷰 쓰기</h2>
          <hr>
          <input type="hidden" name="memNo" value="<%=loginUser.getMemNo()%>">
          <input type="hidden" name="pname" value="<%= r.getpName() %>">
          <input type="hidden" name="pcode" value="<%= r.getP_code()%>">
          <table id="box" width="650px" > 
               <tr height="10px">
                    <td rowspan="4" width="70px"><img class="product__details__pic__item"
                         src=<%= r.getImage_url() %> width="150px" alt=""></td>
                    <td></td>
                    <td></td>
               </tr>
               <tr>
                    <td width="150px" id="p_name"><%= r.getpName() %> </td>
                    <td></td>
               </tr>
               <tr>
                    <td width="70px"><%= r.getOr_date() %></td>
                    <td></td>
               </tr>
               <tr>
                    <td></td>
                    <td></td>
               </tr>
          </table>
          

          <hr>
          
          <h3> 상품은 어떠셨나요? </h3>
          <div id="box" width="650px">
               <select name="reviewscope" id="reviewscopes">
                    <option value="1">★</option>
                    <option value="2">★★</option>
                    <option value="3">★★★</option>
                    <option value="4">★★★★</option>
                    <option value="5">★★★★★</option>
               </select><br><br>
          </div>
          

          <h3> 상품평을 작성해주세요</h3>
          <textarea cols="90" rows="10" name="content" placeholder="내용을 입력하세요" style="resize:none"></textarea>
          <br><br><br>

          <h3>사진을 첨부해주세요</h3>
          <div id="box">
               <input type="file" name="upfile">
          </div>

          <br>
          <table id="button_box">
               <tr>
                    <td width="350px">
                    	<input type="button" id="btn" value="취소" onClick="window.close()">
                    </td>

                    <td width="350px">
                         <input type="submit" id="btn" value="리뷰 등록">
                    </td>
               </tr>
          </table>


     </form>


</body>
</html>