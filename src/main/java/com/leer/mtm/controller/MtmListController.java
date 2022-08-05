package com.leer.mtm.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.common.model.vo.PageInfo;
import com.leer.community.model.service.CommunityService;
import com.leer.mtm.model.service.MtmService;
import com.leer.mtm.model.vo.Mtm;

/**
 * Servlet implementation class MtmListController
 */
@WebServlet("/mtmList.go")
public class MtmListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MtmListController() {
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
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		
		listCount = new MtmService().selectMyListCount(memNo);
		
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
		
		
		ArrayList<Mtm> list = new MtmService().selectMyMtmList(pi, memNo);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/mtm/mtmList.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
