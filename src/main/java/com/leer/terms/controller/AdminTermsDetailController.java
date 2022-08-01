package com.leer.terms.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.terms.model.service.AdminTermsService;
import com.leer.terms.model.vo.Terms;

/**
 * Servlet implementation class AdminTermsDetailController
 */
@WebServlet("/adTListDetail.do")
public class AdminTermsDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminTermsDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 이용약관 상세조회페이지
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int trmNo = Integer.parseInt(request.getParameter("no"));
		
		Terms t = new AdminTermsService().termsDetailList(trmNo);
		
		request.setAttribute("terms", t);
		request.getRequestDispatcher("").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
