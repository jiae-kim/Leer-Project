package com.leer.order.controller;

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
 * Servlet implementation class OrderFormController
 */
@WebServlet("/order.od")
public class OrderFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		String[] chkArr = request.getParameterValues("chk"); /* 선택된 장바구니 번호*/
		
		ArrayList<Cart> list = new ArrayList<Cart>();
		
		for(int i=0; i<chkArr.length; i++) {
			Cart c = new MypageService().selectOrderList(chkArr[i]);
			list.add(c);
		}
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/order/orderForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
