package com.leer.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.product.model.service.AdminProductService;

/**
 * Servlet implementation class AdminProductDeleteController
 */
@WebServlet("/adProDelete.do")
public class AdminProductDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProductDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 상품전체조회 페이지에서 상품 삭제하기
		
		// PRODUCT 테이블에 pNo 없어서 상품코드로 넘김
		String pCode = request.getParameter("pc");
		int result = new AdminProductService().deleteProduct(pCode);
		
		if(result > 0) {//성공 => 상품전체조회페이지 요청
			response.sendRedirect(request.getContextPath() + "/adProList.do");
		}else {// 실패 => 부트스트랩에서 제공하는 에러페이지 요청
			request.getRequestDispatcher("views/admin_main/error/adminErrorPage.jsp").forward(request, response);
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
