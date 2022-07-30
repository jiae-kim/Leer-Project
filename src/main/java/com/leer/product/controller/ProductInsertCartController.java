package com.leer.product.controller;

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
		
		HttpSession session = request.getSession();
		
		//if(session.getAttribute("loginUser") == null) {
			//response.sendRedirect(request.getContextPath());
		//}else {
			
			//int memNo = Integer.parseInt(request.getParameter("memNo"));
			String pCode = request.getParameter("pNo");	
			int orCycle = Integer.parseInt(request.getParameter("shipping_cycle"));
			int amount = Integer.parseInt(request.getParameter("amount"));
			
			
			Cart c = new Cart();
			
			//c.setMemNo(memNo);
			c.setMemNo(7);
			c.setpCode(pCode);
			c.setOrCycle(orCycle);
			c.setAmount(amount);
			
			int result = new MypageService().insertProductCart(c);
			
			ArrayList<Cart> list  = new MypageService().selectCartList(c.getMemNo());
			
			if(result > 0) {
				
				session.setAttribute("list", list);
				request.getRequestDispatcher("views/mypage/mypageCartList.jsp").forward(request, response);
			}else { 
				
			}
		}
		
	
		
	//}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
