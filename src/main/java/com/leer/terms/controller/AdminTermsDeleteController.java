package com.leer.terms.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.terms.model.service.AdminTermsService;

/**
 * Servlet implementation class AdminTermsDeleteController
 */
@WebServlet("/adDelete.te")
public class AdminTermsDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminTermsDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 이용약관 삭제요청
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int trmNo = Integer.parseInt(request.getParameter("no"));
		
		int result = new AdminTermsService().deleteTerms(trmNo);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/adTList.do?cpage=1");
		}else {
			request.setAttribute("errorMsg", "이용약관 삭제 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
