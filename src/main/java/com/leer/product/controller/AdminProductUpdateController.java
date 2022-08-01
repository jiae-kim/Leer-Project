package com.leer.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.leer.common.MyFileRenamePolicy;
import com.leer.product.model.service.AdminProductService;
import com.leer.product.model.vo.Product;
import com.oreilly.servlet.MultipartRequest;

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
		
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 10 * 1024 * 1024;
			String savePath = request.getSession().getServletContext().getRealPath("/resources/admin_product_upfiles/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
		
			// db에 sql문 실행 : product 테이블에 update시 필요한 데이터 
			String pName = multiRequest.getParameter("pname");
			String publishMonth = multiRequest.getParameter("publishmonth2");
			String publisher = multiRequest.getParameter("publisher");
			int categoryNo = Integer.parseInt(multiRequest.getParameter("category"));
			String pCode = multiRequest.getParameter("pcode");
			int price = Integer.parseInt(multiRequest.getParameter("price"));
			int stock = Integer.parseInt(multiRequest.getParameter("stock"));
			int deliFee = Integer.parseInt(multiRequest.getParameter("deliFee"));
			double point = Double.parseDouble(multiRequest.getParameter("point"));
			
			Product p = new Product();
			p.setpName(pName);
			p.setPublishMonth2(publishMonth);
			p.setPublisher(publisher);
			p.setCategoryNo(categoryNo);
			p.setpCode(pCode);
			p.setPrice(price);
			p.setpStock(stock);
			p.setDeliFee(deliFee);
		
			// 첨부파일 3개
			if(multiRequest.getOriginalFileName("url1") != null) {
				p.setImageUrl1("resources/admin_product_upfiles/" + multiRequest.getFilesystemName("url1"));
			
				if(multiRequest.getParameter("originFileNo") != null) {
					
				}else {
					
				}
			}
		
			int result = new AdminProductService().updateProduct(p);
			
			if(result > 0) {//성공 => 상품전체조회 페이지 응답
				response.sendRedirect(request.getContextPath() + "/adProList.do?cpage=1");
			}else {//에러페이지 보여줌
				request.getRequestDispatcher("views/admin_main/error/adminErrorPage.jsp").forward(request, response);
			}
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
