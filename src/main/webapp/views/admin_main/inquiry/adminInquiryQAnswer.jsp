<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.leer.product.model.vo.Inquiry" %>
<%
	Inquiry iq = (Inquiry)request.getAttribute("inquiry");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품문의 답변등록</title>
<style>
.itable{
  width: 150px;
  height: 45px;
  background:hsl(0, 0%, 77%);
  color: black;
  font-weight: bold;
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
              <table class="tt1" border="1" align="center">
                <!--  문의번호, 문의카테고리, 등록일, 회원 아이디, 상품코드, 상품명, 문의제목, 문의내용 -->
                <tbody>
                    <tr>
                      <td class="itable">문의번호
                        <td width="350px">
                          <label style="float: left;">&nbsp;&nbsp;<%=iq.getqNo()%></label> 
                        </td>
                      </td>

                      <td class="itable">문의유형
                        <td width="350px">
                          <label style="float: left;">&nbsp;&nbsp;<%=iq.getqCategory()%></label> 
                        </td>
                      </td>

                      <td class="itable">등록일
                        <td width="350px">
                            <label style="float: left;">&nbsp;&nbsp;<%=iq.getEnrollDate()%></label> 
                        </td>
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="itable">아이디
                        <td width="350px">
                          <label style="float: left;">&nbsp;&nbsp;<%=iq.getMemId()%></label> 
                        </td>
                      </td>

                      <td class="itable">상품코드
                        <td width="350px">
                          <label style="float: left;">&nbsp;&nbsp;<%=iq.getpCode2()%></label> 
                        </td>
                      </td>

                      <td class="itable">상품명
                        <td width="350px">
                          <label style="float: left;">&nbsp;&nbsp;<%=iq.getpName()%></label> 
                        </td>
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="itable">제목
                        <td width="350px" colspan="5">
                            <label style="float: left;">&nbsp;&nbsp;<%=iq.getTitle()%></label> 
                        </td>
                      </td>
                    </tr>

                    <tr>
                      <td class="itable">문의 내용
                        <td width="350px" height="200px" colspan="5">
                            <label style="float: left;">&nbsp;&nbsp;<%=iq.getContent()%></label> 
                        </td>
                      </td>
                    </tr>
                  </tbody>
              </table>
              <br>
              <table class="tarea" align="center" style="margin:5px 5px 5px 5px">
                <h4>상품문의 답변등록</h4>
                <textarea cols="133.5" rows="9" resize="none" placeholder="상품문의 답변 내용 입력"></textarea>
              </table>

              <div class="">
                <table class="tt1" border="1" align="center">
                </table>
              </div>
              <br>
              <c:if test="${sessionMemberLv == 1}">
                <div class="d-grid gap-3" style="text-align: center">
                  <button type="submit" class="btn btn-info">등록</button>
                  <button type="submit" class="btn btn-warning">수정</button>
                  <button type="submit" class="btn btn-danger">삭제</button>
                </div>
              </c:if>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <footer class="footer text-center">
  </footer>

</body>
</html>