package com.leer.mypage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.member.model.vo.Member;
import com.leer.mypage.model.service.MypageService;

/**
 * Servlet implementation class MyPageCancleCompleteController
 */
@WebServlet("/ordercancle.me")
public class MyPageCancleCompleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageCancleCompleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int result = 0;
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		String p_code = request.getParameter("p_code");
		String orNo = request.getParameter("orNo");
		
		result = new MypageService().CancleComplete(memNo,p_code,orNo);
		
		if(result > 1) { // 성공
			session.setAttribute("alertMsg", "성공적으로 주문을 취소했습니다.");
		}else { // 실패
			session.setAttribute("alertMsg", "정상적으로 주문취소를 진행하지 못했습니다.");
		}
		
		response.sendRedirect(request.getContextPath() + "/cancle.me?memNo="+memNo);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
