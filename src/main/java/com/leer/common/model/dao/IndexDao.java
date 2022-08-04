package com.leer.common.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.leer.common.JDBCTemplate.*;

import com.leer.product.model.vo.Product;

public class IndexDao {
	
private Properties prop = new Properties();
	
	public IndexDao() {
		try {
			prop.loadFromXML(new FileInputStream(IndexDao.class.getResource("/db/sql/index-mapper.xml").getPath()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	
	public ArrayList<Product> selectNew(Connection conn, int categoryNo){
		
		ArrayList<Product> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectNew");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, categoryNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getString("p_code"),
									 rset.getInt("category_no"),
									 rset.getString("p_name"),
									 rset.getInt("price"),
									 rset.getDate("publish_month"),
									 rset.getString("image_url1")
									));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
}
