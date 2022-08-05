package com.leer.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.member.model.service.AdminMemberService;
import com.leer.member.model.vo.Member;
import com.leer.order.model.service.AdminOrderService;
import com.leer.order.model.vo.Order;

/**
 * Servlet implementation class AdminMemberUpdateFormController
 */
@WebServlet("/adUpdateForm.me")
public class AdminMemberUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemberUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 회원업데이트페이지
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int memNo = Integer.parseInt(request.getParameter("no"));
		
		Member m = new AdminMemberService().updateMemberForm(memNo);
		
		request.setAttribute("member", m);
		
		// 주문내역에대한 데이터리스트 조회
		// 리퀘스트에 다시 담고 반복문으로 뿌리기
		ArrayList<Order> list = new AdminOrderService().selectMemberOrderDetail(memNo);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/admin_main/member/adminMemberUpdate.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

















