<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.leer.product.model.vo.Inquiry" %>
<%
	Inquiry iq = (Inquiry)request.getAttribute("inquiry");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품문의 상세조회</title>
<style>
  .t1{
    width: 150px;
    height: 45px;
    background:hsl(0, 0%, 77%);
    color: black;
    font-weight: bold;
  }
  .t2{
    width: 350px;
    text-align: center;
  }
</style>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	
	<div class="page-breadcrumb">
    <div class="row">
      <div class="col-12 d-flex no-block align-items-center">
      <h2 class="page-title">상품문의 상세조회</h2>
        <div class="ml-auto text-right">
          <nav aria-label="breadcrumb"></nav>
        </div>
      </div>
    </div>
  </div>

  <div class="container-fluid">
    <div class="card mb-4">
      <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <a href="<%=request.getContextPath()%>/adProIqList.do?cpage=1" class="btn btn-dark" style="float:right">이전으로</a>
            <div class="table-responsive pt-3">
              <!--  문의번호, 문의카테고리, 등록일, 회원 아이디, 상품코드, 상품명, 문의제목, 문의내용 -->
              <table border="1" align="center">
                <tbody>
                  <tr>
                    <th class="t1">문의번호
                      <td class="t2"><%=iq.getqNo()%></td>
                    </th>
                    <th class="t1">문의유형
                      <td class="t2"><%=iq.getqCategory()%></td>
                    </th>
                    <th class="t1">등록일
                      <td class="t2"><%=iq.getEnrollDate()%></td>
                    </th>
                  </tr>
                  
                  <tr>
                    <th class="t1">아이디
                      <td class="t2"><%=iq.getMemId()%></td>
                    </th>
                    <th class="t1">상품코드
                      <td class="t2"><%=iq.getpCode2()%></td>
                    </th>
                    <th class="t1">상품명
                      <td class="t2"><%=iq.getpName()%></td>
                    </th>
                  </tr>
                  
                  <tr>
                    <th class="t1">제목
                      <td width="350px" colspan="5" style="text-align: left;"><%=iq.getTitle()%></td>
                    </th>
                  </tr>

                  <tr>
                    <th class="t1">문의 내용
                      <td height="150px" colspan="5" style="text-align: left;"><%=iq.getContent()%></td>
                    </th>
                  </tr>
                </tbody>
              </table>
	
			        <br>
              
              <table class="tarea" align="center" style="margin:5px 5px 5px 5px">
               	<h4>등록된 답변 내용</h4>
               	<textarea id="content" cols="130" rows="9" resize="none" disabled><%=iq.getAnswer()%></textarea>
           	  </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</body>
</html>