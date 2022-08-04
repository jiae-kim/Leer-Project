package com.leer.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminMemberUpdateController
 */
@WebServlet("/adUpdate.me")
public class AdminMemberUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemberUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 회원정보 업데이트
     * 작성자 김은지 
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String memName = request.getParameter("memName");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String enrollDate = request.getParameter("enrollDate");
		int point = Integer.parseInt(multiRequest.getParameter("point"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}




















