package com.leer.order.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.order.model.service.AdminOrderService;
import com.leer.order.model.vo.Order;

/**
 * Servlet implementation class AdminParcelNumEnrollFormController
 */
@WebServlet("/adPnEnrollForm.do")
public class AdminParcelNumEnrollFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminParcelNumEnrollFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 운송상태 수정 
		String orNo = request.getParameter("no");
		
		Order r = new AdminOrderService().selectParcel(orNo);
		
		request.setAttribute("order", r);
		request.getRequestDispatcher("views/admin_main/order/adminOrAdView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
