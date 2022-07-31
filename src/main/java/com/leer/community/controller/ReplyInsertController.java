package com.leer.community.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.community.model.service.CommunityService;
import com.leer.community.model.vo.Reply;
import com.leer.member.model.vo.Member;

/**
 * Servlet implementation class ReplyInsertController
 */
@WebServlet("/rinsert.bo")
public class ReplyInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String replyContent = request.getParameter("content");
		
		int comuNo = Integer.parseInt(request.getParameter("no"));
		
		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
//		int memNo = 3;
		
		Reply r = new Reply();
		
		r.setCommContent(replyContent);
		r.setComuNo(comuNo);
		r.setMemNo(String.valueOf(memNo));
		
		int result = new CommunityService().insertReply(r);
		
		response.getWriter().print(result);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
