package com.leer.terms.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.common.model.vo.Category2;
import com.leer.terms.model.service.AdminTermsService;

/**
 * Servlet implementation class AdminTermsEnrollFormController
 */
@WebServlet("/adTinsertForm.te")
public class AdminTermsEnrollFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminTermsEnrollFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 이용약관등록페이지
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Category2> list = new AdminTermsService().selectTermsCategoryList();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/admin_main/terms/adminTermsEnroll.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
