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

@WebServlet("/adProUpdate.do")
public class AdminProductUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminProductUpdateController() {
        super();
    }

    /* [상품관리 - 상품조회]
     * 상품 수정 기능
     * 작성자 김지애
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 상품 수정 시 기존에 등록했던 데이터가 들어있어야함
		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 10 * 1024 * 1024;
			String savePath = request.getSession().getServletContext().getRealPath("/resources/admin_product_upfiles/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
		
			// db에 sql문 실행 : product 테이블에 update시 필요한 데이터 
			String pName = multiRequest.getParameter("pname");
			String publishMonth = multiRequest.getParameter("publishmonth2");
			String publisher = multiRequest.getParameter("publisher");
			//int categoryNo = Integer.parseInt(multiRequest.getParameter("category"));
			String categoryNo = multiRequest.getParameter("categoryNo2");
			String pCode = multiRequest.getParameter("pcode");
			int price = Integer.parseInt(multiRequest.getParameter("price"));
			int stock = Integer.parseInt(multiRequest.getParameter("stock"));
			String deliFee = multiRequest.getParameter("deliFee2");
			//int deliFee = Integer.parseInt(multiRequest.getParameter("deliFee"));
			int point = Integer.parseInt(multiRequest.getParameter("point"));
			//double point = Double.parseDouble(multiRequest.getParameter("point2"));
			
			Product p = new Product();
			p.setpName(pName);
			p.setPublishMonth2(publishMonth);
			p.setPublisher(publisher);
			p.setCategoryNo2(categoryNo);
			p.setpCode(pCode);
			p.setPrice(price);
			p.setpStock(stock);
			p.setDeliFee2(deliFee);
			p.setPoint(point);
			
			// 기존 이미지가 있는 경우 -> 기존 이미지 그대로 둠 / 수정함
			// 기존 이미지가 없는 경우 -> 이미지 새로 등록 / 등록 안함
			if(multiRequest.getOriginalFileName("url1") != null) {
				// 새로 넘어온 첨부파일이 있을 경우
				p.setImageUrl1("resources/admin_product_upfiles/" + multiRequest.getFilesystemName("url1"));

				if(multiRequest.getParameter("originFileNo") != null) {
					// 기존의 첨부파일이 있었을 경우 => update product (기존의첨부파일번호)
					p.setImageUrl1(multiRequest.getParameter("originFileNo"));
				}else {
					// 기존의 첨부파일이 없었을 경우 => insert product (현재 상품코드)
					p.setpCode(pCode);
				}
			}
			
			if(multiRequest.getOriginalFileName("url2") != null) {
				p.setImageUrl1("resources/admin_product_upfiles/" + multiRequest.getFilesystemName("url2"));

				if(multiRequest.getParameter("originFileNo") != null) {
					p.setImageUrl1(multiRequest.getParameter("originFileNo"));
				}else {
					p.setpCode(pCode);
				}
			}
			
			if(multiRequest.getOriginalFileName("url3") != null) {
				p.setImageUrl1("resources/admin_product_upfiles/" + multiRequest.getFilesystemName("url3"));

				if(multiRequest.getParameter("originFileNo") != null) {
					p.setImageUrl1(multiRequest.getParameter("originFileNo"));
				}else {
					p.setpCode(pCode);
				}
			}
			
			// 새로 넘어온 첨부파일이 없었다면 (false) p는 여전히 null
			int result = new AdminProductService().updateProduct(p);
			
			if(result > 0) {//성공 => 상품전체조회 페이지 응답
				response.sendRedirect(request.getContextPath() + "/adProList.do?cpage=1");
			}else {//에러페이지 보여줌
				request.getRequestDispatcher("views/admin_main/error/adminErrorPage.jsp").forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
