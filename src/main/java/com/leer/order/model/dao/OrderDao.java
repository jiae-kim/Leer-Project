package com.leer.order.model.dao;

import static com.leer.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.leer.mypage.model.vo.Cart;

public class OrderDao {
	
	private Properties prop = new Properties();
	
	public OrderDao() {
		
		String filePath = OrderDao.class.getResource("/db/sql/order-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public Cart selectOrderList(Connection conn, String chk){
			
			Cart c = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectOrderList");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, chk);
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					c = new Cart(rset.getInt("cart_no"),
								 rset.getInt("mem_no"),
								 rset.getString("p_code"),
								 rset.getString("image_url1"),
								 rset.getInt("amount"),
								 rset.getInt("or_cycle"),
								 rset.getString("p_name"),
								 rset.getInt("price"),
								 rset.getInt("deli_fee")
						
							     
								);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return c;
	}
	
	
	
	public int selectPoint(Connection conn, int memNo) {
		
		int point = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPoint");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				point = rset.getInt("point");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return point;
	}
			
	
	
	

}
