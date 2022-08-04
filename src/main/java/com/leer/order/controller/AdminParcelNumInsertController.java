package com.leer.order.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.order.model.service.AdminOrderService;
import com.leer.order.model.vo.Order;

/**
 * Servlet implementation class AdminParcelNumInsertController
 */
@WebServlet("/adPnInsert.do")
public class AdminParcelNumInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminParcelNumInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		// 요청시 전달값 : 주문번호, 택배사, 운송장번호
		String orNo = request.getParameter("orNo");
		String parcelName = request.getParameter("parcelName");
		String parcelNum = request.getParameter("parcelNum");
		
		Order r = new Order();
		r.setOrNo(orNo);
		r.setParcelName(parcelName);
		r.setParcelNum(parcelNum);
		
		int result = new AdminOrderService().updateParcel(r);
		
		if(result > 0) {// 성공 : 주문배송관리 목록 페이지
			response.sendRedirect(request.getContextPath() + " /adOrderList.do?cpage=1");
		}else {
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
