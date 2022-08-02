package com.leer.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.member.model.service.AdminMemberService;
import com.leer.member.model.vo.Member;

/**
 * Servlet implementation class AdminLongDetailController
 */
@WebServlet("/adLongDetail.do")
public class AdminLongDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLongDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 장기구독자 상세조회페이지
     * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int orNo = Integer.parseInt(request.getParameter("no"));
		
		Member m = new AdminMemberService().memberLongDetailList(orNo);
		
		request.setAttribute("member", m);
		request.getRequestDispatcher("views/admin_main/member/adminLongSubDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
