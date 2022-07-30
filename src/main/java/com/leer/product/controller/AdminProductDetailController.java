package com.leer.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.product.model.service.ProductService;
import com.leer.product.model.vo.Inquiry;
import com.leer.product.model.vo.Product;

/**
 * Servlet implementation class ProductDetailController
 */
@WebServlet("/adProEnroll.do")
public class AdminProductDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProductDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 요청시 전달값
		String pName = request.getParameter("pName");
		String publishMonth = request.getParameter("publishMoth");
		String publisher = request.getParameter("publisher");
		String category = request.getParameter("category"); //join해야됨
		String pCode = request.getParameter("pCode");
		String price = request.getParameter("price");
		String stock = request.getParameter("stock");
		// 이미지3개
		String deliFee = request.getParameter("deliFee");
		String point = request.getParameter("point");
	
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
