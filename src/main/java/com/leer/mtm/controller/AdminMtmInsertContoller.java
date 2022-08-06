package com.leer.mtm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.mtm.model.service.AdminMtmService;

/**
 * Servlet implementation class AdminMtmInsertContoller
 */
@WebServlet("/adminInsert.mtm")
public class AdminMtmInsertContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMtmInsertContoller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int mtmNo = Integer.parseInt(request.getParameter("mtmNo"));
		int adminNo = Integer.parseInt(request.getParameter("adminNo"));
		
		String ansContent = request.getParameter("ansContent");
		
		int result = new AdminMtmService().insertAns(mtmNo, adminNo, ansContent);
		
		HttpSession session = request.getSession();
		if(result > 0) {
			session.setAttribute("alertMsg", "답변 등록이 완료되었습니다.");
			
			response.sendRedirect(request.getContextPath() + "/adList.mt?cpage=1");
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
