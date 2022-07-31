package com.leer.terms.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.terms.model.service.AdminTermsService;
import com.leer.terms.model.vo.Terms;

/**
 * Servlet implementation class AdminTermsListController
 */
@WebServlet("/adTList.do")
public class AdminTermsListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminTermsListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 관리자페이지 이용약관 리스트조회
		// 작성자 김은지
		ArrayList<Terms> list = new AdminTermsService().selectTermsList();
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/admin_main/terms/adminTermsView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
