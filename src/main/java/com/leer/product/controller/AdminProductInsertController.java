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

@WebServlet("/adProInsert.do")
public class AdminProductInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminProductInsertController() {
        super();
    }

    /* [상품관리 - 상품조회]
     * 상품 등록 기능
     * 작성자 김지애
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		// 첨부파일
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 10 * 1024 * 1024;
			
			String savePath = session.getServletContext().getRealPath("/resources/admin_product_upfiles/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			// PRODUCT 테이블에 INSERT : 상품명, 출간일, 발행사, 카테고리, 상품코드, 판매가, 재고, 배송비, 적립금
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
			p.setPoint2(point);
			
			// ATTACHMENT 테이블에 사진3개 INSERT
			if(multiRequest.getOriginalFileName("url1") != null) {
				p.setImageUrl1("resources/admin_product_upfiles/" + multiRequest.getFilesystemName("url1"));
			}
			
			if(multiRequest.getOriginalFileName("url2") != null) {
				p.setImageUrl2("resources/admin_product_upfiles/" + multiRequest.getFilesystemName("url2"));
			}
			
			if(multiRequest.getOriginalFileName("url3") != null) {
				p.setImageUrlS("resources/admin_product_upfiles/" + multiRequest.getFilesystemName("url3"));
			}

			int result = new AdminProductService().insertProduct(p);
			
			if(result > 0) {// 성공 : 상품전체조회 페이지
				response.sendRedirect(request.getContextPath() + "/adProList.do?cpage=1");
			}else {// 실패 : 에러페이지
				request.getRequestDispatcher("views/admin_main/error/adminErrorPage.jsp").forward(request, response);
			}
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
