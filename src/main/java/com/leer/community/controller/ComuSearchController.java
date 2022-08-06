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
 * Servlet implementation class ComuSearchController
 */
@WebServlet("/comuSearch.li")
public class ComuSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ComuSearchController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		int memNo = 0;
		if (loginUser != null) {
			memNo = loginUser.getMemNo();
		}

		Member m = new CommunityService().selectMyCount(memNo);

		request.setAttribute("m", m);

		int listCount;
		int currentPage;
		int pageLimit;
		int boardLimit;
		int maxPage;
		int startPage;
		int endPage;
		String search = request.getParameter("search");
		
		listCount = new CommunityService().selectSearchListCount(search);

		currentPage = 1;

		pageLimit = 5;

		boardLimit = 5;

		maxPage = (int) Math.ceil((double) listCount / boardLimit);

		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;

		endPage = startPage + pageLimit - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);

		ArrayList<Category> cateList = new CommunityService().selectCategoryList();
		

		ArrayList<ComuBoard> list = new CommunityService().selectSearchList(search, pi);

		request.setAttribute("pi", pi);
		request.setAttribute("cateList", cateList);
		request.setAttribute("search", search);
		request.setAttribute("flag","search");
		request.setAttribute("list", list);
		request.getRequestDispatcher("/views/community/viewList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
