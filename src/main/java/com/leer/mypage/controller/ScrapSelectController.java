package com.leer.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.member.model.vo.Member;
import com.leer.mypage.model.service.MypageService;
import com.leer.product.model.vo.Product;

/**
 * Servlet implementation class ScrapSelectController
 */
@WebServlet("/selectScrap.me")
public class ScrapSelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScrapSelectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
	    Member loginUser = (Member)session.getAttribute("loginUser");
	  
	    if(loginUser == null) {
	    	
	        response.sendRedirect(request.getContextPath() + "/login.me");
	        
	    }else {   
		  
	    	int memNo = loginUser.getMemNo();
	    	
	    	ArrayList<Product> list = new MypageService().selectScrapList(memNo);
	    	
	    	System.out.println(list);
	    	
	    	request.setAttribute("list", list);	  
	    	request.getRequestDispatcher("views/mypage/scrapList.jsp").forward(request, response);
		  
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
