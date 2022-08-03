package com.leer.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.common.model.vo.Category;
import com.leer.common.model.vo.PageInfo;
import com.leer.community.model.service.CommunityService;
import com.leer.community.model.vo.ComuBoard;
import com.leer.member.model.vo.Member;

/**
 * Servlet implementation class BoardCategoryController
 */
@WebServlet("/cgory.li")
public class BoardCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardCategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cNo = Integer.parseInt(request.getParameter("cNo"));
		
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		
		Member m = new CommunityService().selectMyCount(memNo);
		int listCount; 		
		int currentPage; 	
		int pageLimit; 		
		int boardLimit; 
		int maxPage; 		
		int startPage; 		
		int endPage;		
		
		listCount = new CommunityService().selectCategoryListCount(cNo);
		
		
		currentPage = Integer.parseInt(request.getParameter("cpage"));
		
		pageLimit = 5;
		
		boardLimit = 5;

		maxPage = (int) Math.ceil((double)listCount / boardLimit);
		
		
		startPage = (currentPage-1) / pageLimit * pageLimit + 1;
		
		endPage = startPage + pageLimit-1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);

		
//		int cNo = 10;
		ArrayList<ComuBoard> list = new ArrayList<>();
		
		CommunityService cService = new CommunityService();
		
		/*if(categoryNo != null) {
			switch(categoryNo) {
			case 10: list = cService.selectCategory10(categoryNo); break;
			case 20: list = cService.selectCategory20(categoryNo); break;
			case 30: list = cService.selectCategory30(categoryNo); break;
			case 40: list = cService.selectCategory40(categoryNo); break;
			case 50: list = cService.selectCategory50(categoryNo); break;
			case 60: list = cService.selectCategory60(categoryNo); 
			}
		}*/
		
		list = cService.selectCategory(pi, cNo);
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		ArrayList<Category> cateList = new CommunityService().selectCategoryList();
		request.setAttribute("cateList", cateList);
		request.setAttribute("flag", String.valueOf(cNo));
		request.getRequestDispatcher("views/community/viewList.jsp").forward(request, response);
		request.setAttribute("m", m);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
