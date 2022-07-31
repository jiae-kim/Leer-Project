package com.leer.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.mypage.model.service.MypageService;
import com.leer.mypage.model.vo.Cart;

/**
 * Servlet implementation class MyPageCartDeleteController
 */
@WebServlet("/cdelete.me")
public class MyPageCartDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageCartDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] cartNoArr = request.getParameterValues("chk");
		System.out.println(request.getParameter("memNo"));
		System.out.println(request.getParameter("memNo"));
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		
		int result = 0;
		for(int i=0; i<cartNoArr.length; i++) {
			result += new MypageService().deleteCart(cartNoArr[i]);
		}
		
		if(result == cartNoArr.length) {
			ArrayList<Cart> list  = new MypageService().selectCartList(memNo);
			request.setAttribute("list", list);
			request.getRequestDispatcher("views/mypage/mypageCartSelectList.jsp").forward(request, response);
			
		}else {
			
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
