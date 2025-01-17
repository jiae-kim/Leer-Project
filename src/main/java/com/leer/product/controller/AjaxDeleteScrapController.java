package com.leer.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.member.model.vo.Member;
import com.leer.product.model.service.ProductService;

/**
 * Servlet implementation class AjaxDeleteScrapController
 */
@WebServlet("/deleteScrap.pd")
public class AjaxDeleteScrapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxDeleteScrapController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

	     String pCode = request.getParameter("pCode");
	      
	     HttpSession session = request.getSession();
	     Member loginUser = (Member)session.getAttribute("loginUser");
	     int memNo = loginUser.getMemNo();
	     
	     int result = new ProductService().deleteScrap(pCode, memNo);
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
