package com.leer.common.model.service;

import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.common.model.dao.IndexDao;
import com.leer.product.model.vo.Product;

import static com.leer.common.JDBCTemplate.*;

public class IndexService {
	
	
	public ArrayList<Product> selectNew(int categoryNo){
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new IndexDao().selectNew(conn, categoryNo);
		
		close(conn);
		
		return list;
	}
	
	
	
	

}
