package com.leer.community.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.common.model.vo.Attachment;
import com.leer.community.model.service.CommunityService;
import com.leer.community.model.vo.ComuBoard;

/**
 * Servlet implementation class DetailBoardController
 */
@WebServlet("/comuDetail.bo")
public class DetailBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailBoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int comuNo = Integer.parseInt(request.getParameter("no"));
		CommunityService cService = new CommunityService();
		
		int result = cService.increaseCount(comuNo);
		
		if(result > 0) {
			ComuBoard c = cService.selectBoard(comuNo);
			Attachment at = cService.selectAttachment(comuNo);
			
			request.setAttribute("c", c);
			request.setAttribute("at",at);
			
			request.getRequestDispatcher("views/community/boardDetailView.jsp").forward(request, response);
		} else {
			
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
