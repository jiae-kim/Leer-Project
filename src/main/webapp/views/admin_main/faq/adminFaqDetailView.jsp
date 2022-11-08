<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.leer.faq.model.vo.Faq" %>
<%
	Faq f = (Faq)request.getAttribute("faq");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 상세조회</title>
<style>
    .faqT>tbody>tr>th{
        background: hsl(0, 0%, 77%);
        color:rgb(80, 80, 80);
        font-weight: bold;
        font-size: 15px;
    }
    .faqT>tbody>tr>td{
        font-size: 15px;
    }
</style>
</head>
<body>
    <%@ include file="../../common/adminMenubar.jsp" %>

    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h2 class="page-title">FAQ 상세조회</h2>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="card mb-4">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive pt-3">
                            <table border="1" align="center" class="faqT">
                                <tbody>
                                    <tr>
                                        <th width="100px" height="60px">No.</th>
                                        <td width="100px"><%=f.getFaqNo()%></td>
                                        <th width="200px">카테고리</th>
                                        <td width="200px"><%=f.getCategoryName() %></td>
                                        <th width="200px">작성자</th>
                                        <td width="200px"><%=f.getMemId()%></td>
                                    </tr>
                                    <tr>
                                        <th width="100px" height="60px">조회수</th>
                                        <td><%=f.getCount()%></td>
                                        <th>등록일</th>
                                        <td><%=f.getEnrollDate()%></td>
                                        <th>수정일</th>
                                        <td><%=f.getModifyDate()%></td>
                                    </tr>
                                </tbody>
                            </table>
                            
                            <br>

                            <table border="1" align="center" class="faqT">
                                <tr>
                                    <th width="150px">제목</th>
                                    <td class="text-center" width="850px" height="100px"><%=f.getFaqTitle()%></td>
                                </tr>
                                <tr>
                                    <th>내용</th>
                                    <td class="text-center" height="400px"><%=f.getFaqContent()%></td>
                                </tr>
                            </table>
                            <br>
	
							<form action="<%=request.getContextPath()%>/adFaqDelete.do" method="post">
	                            <div class="d-grid gap-3" style="text-align: center;">
	                                <a href="javascript: del();" class="btn btn-warning">삭제</a>
	                                <a href="<%=request.getContextPath()%>/adFaqList.do?cpage=1" class="btn btn-dark">목록으로</a>
	                            </div>
							</form>
                            
                            <script>
                            	function del(){
                            		if(confirm("해당 FAQ를 삭제하시겠습니까?")) {
                            			window.location.href = "<%=request.getContextPath()%>/adFaqDelete.do?faqNo=<%=f.getFaqNo()%>";
                            		}
                            	}
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>