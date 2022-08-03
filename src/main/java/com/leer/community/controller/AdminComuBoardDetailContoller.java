package com.leer.community.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.community.model.service.AdminCommunityService;
import com.leer.community.model.vo.ComuBoard;

/**
 * Servlet implementation class AdminComuBoardDetailContoller
 */
@WebServlet("/adDetail.co")
public class AdminComuBoardDetailContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminComuBoardDetailContoller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 커뮤게시글 상세조회
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int comuNo = Integer.parseInt(request.getParameter("no"));
		
		ComuBoard cb = new AdminCommunityService().boardDetailList(comuNo);
		
		request.setAttribute("comuBoard", cb);
		request.getRequestDispatcher("views/admin_main/comu/adminComuBoardDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
