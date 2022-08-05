package com.leer.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.leer.product.model.service.ProductService;
import com.leer.product.model.vo.Product;

/**
 * Servlet implementation class AjaxProductListSelection
 */
@WebServlet("/nlist2.pd")
public class AjaxProductListSelectionController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxProductListSelectionController2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String align = request.getParameter("align");
		
		ArrayList<Product> list = new ArrayList<>();
		if(align.equals("최신순")) {
			list = new ProductService().selectProductList2();
		}
		
		if(align.equals("오래된순")) {
			list = new ProductService().selectProductListOld2();
		}
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(list, response.getWriter()); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
