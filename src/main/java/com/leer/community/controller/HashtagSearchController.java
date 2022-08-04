package com.leer.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.community.model.service.CommunityService;
import com.leer.community.model.vo.ComuBoard;
import com.leer.mypage.model.service.MypageService;

/**
 * Servlet implementation class HashtagSearchController
 */
@WebServlet("/hashtagsearch")
public class HashtagSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HashtagSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = 0;
		
		HttpSession session = request.getSession();
		String hashtag = request.getParameter("hashtag");
		
		ArrayList<ComuBoard> list = new CommunityService().HashtagSearch(hashtag);

		session.setAttribute("tagsearchlist", list);
		
		response.sendRedirect(request.getContextPath() + "/comu.bo?tag="+hashtag);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
