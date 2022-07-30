package com.leer.product.model.service;

import static com.leer.common.JDBCTemplate.*;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.common.model.vo.Attachment;
import com.leer.common.model.vo.PageInfo;
import com.leer.product.model.dao.AdminProductDao;
import com.leer.product.model.vo.Inquiry;
import com.leer.product.model.vo.Product;

public class AdminProductService {

	/* [제품관리 - 상품조회]
	 * 상품 전체 조회
	 * 작성자 김지애
	 */
	public ArrayList<Product> selectProductList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new AdminProductDao().selectProductList(conn, pi);
		
		close(conn);
		return list;
	}
	
	/* [제품관리 - 상품조회]
	 * 페이징 처리
	 * 작성자 김지애
	 */
	public int selectProductListCount() {
		Connection conn = getConnection();
		int listCount = new AdminProductDao().selectProductListCount(conn);
		close(conn);
		return listCount;
	}

	/* [제품관리 - 상품등록]
	 * 상품 등록 및 수정
	 * 작성자 김지애
	 */
	public int insertProduct(Product p, Attachment at) {
		Connection conn = getConnection();
		
		int result1 = new AdminProductDao().insertProduct(conn, p);
		
		int result2 = 1;
		
		if(at != null) {
			result2 = new AdminProductDao().insertAttachment(conn, at);
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result1 * result2;
	}
}
