package com.leer.faq.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.common.model.vo.FaqCategory;
import com.leer.faq.model.service.AdminFaqService;

@WebServlet("/adFaqEnrollForm.do")
public class AdminFaqEnrollFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminFaqEnrollFormController() {
        super();
    }

    /* [고객센터 - FAQ]
     * FAQ 전체조회 페이지 요청 기능
     * 작성자 김지애
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<FaqCategory> list = new AdminFaqService().selectFaqCategoryList();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/admin_main/faq/adminFaqInsert.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
