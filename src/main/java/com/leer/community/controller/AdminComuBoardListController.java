package com.leer.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.community.model.service.AdminCommunityService;
import com.leer.community.model.vo.ComuBoard;

/**
 * Servlet implementation class AdminComuBoardListController
 */
@WebServlet("/adList.co")
public class AdminComuBoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminComuBoardListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 커뮤니티 게시물 리스트조회
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
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
		*/
		
		ArrayList<ComuBoard> list = new AdminCommunityService().selectBoardList(); //pi
		
		//request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/admin_main/comu/adminComuPostView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
