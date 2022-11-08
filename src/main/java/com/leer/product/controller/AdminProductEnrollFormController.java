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

@WebServlet("/adProEnrollForm.do")
public class AdminProductEnrollFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminProductEnrollFormController() {
        super();
    }
    
    /* [상품관리 - 상품등록]
     * 상품 등록 페이지 요청 기능
     * 작성자 김지애
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Category> list = new AdminProductService().selectCategoryList();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/admin_main/product/adminProductEnroll.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
