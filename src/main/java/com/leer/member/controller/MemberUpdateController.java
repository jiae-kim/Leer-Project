package com.leer.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.member.model.service.MemberService;
import com.leer.member.model.vo.Member;

/**
 * Servlet implementation class MemberUpdateController
 */
@WebServlet("/update.me")
public class MemberUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String memId = request.getParameter("memId");
		String nickname = request.getParameter("nickname");
		String memName = request.getParameter("memName");
		String memBirth = request.getParameter("memBirth");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		Member m = new Member(memId, nickname, memName, memBirth, phone, email, address);
		
		
		Member updateMem = new MemberService().updateMember(m);
		
		
		if(updateMem == null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "회원정보 변경에 실패했습니다. 다시 시도해주세요.");
			
			response.sendRedirect(request.getContextPath() + "/mypage.me");
			
		}else {
			
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", updateMem);
			session.setAttribute("alertMsg", "회원정보 수정 성공했습니다.");
			
			response.sendRedirect(request.getContextPath() + "/mypage.me");
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
