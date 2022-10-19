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

@WebServlet("/adStkInsert.do")
public class AdminStockInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminStockInsertController() {
        super();
    }

    /* [주문및배송 - 입출고관리]
     * 상품 재고 전체조회 페이지 : 입고등록
     * 작성자 김지애
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String pCode = request.getParameter("pCode"); 
		String pName = request.getParameter("pName");
		String status = request.getParameter("status");
		int statusAmount = Integer.parseInt(request.getParameter("statusAmount"));
		String statusDate2 = request.getParameter("statusDate2"); // "월/일/년도"
		
		ProductIo pi = new ProductIo();
		pi.setpCode(pCode);
		pi.setpName(pName);
		pi.setStatus(status);
		pi.setStatusAmount(statusAmount);
		pi.setStatusDate2(statusDate2);
		
		int result = new AdminProductService().StockInsertPage(pi);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/adStockList.do?cpage=1");
		}else {
			request.getRequestDispatcher("views/admin_main/error/adminErrorPage.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
