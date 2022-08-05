package com.leer.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.member.model.service.AdminMemberService;
import com.leer.member.model.vo.Member;

/**
 * Servlet implementation class AdminMemberUpdateController
 */
@WebServlet("/adUpdate.me")
public class AdminMemberUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemberUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 회원정보 업데이트
     * 작성자 김은지 
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String memId = request.getParameter("memId");
		String memName = request.getParameter("memName");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		
		//Member m = new Member(memId, memName, address, phone);
		Member m = new Member();
		m.setMemId(memId);
		m.setMemName(memName);
		m.setAddress(address);
		m.setPhone(phone);
		
		int result = new AdminMemberService().updateMember(m);
		
		if(result > 0) {
			
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "성공적으로 수정했습니다.");
			
			response.sendRedirect(request.getContextPath() + "/adMemList.do?cpage=1");
			
		}else {

			request.setAttribute("errorMsg", "회원정보수정에 실패했습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			
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




















