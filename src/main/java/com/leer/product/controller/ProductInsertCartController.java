package com.leer.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.mypage.model.vo.Cart;

/**
 * Servlet implementation class ProductInsertCartController
 */
@WebServlet("/insert.pd")
public class ProductInsertCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductInsertCartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pCode = request.getParameter("pNo");	
		int orCycle = Integer.parseInt(request.getParameter("shipping_cycle"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		
		Cart c = new Cart();
		c.setpCode(pCode);
		c.setOrCycle(orCycle);
		c.setAmount(amount);
		
		int result = new MyPageService().insertProductCart(c);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
