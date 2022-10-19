package com.leer.product.model.service;

import static com.leer.common.JDBCTemplate.*;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.common.model.vo.Attachment;
import com.leer.common.model.vo.Category;
import com.leer.common.model.vo.PageInfo;
import com.leer.product.model.dao.AdminProductDao;
import com.leer.product.model.vo.Inquiry;
import com.leer.product.model.vo.Product;
import com.leer.product.model.vo.ProductIo;

public class AdminProductService {

    /* [상품관리 - 상품조회]
     * 상품 전체조회 페이징 기능
     * 작성자 김지애
     */
	public ArrayList<Product> selectProductList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Product> list = new AdminProductDao().selectProductList(conn, pi);
		close(conn);
		return list;
	}
	
	/* [제품관리 - 상품조회]
	 * 상품 전체조회 페이지 : 페이징 처리
	 * 작성자 김지애
	 */
	public int selectProductListCount() {
		Connection conn = getConnection();
		int listCount = new AdminProductDao().selectProductListCount(conn);
		close(conn);
		return listCount;
	}
	
	/* [상품관리 - 상품등록]
     * 상품 등록 페이지 요청 기능
     * 작성자 김지애
     */
	public ArrayList<Category> selectCategoryList() {
		Connection conn = getConnection();
		ArrayList<Category> list = new AdminProductDao().selectCategoryList(conn);
		close(conn);
		return list;
	}
	
	/* [상품관리 - 상품조회]
     * 상품 등록 기능
     * 작성자 김지애
     */
	public int insertProduct(Product p) {
		Connection conn = getConnection();
		int result = new AdminProductDao().insertProduct(conn, p);
		
		if(result > 0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}

	/* [상품관리 - 상품조회]
     * 상품 수정 페이지 요청
     * 작성자 김지애
     */
	public Product selectProduct(String pCode) {
		Connection conn = getConnection();
		Product p = new AdminProductDao().selectProduct(conn, pCode);
		close(conn);
		return p;
	}

	public Attachment selectAttachment(String pCode) {
		Connection conn = getConnection();
		Attachment at = new AdminProductDao().selectAttachment(conn, pCode);
		close(conn);
		return at;
	}
	
	/* [상품관리 - 상품조회]
     * 상품 수정 기능
     * 작성자 김지애
     */
	public int updateProduct(Product p) {
		Connection conn = getConnection();
		int result = new AdminProductDao().updateProduct(conn, p);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/* [상품관리 - 상품조회]
     * 상품 삭제 기능
     * 작성자 김지애
     */
	public int deleteProduct(String pCode) {
		Connection conn = getConnection();
		int result = new AdminProductDao().deleteProduct(conn, pCode);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	/* [주문및배송 - 입출고관리]
     * 상품 재고 전체조회 페이지 : 페이징
     * 작성자 김지애
     */
	public ArrayList<ProductIo> selectProductIoList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<ProductIo> list = new AdminProductDao().selectProductIoList(conn, pi);
		close(conn);
		return list;
	}

	/* [상품및결제관리 - 입출고관리]
	 * 재고 전체조회 페이지 : 페이징 처리
	 * 작성자 김지애
	 */
	public int selectProductIoListCount() {
		Connection conn = getConnection();
		int listCount = new AdminProductDao().selectProductListIoCount(conn);
		close(conn);
		return listCount;
	}

	/* [상품관리 - 상품문의]
     * 상품문의 전체조회 페이징 기능
     * 작성자 김지애
     */
	public ArrayList<Inquiry> selectProductIqList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Inquiry> list = new AdminProductDao().selectProductIqList(conn, pi);
		close(conn);
		return list;
	}

	/* [상품관리 - 상품문의]
	 * 상품문의 전체조회 페이지 : 페이징 처리
	 * 작성자 김지애
	 */
	public int selectProductIqListCount() {
		Connection conn = getConnection();
		int listCount = new AdminProductDao().selectProductIqListCount(conn);
		close(conn);
		return listCount;
	}
	
	/* [주문및배송 - 입출고관리]
	 * 상품 재고 전체조회 페이지 : 입고등록
	 * 작성자 김지애
	 */
	public int StockInsertPage(ProductIo pi) {
		Connection conn = getConnection();
		int result = new AdminProductDao().StockInsertPage(conn, pi);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	/* [상품관리 - 상품문의]
     * 상품문의 상세조회 기능
     * 작성자 김지애
     */
	public Inquiry InquiryDetailList(int qNo) {
		Connection conn = getConnection();
		Inquiry iq = new AdminProductDao().InquiryDetailList(conn, qNo);
		close(conn);
		return iq;
	}

	
}
