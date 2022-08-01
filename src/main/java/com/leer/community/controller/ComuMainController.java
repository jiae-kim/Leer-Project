package com.leer.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.common.model.vo.PageInfo;
import com.leer.community.model.service.CommunityService;
import com.leer.community.model.vo.ComuBoard;

/**
 * Servlet implementation class ComuMainController
 */
@WebServlet("/comu.bo")
public class ComuMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComuMainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				int listCount; 		
				int currentPage; 	
				int pageLimit; 		
				int boardLimit; 
				int maxPage; 		
				int startPage; 		
				int endPage;		
				
				listCount = new CommunityService().selectListCount();
				
				
				currentPage = Integer.parseInt(request.getParameter("cpage"));
				
				pageLimit = 5;
				
				boardLimit = 10;
	
				maxPage = (int) Math.ceil((double)listCount / boardLimit);
				
				
				startPage = (currentPage-1) / pageLimit * pageLimit + 1;
				
				endPage = startPage + pageLimit-1;
				
				if(endPage > maxPage) {
					endPage = maxPage;
				}
				PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
				
				ArrayList<ComuBoard> list = new CommunityService().selectList(pi);
				
				request.setAttribute("pi", pi);
				request.setAttribute("list", list);
				
				request.getRequestDispatcher("views/community/viewList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
