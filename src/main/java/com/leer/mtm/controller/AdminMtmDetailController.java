package com.leer.mtm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.mtm.model.service.AdminMtmService;
import com.leer.mtm.model.vo.Mtm;

/**
 * Servlet implementation class AdminMtmDetailController
 */
@WebServlet("/adDetail.mt")
public class AdminMtmDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMtmDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 1:1문의 상세조회페이지
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int mtmNo = Integer.parseInt(request.getParameter("no"));
		
		Mtm m = new AdminMtmService().mtmDetailList(mtmNo);
		
		request.setAttribute("Mtm", m);
		request.getRequestDispatcher("views/admin_main/mtm/adminMtmInsert.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

















