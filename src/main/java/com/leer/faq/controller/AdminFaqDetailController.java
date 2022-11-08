package com.leer.faq.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.faq.model.service.AdminFaqService;
import com.leer.faq.model.vo.Faq;

@WebServlet("/adFaqDetail.do")
public class AdminFaqDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminFaqDetailController() {
        super();
    }

    /* [고객센터 - FAQ]
     * FAQ 상세조회 기능
     * 작성자 김지애
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int faqNo = Integer.parseInt(request.getParameter("no"));
		
		// 상세페이지 클릭 시 조회수 증가
		int result = new AdminFaqService().increaseCount(faqNo);
		
		if(result > 0) {// 조회수 증가 성공 (유효한 글번호 넘어옴) => 상세페이지
			Faq f = new AdminFaqService().selectFaq(faqNo);
			request.setAttribute("faq", f);
			request.getRequestDispatcher("views/admin_main/faq/adminFaqDetailView.jsp").forward(request, response);
		}else {// 조회수 증가 실패 (조회 불가능) => 에러페이지
			request.getRequestDispatcher("views/admin_main/error/adminErrorPage.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
