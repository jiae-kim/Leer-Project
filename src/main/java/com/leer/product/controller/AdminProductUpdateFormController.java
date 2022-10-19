package com.leer.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.common.model.vo.Category;
import com.leer.product.model.service.AdminProductService;
import com.leer.product.model.vo.Product;

@WebServlet("/adProUpdateForm.do")
public class AdminProductUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminProductUpdateFormController() {
        super();
    }

    /* [상품관리 - 상품조회]
     * 상품 수정 페이지 요청
     * 작성자 김지애
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 체크한 상품을 수정페이지로 요청 
		String chkpCode = request.getParameter("chkpCode");
		
		// 카테고리목록리스트, 체크한 상품 등록 정보
		AdminProductService pService = new AdminProductService();
		ArrayList<Category> list = pService.selectCategoryList();
		Product chkpc = pService.selectProduct(chkpCode);
		
		request.setAttribute("list", list);
		request.setAttribute("product", chkpc);
		
		request.getRequestDispatcher("views/admin_main/product/adminProductUpdate.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
