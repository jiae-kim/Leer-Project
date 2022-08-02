package com.leer.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.common.model.vo.PageInfo;
import com.leer.community.model.service.AdminCommunityService;
import com.leer.community.model.vo.ComuNotice;
import com.leer.member.model.service.AdminMemberService;

/**
 * Servlet implementation class AdminCommunityNotiListController
 */
@WebServlet("/adComuNotiList.do")
public class AdminCommunityNotiListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCommunityNotiListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 커뮤공지리스트 조회
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 페이징처리
		int listCount;
		int currentPage;
		int pageLimit;
		int boardLimit;
		
		int maxPage;
		int startPage;
		int endPage;
		
		listCount = new AdminMemberService().selectMemberListCount();
		currentPage = Integer.parseInt(request.getParameter("cpage"));
		pageLimit = 10;
		boardLimit = 10;
		
		maxPage = (int)Math.ceil( (double)listCount / boardLimit );
		startPage = (currentPage-1) / pageLimit * pageLimit+1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
				
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		ArrayList<ComuNotice> list = new AdminCommunityService().selectComuNotiList(pi); 
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/admin_main/comu/adminComuNotiView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}










