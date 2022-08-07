package com.leer.faq.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.faq.model.service.AdminFaqService;
import com.leer.faq.model.vo.Faq;

/**
 * Servlet implementation class FaqDetailController
 */
@WebServlet("/detail.fq")
public class FaqDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FaqDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
int faqNo = Integer.parseInt(request.getParameter("no"));
		
		// 1) 조회수 증가 : update faq 상세조회 요청문
		int result = new AdminFaqService().increaseCount(faqNo);
		
		if(result > 0) {// 조회수 증가 성공 (유효한 글번호 넘어옴) => 상세페이지
			Faq f = new AdminFaqService().selectFaq(faqNo);
			request.setAttribute("faq", f);
			request.getRequestDispatcher("views/faq/faqDetail.jsp").forward(request, response);
		}else {// 조회수 증가 실패 (조회 불가능) => 에러페이지
			request.getRequestDispatcher("views/admin_main/error/adminErrorPage.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
