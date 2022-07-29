package com.leer.product.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.product.model.dao.AdminProductDao;
import com.leer.product.model.vo.Inquiry;
import com.leer.product.model.vo.Product;

public class AdminProductService {

	/* [제품관리 - 상품조회]
	 * 상품 전체 조회
	 * 작성자 김지애
	 */
	public ArrayList<Product> selectProductList(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new AdminProductDao().selectProductList(conn);
		
		close(conn);
		return list;
	}
	
	
}
