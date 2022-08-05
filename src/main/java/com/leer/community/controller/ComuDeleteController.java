package com.leer.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.community.model.service.CommunityService;
import com.leer.community.model.vo.ComuBoard;

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
		String[] comuNoArr = request.getParameterValues("chk");
		int comuNo = Integer.parseInt(request.getParameter("no"));
		
		int result = 0;
		
		for(int i=0; i<comuNoArr.length; i++) {
			result += new CommunityService().deleteBoard(comuNoArr[i]);
		}
		if(result == comuNoArr.length) {
			ArrayList<ComuBoard> cmList = new CommunityService().selectMyBoard(comuNo);
			request.setAttribute("cmList", cmList);
			request.getRequestDispatcher("views/community/MyboardList.jsp").forward(request, response);
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
