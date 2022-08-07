<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.mtm.model.vo.Mtm, com.leer.common.model.vo.PageInfo"%>   
<% 
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Mtm> list = (ArrayList<Mtm>)request.getAttribute("list");
		
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
  %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1상담 전체조회 페이지</title>
<style>
.custom>tr:hover {
    cursor: pointer;
    opacity: 0.7;
    background:#cecece;
    color:dark;
}
</style>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	<%@ include file="../../common/adminScript.jsp" %>
	
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <br><br><br>
                <h2 class="page-title">1:1상담 전체 조회</h2>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                    </nav>

                    <button type="button" class="btn btn-warning btn-lg">수정</button> &nbsp;&nbsp;&nbsp;
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#Modal2">삭제</button>


                    <!-- Modal -->
                    <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">

                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">공지사항 삭제</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>

                                <div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
                                    해당 글을 삭제하시겠습니까?
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger">네</button>
                                    <button type="button" class="btn btn-info" data-dismiss="modal">아니오</button>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <!-- 목록 -->
        <div class="card">
            <div class="card-body">

                <!-- 전체조회  -->
                <div class="btn-group">
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">문의 유형 선택</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">상품</a>
                        <a class="dropdown-item" href="#">배송</a>
                        <a class="dropdown-item" href="#">주문취소/환불</a>
                    </div>
                </div>

                <!-- 카테고리 조회 -->
                <div class="btn-group">
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">진행 단계 선택</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">미답변</a>
                        <a class="dropdown-item" href="#">답변완료</a>
                    </div>
                </div>

            </div>

            <div class="table-responsive">
                <table class="table">

                    <thead class="thead-light">
                        <tr>
                            <th>
                                <label class="customcheckbox m-b-20">
                                    <input type="checkbox" id="mainCheckbox" />
                                    <span class="checkmark"></span>
                                </label>
                            </th>
                            <th scope="col">글번호</th>
                            <th scope="col">문의자아이디</th> 
                            <th scope="col">문의 유형</th>
                            <th scope="col">문의 제목</th>
                            <th scope="col">등록일</th>
                            <th scope="col">답변자회원번호</th>
                            <th scope="col">답변여부</th>
                        </tr>
                    </thead>

                    <tbody class="customtable custom">
                        <% for(Mtm m : list) { %>
                            <tr onclick="location.href='<%=request.getContextPath()%>/adDetail.mt?no=<%=m.getMtmNo()%>';">
                                <th>
                                    <label class="customcheckbox">
                                        <input type="checkbox" class="listCheckbox" />
                                        <span class="checkmark"></span>
                                    </label>
                                </th>
                                <td><%=m.getMtmNo()%></td>
                                <td><%=m.getMemId()%></td> <!-- 문의한 사용자 아이디가 보여지게 함 -->
                                <td><%=m.getMtmType()%></td>
                                <td><%=m.getMtmTitle()%></td>
                                <td><%=m.getEnrollDate()%></td>
                                
                                <!-- 문의에 답변한 관리자의 일므이 보이게 함 -->
                                <%if( m.getMemNo2() == 0 ){ %>
                                    <td></td>
                                <%}else if( m.getMemNo2() == 1){ %>
                                    <td>관리자1</td>
                                <%}else{ %>
                                    <td>관리자2</td>
                                <%} %>
                                
                                <!-- 답변 상태를 텍스트로 표현 -->
                                <%if( m.getAnsYn().equals("N") ){ %>
                                    <td style="color:red;">미답변</td>
                                <%}else{ %>
                                    <td style="color: black;">답변완료</td>
                                <%} %>
                            </tr>
                        <% } %>    
                    </tbody>

                    <tfoot>
                        <tr align="center">
                            <th colspan="10">	
                                <div class="btn-group paging-area" role="group" aria-label="Basic example">                                            
                                    <% if(currentPage != 1) { %>
                                        <button type="button" onclick="location.href='<%=request.getContextPath()%>/adList.mt?cpage=<%=currentPage-1%>';"  
                                                class="btn btn-outline-secondary">&lt;</button>
                                    <% } %>

                                    <% for(int p=startPage; p<=endPage; p++) { %>
                                        <% if(p == currentPage) { %>
                                            <button type="button" disabled class="btn btn-outline-secondary"><%=p%></button>
                                        <% } else { %>
                                            <button type="button" onclick="location.href='<%=request.getContextPath()%>/adList.mt?cpage=<%=p%>';" 
                                                    class="btn btn-outline-secondary"><%=p%></button>
                                        <% } %>
                                    <% } %>
                                    
                                    <% if(currentPage != maxPage) { %>
                                        <button type="button" onclick="location.href='<%=request.getContextPath()%>/adList.mt?cpage=<%=currentPage+1%>';" 
                                                    class="btn btn-outline-secondary">&gt;</button>
                                    <% } %>	                   
                                </div>
                            </th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>

    <footer class="footer text-center">
    </footer>
   
</body>
</html>