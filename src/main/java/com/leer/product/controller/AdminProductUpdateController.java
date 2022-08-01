package com.leer.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.product.model.service.AdminProductService;
import com.leer.product.model.vo.Product;

/**
 * Servlet implementation class AdminProductUpdateController
 */
@WebServlet("/adProUpdate.do")
public class AdminProductUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProductUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 상품 수정 시 기존에 작성했던 데이터가 들어있어야함
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		// 요청시 전달값
		String pName = request.getParameter("pName");
		String publishMonth = request.getParameter("publishMonth");
		String publisher = request.getParameter("publisher");
		int categoryNo = ((Product)session.getAttribute("categoryNo")).getCategoryNo();
		String pCode = request.getParameter("pCode");
		int price = ((Product)session.getAttribute("price")).getPrice();
		int stock = ((Product)session.getAttribute("stock")).getpStock();
		int deliFee = ((Product)session.getAttribute("deliFee")).getDeliFee();
		int point = ((Product)session.getAttribute("point")).getPoint();
		
		// service로 넘김
		Product p = new Product();
		p.setpName(pName);
		p.setPublishMonth2(publishMonth);
		p.setPublisher(publisher);
		p.setCategoryNo(categoryNo);
		p.setpCode(pCode);
		p.setPrice(price);
		p.setpStock(stock);
		p.setDeliFee(deliFee);
		p.setPoint(point);
		
		int result = new AdminProductService().updateProduct(p);
		
		if(result > 0) {//성공 => 상품전체조회 페이지 응답
			response.sendRedirect(request.getContextPath() + "/adProList.do");
		}else {//에러페이지 보여줌
			request.getRequestDispatcher("views/admin_main/error/adminErrorPage.jsp").forward(request, response);
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
