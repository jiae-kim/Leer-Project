package com.leer.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.common.model.vo.Category;
import com.leer.common.model.vo.PageInfo;
import com.leer.community.model.service.CommunityService;
import com.leer.member.model.vo.Member;
import com.leer.notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeBoardListController
 */
@WebServlet("/comuNoti.li")
public class NoticeBoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeBoardListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		int memNo = 0;
		if(loginUser != null) {
			memNo = loginUser.getMemNo();
		}
		
		Member m = new CommunityService().selectMyCount(memNo);
		request.setAttribute("m", m);
		

		ArrayList<Notice> list = new CommunityService().selectNotiBoardList();

		ArrayList<Category> cateList = new CommunityService().selectCategoryList();
		request.setAttribute("cateList", cateList);
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/community/comuNotice.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
