package com.leer.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.product.model.service.AdminProductService;
import com.leer.product.model.vo.Product;

/**
 * Servlet implementation class AdminProductUpdateFormController
 */
@WebServlet("/adProUpdateForm.do")
public class AdminProductUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProductUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 상품전체조회 페이지에서 수정버튼 클릭 시 수정페이지 요청 
		
		// PRODUCT 테이블에는 pNo이 없기 때문에 상품코드를 넘기자
		String pCode = request.getParameter("pc");
		Product p = new AdminProductService().selectProduct(pCode);
		
		request.setAttribute("product", p);
		request.getRequestDispatcher("views/admin_main/product.adminProductDetailed.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
