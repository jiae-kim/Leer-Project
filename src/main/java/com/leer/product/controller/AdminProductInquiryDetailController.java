package com.leer.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.product.model.service.AdminProductService;
import com.leer.product.model.vo.Inquiry;

@WebServlet("/adProIqDetail.do")
public class AdminProductInquiryDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminProductInquiryDetailController() {
        super();
    }

    /* [상품관리 - 상품문의]
     * 상품문의 상세조회 기능
     * 작성자 김지애
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int qNo = Integer.parseInt(request.getParameter("no"));
		
		Inquiry iq = new AdminProductService().InquiryDetailList(qNo);
		request.setAttribute("inquiry", iq);
		
		request.getRequestDispatcher("views/admin_main/inquiry/adminInquiryDetailView.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
