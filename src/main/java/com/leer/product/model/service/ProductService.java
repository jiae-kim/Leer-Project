package com.leer.product.model.service;

import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.product.model.vo.Product;

public class ProductService {

	public ArrayList<Product> selectProductList(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = null;
		
		//close(conn);
		return list;
	}
}
