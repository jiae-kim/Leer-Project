package com.leer.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.product.model.service.AdminProductService;

@WebServlet("/adProDelete.do")
public class AdminProductDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminProductDeleteController() {
        super();
    }
    
    /* [상품관리 - 상품조회]
     * 상품 삭제 기능
     * 작성자 김지애
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청시 전달값 : 상품코드
		String pCode = request.getParameter("pc");
		int result = new AdminProductService().deleteProduct(pCode);
		
		if(result > 0) {//성공 => 상품전체조회페이지 요청
			response.sendRedirect(request.getContextPath() + "/adProList.do?cpage=1");
		}else {// 실패 => 제공하는 에러페이지 요청
			request.getRequestDispatcher("views/admin_main/error/adminErrorPage.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
