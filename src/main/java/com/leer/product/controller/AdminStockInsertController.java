package com.leer.product.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.product.model.service.AdminProductService;
import com.leer.product.model.vo.Product;
import com.leer.product.model.vo.ProductIo;

/**
 * Servlet implementation class AdminProductEnrollController
 */
@WebServlet("/adStkInsert.do")
public class AdminStockInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminStockInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int statusNo = Integer.parseInt(request.getParameter("statusNo"));
		String pCode = request.getParameter("pCode"); // 상품코드
		String pName = request.getParameter("pName");
		String status = request.getParameter("status");
		int statusAmount = Integer.parseInt(request.getParameter("statusAmount"));
		String statusDate2 = request.getParameter("statusDate2");
		
		ProductIo pi = new ProductIo();
		pi.setStatusNo(statusNo);
		pi.setpCode(pCode);
		pi.setpName(pName);
		pi.setStatus(status);
		pi.setStatusAmount(statusAmount);
		pi.setStatusDate2(statusDate2);
		
		int result = new AdminProductService().StockInsertPage(pi);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/adStockList.do?cpage=1");
		}else {
			//request.getRequestDispatcher("views/admin_main/error/adminErrorPage.jsp").forward(request, response);
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
