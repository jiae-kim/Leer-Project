<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.leer.faq.model.vo.Faq" %>
<%
	Faq f = (Faq)request.getAttribute("faq");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 상세조회 페이지</title>
<style>
    #faqtable {
        color: red;
    }
    .faq1 tr td{
        background-color:;
        align:center;
    }
</style>
</head>
<body>

    <%@ include file="../../common/adminMenubar.jsp" %>

    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <br><br><br>
                <h2 class="page-title">고객센터 FAQ</h2>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <!--<input class="form-control mr-sm-2" type="text" placeholder="Search">
                <button class="btn btn-success" type="submit">Search</button>-->
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="card mb-4">
        <!-- <div class="card-header">
            <i class=""></i>
            <h4 style="vertical-align:45px"><b>FAQ 상세조회</b></h4>
        </div> -->
        <div class="card-body">
        <div class ="printView">
        <h2 style="text-align:center">FAQ 상세조회</h2>
            <table class="table faq1">
                <tr>
                    <!-- <th class="text-center">구매내역</th> -->
                    <td name="faqtable" colspan="2">
                        <table border="1" style="text-align: center">
                            <tr style="background: #343a40; color:white;">
                                <td width="70px" height="-4840px">No.</td>
                                <td width="200px">카테고리</td>
                                <td width="300px">작성자</td>
                                <td width="200px">등록일</td>
                                <td width="200px">수정일</td>
                                <td width="200px">조회수</td>
                            </tr>
                            <tr>
                                <td><%=f.getFaqNo()%></td>
                                <td><%=f.getFaqCategory()%></td>
                                <td><%=f.getMemId()%></td>
                                <td><%=f.getEnrollDate()%></td>
                                <td><%=f.getModifyDate()%></td>
                                <td><%=f.getCount()%></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <th>제목</th>
                    <td class="text-center"><%=f.getFaqTitle()%></td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td class="text-center"><%=f.getFaqContent()%></td>
                </tr>
            </table>
        </div>
        <div>
            <a href="<%=request.getContextPath()%>/adFaqList.do?cpage=1" class="btn btn-dark" style="float:right">목록으로</a>
        </div>
    </div>
</div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- footer -->
    <!-- ============================================================== -->
    <footer class="footer text-center">
        
    </footer>
</body>
</html>