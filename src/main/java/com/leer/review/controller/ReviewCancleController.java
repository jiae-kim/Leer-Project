package com.leer.review.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.review.model.service.ReviewService;
import com.leer.review.model.vo.Review;

/**
 * Servlet implementation class ReviewCancleController
 */
@WebServlet("/reviewcancle.me")
public class ReviewCancleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewCancleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		int reviewNo = Integer.parseInt(request.getParameter("reviewNo"));
		String p_code = (String)request.getParameter("p_code");
		
		int result = new ReviewService().ReviewCancle(memNo,reviewNo,p_code);
		
		// url 재요청 필요
		response.sendRedirect(request.getContextPath()+"/myreviewhistory.me?memNo="+memNo);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
