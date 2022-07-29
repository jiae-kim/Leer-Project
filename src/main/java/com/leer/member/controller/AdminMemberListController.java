package com.leer.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.member.model.service.AdminMemberService;
import com.leer.member.model.vo.Member;

/**
 * Servlet implementation class AdminMemberListController
 */
@WebServlet("/adMemList.do")
public class AdminMemberListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AdminMemberListController() {
        // TODO Auto-generated constructor stub
    }

	/*
	 *  회원조회기능
	 *	작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Member> list = new AdminMemberService().selectMemberList();
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/admin_main/member/adminMemberView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
