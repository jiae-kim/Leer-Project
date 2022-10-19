package com.leer.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.product.model.service.AdminProductService;
import com.leer.product.model.vo.ProductIo;

@WebServlet("/adStkEnrollForm.do")
public class AdminStockEnrollFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminStockEnrollFormController() {
        super();
    }

    /* [주문및배송 - 입출고관리]
     * 상품재고 전체조회 페이지 요청
     * 작성자 김지애
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("views/admin_main/product/adminStockView.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
