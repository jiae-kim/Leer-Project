package com.leer.community.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.community.model.service.AdminCommunityService;
import com.leer.community.model.vo.ComuNotice;

/**
 * Servlet implementation class AdminCommunityNotiDetailController
 */
@WebServlet("/adComuNotiDetail.do")
public class AdminCommunityNotiDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCommunityNotiDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 커뮤니티 공지 상세조회페이지
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int notiNo = Integer.parseInt(request.getParameter("no"));
		
		ComuNotice c = new AdminCommunityService().comuNotiDetailList(notiNo);
		
		request.setAttribute("comuNotice", c);
		request.getRequestDispatcher("views/admin_main/comu/adminComuDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
