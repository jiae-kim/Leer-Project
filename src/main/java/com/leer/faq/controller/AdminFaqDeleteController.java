package com.leer.faq.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.faq.model.service.AdminFaqService;

@WebServlet("/adFaqDelete.do")
public class AdminFaqDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminFaqDeleteController() {
        super();
    }

    /* [고객센터 - FAQ]
     * FAQ 삭제 기능
     * 작성자 김지애
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // 요청시 전달값 : FAQ 번호
	    int faqNo = Integer.parseInt(request.getParameter("faqNo"));
	    int result = new AdminFaqService().deleteFaq(faqNo);
	    
	    if(result > 0) {//성공 => faq전제조회페이지 요청
	        response.sendRedirect(request.getContextPath() + "/adFaqList.do?cpage=1");
	    }else {//실패 => 에러페이지 요청
	        request.getRequestDispatcher("views/admin_main/error/adminErrorPage.jsp").forward(request, response);
	    }
	    
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
