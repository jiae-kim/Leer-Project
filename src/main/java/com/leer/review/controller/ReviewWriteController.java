package com.leer.review.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.member.model.vo.Member;
import com.leer.mypage.model.service.MypageService;
import com.leer.review.model.service.ReviewService;
import com.leer.review.model.vo.Review;

/**
 * Servlet implementation class ReviewWriteController
 */
@WebServlet("/review.me")
public class ReviewWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewWriteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		String orNo = (String)request.getParameter("orNo");
		String p_code = (String)request.getParameter("p_code");
		
		Review r = new ReviewService().WriteReview(memNo,orNo,p_code);
		request.setAttribute("r", r);
		
		System.out.print(r.getpName());
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
