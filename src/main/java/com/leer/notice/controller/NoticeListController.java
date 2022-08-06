package com.leer.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.common.model.vo.PageInfo;
import com.leer.notice.model.service.AdminNoticeService;
import com.leer.notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeListController
 */
@WebServlet("/list.no")
public class NoticeListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// ---------- 페이징 처리 ----------
		int listCount; 		// 현재 총 게시글 갯수 
		int currentPage;    // 사용자가 보게될 페이지 (즉, 사용자가 요청한 페이지) 
		int pageLimit; 	    // 페이징바의 페이지 최대갯수 (몇개 단위씩) 
		int boardLimit;     // 한 페이지당 보여질 게시글 최대갯수 (몇개 단위씩) 
		// 위의 4개를 가지고 아래 3개의 값을 구해낼꺼임 
		int maxPage;		// 가장 마지막 페이지 (총 페이지 수) 
		int startPage; 		// 페이징바의 시작수 
		int endPage;		// 페이징바의 끝수 
		
		// * listCount : 현재 게시글 총갯수 
		listCount = new AdminNoticeService().selectNoticeListCount();
		
		// * currentPage : 사용자가 보게될 페이지 (즉, 사용자가 요청한 페이지) 
		currentPage = Integer.parseInt(request.getParameter("cpage")); 
		// 위에꺼 개중요 !!!!!!!!!
		
		// * pageLimit : 페이징바의 페이지 최대 갯수 (몇개 단위씩) 
		pageLimit = 10;
		
		// * boardLimit : 한 페이지당 보여질 게시글의 최대 갯수 (몇개 단위씩)
		boardLimit = 10;
		
		/*
		 * * maxPage : 제일 마지막 페이지 수 (총 페이지 수) 
		 * 
		 * listCount, boardLimit에 영향을 받음 
		 * 
		 * ex) 게시글이 10개 단위씩 보여진다는 가정하에 
		 * 
		 * 		listCount       boardLimit          maxPage
		 * 		  100.0 			10	 => 10.0	  10
		 * 		  101.0				10   => 10.1	  11 
		 * 		  105				10				  11
		 * 		  107				10				  11 
		 * 		  110 				10 				  11 
		 * 둘중에 하나 실수형으로 바꾸고 소수점 첫번째자리에서 올림처리 해주기 그럼 maxPage구해짐 
		 * 
		 * ex) 게시글이 5개 단위씩 보여진다는 가정하에 
		 * 		  100 				5				  20
		 * 		  101				5				  21 
		 * 		  105				5				  21 
		 * 		  106				5				  22 
		 * 
		 * 	   (실수형)총게시글갯수 / boardLimit => 올림처리 
		 */
		maxPage = (int)Math.ceil((double)listCount / boardLimit );
		
		/*
		 * * startPage : 페이징바의 시작수 
		 * 
		 * pageLimit, currentPage에 영향을 받음 
		 * 
		 * ex) 페이징바의 목록이 10개단위(pageLimit)씩이라는 가정하에 
		 * 		startPage : 1, 11, 21, 31, ,....
		 * 					=> n * pageLimit + 1 
		 * 
		 * currentPage startPage
		 *     1          1    => 0 * pageLimit + 1  => n=0 
		 *     5  		  1    => 0 * pageLimit + 1  => n=0
		 *     10		  1    => 0 * pageLimit + 1  => n=0 
		 *     
		 *     11         11   => 1 * pageLimit + 1  => n=1 
		 *     15         11   => 1 * pageLimit + 1  => n=1 
		 *     
		 *    1 ~ 10           => n=0
		 *   11 ~ 20           => n=1
		 *   21 ~ 30           => n=2
		 *   
		 *   	(currentPage-1) / pageLimit
		 *   	0 ~ 9			/ 10	=> 0
		 *     10 ~ 19			/ 10 	=> 1
		 *     20 ~ 29			/ 10 	=> 2 
		 *     
		 */
		startPage = (currentPage-1) / pageLimit * pageLimit + 1; 
		
		/*
		 * * endPage : 페이징바의 끝 수 
		 * 
		 * startPage, pageLimit에 영향을 받음 (단, maxPage에도 영향받음)
		 * 
		 * ex) pageLimit : 10 가정하에 
		 * 
		 * startPage : 1  => endPage : 10
		 * startPage : 11 => endPage : 20
		 * startPAge : 21 => endPage : 30 
		 */
		endPage = startPage + pageLimit - 1;
		
		// startPage가 11이면 endPage는 20으로 됨 (근데 maxPage가 고작 13까지 밖에 안되면?)
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		// com.br.common.model.vo.PageInfo 
		
		// * 페이징바를 만들 때 필요한 객체 
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		
		// * 현재 요청한 페이지(currentPage)에 보여질 게시글 리스트 조회해야됨 (boardLimit수만큼조회) 
		ArrayList<Notice> list = new AdminNoticeService().selectNoticeList(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/notice/notice.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
