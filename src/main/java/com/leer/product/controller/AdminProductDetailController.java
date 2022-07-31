package com.leer.product.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.leer.common.MyFileRenamePolicy;
import com.leer.common.model.vo.Attachment;
import com.leer.product.model.service.AdminProductService;
import com.leer.product.model.service.ProductService;
import com.leer.product.model.vo.Inquiry;
import com.leer.product.model.vo.Product;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class ProductDetailController
 */
@WebServlet("/adProEnroll.do")
public class AdminProductDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProductDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		// 첨부파일
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 10 * 1024 * 1024;
			
			String savePath = session.getServletContext().getRealPath("/resources/admin_product_upfiles/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			// PRODUCT 테이블에 데이터 INSERT
			String pName = request.getParameter("pName");
			String publishMonth = request.getParameter("publishMonth");
			String publisher = request.getParameter("publisher");
			int categoryNo = ((Product)session.getAttribute("categoryNo")).getCategoryNo();
			String pCode = request.getParameter("pCode");
			int price = ((Product)session.getAttribute("price")).getPrice();
			int stock = ((Product)session.getAttribute("stock")).getpStock();
			int deliFee = ((Product)session.getAttribute("deliFee")).getDeliFee();
			int point = ((Product)session.getAttribute("point")).getPoint();
			
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
			
			// ATTACHMENT 테이블에 사진3개 INSERT
			Attachment at = null;
			
			if(multiRequest.getOriginalFileName("admin_product_upfiles") != null) {
				at = new Attachment();
				at.setOriginName(multiRequest.getOriginalFileName("admin_product_upfiles"));
				at.setChangeName(multiRequest.getFilesystemName("admin_product_upfiles"));
				at.setFilePath("resources/admin_product_upfiles/");
			}
			
			int result = new AdminProductService().insertProduct(p, at);
			
			if(result > 0) {
				response.sendRedirect(request.getContextPath() + "/adProList.do");
			}else {
				if(at != null) {
					new File(savePath + at.getChangeName()).delete();
				}
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
