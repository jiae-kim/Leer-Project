package com.leer.product.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.common.model.vo.Attachment;
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
		// 수정페이지 요청 
		
		// PRODUCT 테이블에는 pNo이 없기 때문에 상품코드를 넘기자
		String pCode = request.getParameter("pCode");
		
		// 카테고리목록리스트, 상품 등록 정보, 첨부파일 정보 
		AdminProductService pService = new AdminProductService();
		ArrayList<com.leer.common.model.vo.Category> list = pService.selectCategoryList();
		Product p = pService.selectProduct(pCode);
		Attachment at = pService.selectAttachment(pCode);
		//ArrayList<com.leer.common.model.vo.Category> list = new AdminProductService().selectCategoryList();
		//Product p = new AdminProductService().selectProduct(pCode);
		
		// adminProductUpdate.jsp 응답
		request.setAttribute("list", list);
		request.setAttribute("product", p);
		request.setAttribute("at", at);
		
		// 포워딩
		request.getRequestDispatcher("views/admin_main/product/adminProductUpdate.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
