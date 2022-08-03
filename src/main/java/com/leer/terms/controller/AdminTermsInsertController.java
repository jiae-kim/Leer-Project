package com.leer.terms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminTermsInsertController
 */
@WebServlet("/adTInsert.te")
public class AdminTermsInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminTermsInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 이용약관 등록요청
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String termsClass = request.getParameter("trmClass");
		String termsTitle = request.getParameter("trmTitle");
		String termsContent = request.getParameter("content");
		String termsRemarks = request.getParameter("trmRemarks");
		String termsMemId = request.getParameter("memId");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
