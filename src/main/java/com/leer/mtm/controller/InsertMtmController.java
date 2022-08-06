package com.leer.mtm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.member.model.vo.Member;
import com.leer.mtm.model.service.MtmService;

/**
 * Servlet implementation class insertMtmController
 */
@WebServlet("/insert.mtm")
public class InsertMtmController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMtmController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int memNo = loginUser.getMemNo();
		String mtmTitle = request.getParameter("mtmTitle");
		String mtmContent = request.getParameter("mtmContent");
		String mtmType = request.getParameter("mtmType");
		
		int result = new MtmService().insertMtm(memNo, mtmTitle, mtmContent, mtmType);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "문의글 등록이 완료되었습니다");
			response.sendRedirect(request.getContextPath() + "/mtmList.go");
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
