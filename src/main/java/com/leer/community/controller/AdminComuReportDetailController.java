package com.leer.community.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.community.model.service.AdminCommunityService;
import com.leer.community.model.vo.Report;

/**
 * Servlet implementation class AdminComuReportDetailController
 */
@WebServlet("/adRDetail.co")
public class AdminComuReportDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminComuReportDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 커뮤니티 신고상세페이지
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int reportNo = Integer.parseInt(request.getParameter("no"));
		
		Report r = new AdminCommunityService().reportDetailList(reportNo);
		
		request.setAttribute("report", r);
		request.getRequestDispatcher("views/admin_main/comu/adminReportDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
