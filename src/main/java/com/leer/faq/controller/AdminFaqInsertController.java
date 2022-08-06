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
@WebServlet("/adFaqInsert.do")
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
		//int faqNo = Integer.parseInt(request.getParameter("faqNo"));
		//int memNo = Integer.parseInt(request.getParameter("memNo"));
		String categoryName = request.getParameter("categoryNo"); //숫자를 문자형으로
		String faqTitle = request.getParameter("faqTitle");
		String faqContent = request.getParameter("faqContent");
		//String enrollDate2 = request.getParameter("enrollDate2"); //date타입 대신 string형
		
		Faq f = new Faq();
		//f.setFaqNo(faqNo);
		//f.setMemNo(memNo);
		//f.setFaqCategory(faqCategory);
		f.setCategoryName(categoryName);
		f.setFaqTitle(faqTitle);
		f.setFaqContent(faqContent);
		//f.setEnrollDate2(enrollDate2);
		
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
