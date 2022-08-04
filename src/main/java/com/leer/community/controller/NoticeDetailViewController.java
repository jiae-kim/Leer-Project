package com.leer.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.common.model.vo.Attachment;
import com.leer.common.model.vo.Category;
import com.leer.community.model.service.CommunityService;
import com.leer.member.model.vo.Member;
import com.leer.notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeDetailViewController
 */
@WebServlet("/comuNotiDetail.bo")
public class NoticeDetailViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeDetailViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		int memNo = 0;
		if(loginUser != null) {
			memNo = loginUser.getMemNo();
		}
		
		Member m = new CommunityService().selectMyCount(memNo);
		request.setAttribute("m", m);
		int notiNo = Integer.parseInt(request.getParameter("no"));
		CommunityService cService = new CommunityService();
		ArrayList<Category> cateList = new CommunityService().selectCategoryList();
		request.setAttribute("cateList", cateList);

		int result = cService.notiIncreaseCount(notiNo);
		
		if(result > 0) {
			Notice n = cService.selectNotice(notiNo);
			Attachment at = cService.selectNotiAttachment(notiNo);
			
			request.setAttribute("n", n);
			request.setAttribute("at",at);
			
			request.getRequestDispatcher("views/community/noticeDetailView.jsp").forward(request, response);
		} else {
			
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
