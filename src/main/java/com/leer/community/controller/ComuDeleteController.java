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
import com.leer.community.model.vo.ComuBoard;
import com.leer.member.model.vo.Member;

/**
 * Servlet implementation class ComuDeleteController
 */
@WebServlet("/comuDelete.me")
public class ComuDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComuDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("UTF-8");

		
		int listCount; 		
		int currentPage; 	
		int pageLimit; 		
		int boardLimit; 
		int maxPage; 		
		int startPage; 		
		int endPage;		
//		int memNo = Integer.parseInt(request.getParameter("memNo"));
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		int memNo = 0;
		if(loginUser != null) {
			memNo = loginUser.getMemNo();
		}
		Member m = new CommunityService().selectMyCount(memNo);
		request.setAttribute("m", m);
		listCount = new CommunityService().selectMyListCount(memNo);
		
		
		currentPage = 1;
		
		pageLimit = 5;
		
		boardLimit = 5;

		maxPage = (int) Math.ceil((double)listCount / boardLimit);
		
		
		startPage = (currentPage-1) / pageLimit * pageLimit + 1;
		
		endPage = startPage + pageLimit-1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		String[] comuNoArr = request.getParameterValues("chk");
		int result = 0;
		
		
		for(int i=0; i<comuNoArr.length; i++) {
			result += new CommunityService().deleteBoard(comuNoArr[i]);
		}
		if(result == comuNoArr.length) {
			//ArrayList<ComuBoard> cmList = new CommunityService().selectMyBoard(memNo);
			PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
			ArrayList<ComuBoard> cmList = new CommunityService().selectMyBoardList(pi, memNo);
			ArrayList<Category> cateList = new CommunityService().selectCategoryList();
			
			request.setAttribute("pi", pi);
			request.setAttribute("cmList", cmList);
			request.setAttribute("cateList", cateList);
			request.setAttribute("flag", "update");
			request.getRequestDispatcher("views/community/myBoardList.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
