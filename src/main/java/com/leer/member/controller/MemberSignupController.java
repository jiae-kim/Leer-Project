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
 * Servlet implementation class MemberSignupController
 */
@WebServlet("/signup.me")
public class MemberSignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberSignupController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");
		String nickname = request.getParameter("nickname");
		String memName = request.getParameter("memName");
		String birth = request.getParameter("birth"); //""빈문자열 넘어올 수 있음
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		String[] categoryArr = request.getParameterValues("category"); //null일 수 있음
		
		String category = null;
		if(categoryArr != null) {
			category = String.join(",", categoryArr);
		}
		
		
		Member m = new Member(memId, memPwd, nickname, memName, birth, phone, email, address, category);
		
		
		
		int result = new MemberService().insertMember(m);
		
		
		
		if(result > 0) {
			
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "회원가입이 완료되었습니다.");
			
			response.sendRedirect(request.getContextPath()); //메인페이지로 돌아가도록
			
		}else {
			
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "회원가입에 실패했습니다. 다시 시도해주세요.");

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
