package com.leer.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.product.model.service.AdminProductService;
import com.leer.product.model.vo.Inquiry;

/**
 * Servlet implementation class AdminProductInquiryDetailController
 */
@WebServlet("/adProIqDetail.do")
public class AdminProductInquiryDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProductInquiryDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 상품문의 상세조회 요청
		//int qNo = Integer.parseInt(request.getParameter("qno"));
		String qNo2 = request.getParameter("qno");
		
		Inquiry iq = new AdminProductService().InquiryDetailList(qNo2);
		
		request.setAttribute("inquiry", iq);
		request.getRequestDispatcher("views/admin_main/inquiry/adminInquiryQAnswer.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
