package com.leer.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.common.model.vo.Category2;
import com.leer.community.model.service.AdminCommunityService;

/**
 * Servlet implementation class AdminNotiEnrollFormController
 */
@WebServlet("/adEnrollForm.no")
public class AdminNotiEnrollFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNotiEnrollFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 공지사항등록페이지
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Category2> list = new AdminCommunityService().selectCategoryList();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/admin_main/comu/adminNotiInsert.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
