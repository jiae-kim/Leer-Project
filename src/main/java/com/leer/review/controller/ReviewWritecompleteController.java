package com.leer.review.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.review.model.service.ReviewService;
import com.leer.review.model.vo.Review;

/**
 * Servlet implementation class ReviewWritecompleteController
 */
@WebServlet("/reviewWrite")
public class ReviewWritecompleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewWritecompleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		String pname = (String)request.getParameter("pname");
		int reviewscope = Integer.parseInt(request.getParameter("reviewscope"));
		String content = (String)request.getParameter("content");
		
		int result = new ReviewService().WriteReviewComplete(memNo,pname,reviewscope,content);
		
		
		RequestDispatcher view = request.getRequestDispatcher("views/review/review_write.jsp");
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
