package com.leer.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.mypage.model.service.MypageService;
import com.leer.mypage.model.vo.Cart;

/**
 * Servlet implementation class MyPageCartSelectController
 */
@WebServlet("/clist.me")
public class MyPageCartSelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageCartSelectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("loginUser") == null) {
			response.sendRedirect(request.getContextPath());
		}else {
			
			ArrayList<Cart> list  = new MypageService().selectCartList(memNo);
			request.setAttribute("list", list);
			request.getRequestDispatcher("views/mypage/mypageCartSelectList.jsp").forward(request, response);
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
