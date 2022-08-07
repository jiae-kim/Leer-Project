package com.leer.mtm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.mtm.model.service.MtmService;

/**
 * Servlet implementation class MtmUpdateController
 */
@WebServlet("/update.mtm")
public class MtmUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MtmUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int mtmNo = Integer.parseInt(request.getParameter("mtmNo"));
		String mtmType = request.getParameter("mtmType");
		String mtmTitle = request.getParameter("mtmTitle");
		String mtmContent = request.getParameter("mtmContent");
		
		int result = new MtmService().updateMtm(mtmNo, mtmType, mtmTitle, mtmContent);
		
		HttpSession session = request.getSession();
		if(result > 0) {
			
			session.setAttribute("alertMsg", "문의 글 수정 완료되었습니다.");
			response.sendRedirect(request.getContextPath() + "/mtmDetail.go?no=" + mtmNo);
			
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
