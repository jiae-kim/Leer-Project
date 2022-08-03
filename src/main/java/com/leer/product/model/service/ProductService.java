package com.leer.product.model.service;

import static com.leer.common.JDBCTemplate.*;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.product.model.dao.ProductDao;
import com.leer.product.model.vo.Inquiry;
import com.leer.product.model.vo.Product;

public class ProductService {

	public ArrayList<Product> selectProductList(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectProductList(conn);
		
		close(conn);
		return list;
	}
	
	public ArrayList<Product> selectProductListOld(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectProductListOld(conn);
		
		close(conn);
		return list;
	}
	
	public Product selectProductDetail(String pCode) {
		Connection conn = getConnection();
		
		Product p = new ProductDao().selectProductDetail(conn, pCode);
		
		close(conn);
		return p;
	}
	
	public ArrayList<Inquiry> selectInquiryList(String pCode){
		Connection conn = getConnection();
		
		ArrayList<Inquiry> list = new ProductDao().selectInquiryList(conn, pCode);
		
		close(conn);
		return list;
	}
	
	
	
	public int scrapCheck(String pCode, int memNo) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().scrapCheck(conn, pCode, memNo);
		
		close(conn);
		
		return result;
	}
	
	
	public int insertScrap(String pCode, int memNo) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().insertScrap(conn, pCode, memNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	
	public int deleteScrap(String pCode, int memNo) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().deleteScrap(conn, pCode, memNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
}
