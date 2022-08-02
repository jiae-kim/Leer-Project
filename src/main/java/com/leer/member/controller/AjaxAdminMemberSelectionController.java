package com.leer.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.leer.common.model.vo.PageInfo;
import com.leer.member.model.service.AdminAjaxMemberService;
import com.leer.member.model.service.AdminMemberService;
import com.leer.member.model.vo.Member;

/**
 * Servlet implementation class AjaxAdminMemberSelectionController
 */
@WebServlet("/AjaxAdMemSelec.do")
public class AjaxAdminMemberSelectionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxAdminMemberSelectionController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 Ajax 멤버리스트 재정렬 (전체조회, 가나다순)
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 페이징처리
		int listCount;
		int currentPage;
		int pageLimit;
		int boardLimit;
		
		int maxPage;
		int startPage;
		int endPage;
		
		listCount = new AdminMemberService().selectMemberListCount();
		currentPage = Integer.parseInt(request.getParameter("cpage"));
		pageLimit = 10;
		boardLimit = 10;
		
		maxPage = (int)Math.ceil( (double)listCount / boardLimit );
		startPage = (currentPage-1) / pageLimit * pageLimit+1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		String align = request.getParameter("align");
		
		ArrayList<Member> list = new ArrayList<>();
		if(align.equals("전체조회")) {
			list = new AdminMemberService().selectMemberList(pi);
		}
		
		if(align.equals("가나다 순 조회")) {
			list = new AdminAjaxMemberService().selectMemberListGND(pi);
		}
		
		request.setAttribute("pi", pi);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(list, response.getWriter()); 
		
		//request.getRequestDispatcher("views/admin_main/member/adminMemberView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
