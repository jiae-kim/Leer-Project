package com.leer.mtm.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.leer.mtm.model.service.MtmService;
import com.leer.mtm.model.vo.Mtm;

/**
 * Servlet implementation class MtmSelectController
 */
@WebServlet("/select.mtm")
public class MtmSelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MtmSelectController() {
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
		
		RequestDispatcher view = request.getRequestDispatcher("/views/mtm/mtmUpdateForm.jsp");
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
