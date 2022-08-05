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
 * Servlet implementation class AdminFaqInsertController
 */
@WebServlet("/AdminFaqInsertController")
public class AdminFaqInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFaqInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		// 카테고리, 제목, 내용
		String faqCategory = request.getParameter("faqCategory");
		String faqTitle = request.getParameter("faqTitle");
		String faqContent = request.getParameter("faqContent");
		
		Faq f = new Faq();
		f.setFaqCategory(faqCategory);
		f.setFaqTitle(faqTitle);
		f.setFaqContent(faqContent);
		
		int result = new AdminFaqService().FaqInsertPage(f);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/adFaqList.do?cpage=1");
		}else {
			
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
