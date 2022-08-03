package com.leer.terms.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.terms.model.service.AdminTermsService;
import com.leer.terms.model.vo.Terms;

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
		
		Terms t = new Terms();
		t.setTrmClass(termsClass);
		t.setTrmTitle(termsTitle);
		t.setContent(termsContent);
		t.setTrmRemarks(termsRemarks);
		t.setMemId(termsMemId);
		
		int result = new AdminTermsService().insertTerms(t);
		
		HttpSession session = request.getSession();
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 등록되었습니다.");
			response.sendRedirect(request.getContextPath() + "/adTList.do?cpage=1");
		}else {
			request.setAttribute("errorMsg", "등록 실패");
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










