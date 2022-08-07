package com.leer.mtm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.mtm.model.service.MtmService;
import com.leer.mtm.model.vo.Mtm;

/**
 * Servlet implementation class MtmDetailViewController
 */
@WebServlet("/mtmDetail.go")
public class MtmDetailViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MtmDetailViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int mtmNo = Integer.parseInt(request.getParameter("no"));
		
		Mtm m = new MtmService().selectDetail(mtmNo);
		
		
		request.setAttribute("m", m);
		request.setAttribute("mtmNo", mtmNo);
		request.getRequestDispatcher("/views/mtm/mtmDetail.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
