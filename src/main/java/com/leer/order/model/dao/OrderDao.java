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
import com.leer.order.model.vo.OrProduct;
import com.leer.order.model.vo.Order;

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
	
	public int insertOrder(Connection conn, Order o) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertOrder");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, o.getMemNo());
			pstmt.setInt(2, o.getOrPrice());
			pstmt.setDouble(3, o.getOrPoint());
			pstmt.setString(4, o.getTakeName());
			pstmt.setString(5,  o.getLocation());
			pstmt.setString(6, o.getPhone());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public String selectOrNo(Connection conn) {
		
		String orNo = "";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOrNo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				orNo = rset.getString("current");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return orNo;
	}
	
	
	public int insertOrProduct(Connection conn, OrProduct op) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertOrProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, op.getOrNo());
			pstmt.setString(2, op.getpCode());
			pstmt.setInt(3, op.getOrCycle());
			pstmt.setInt(4, op.getOrAmount());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int insertOutStock(Connection conn, Cart c) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertOutStock");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, c.getpCode());
			pstmt.setInt(2, c.getAmount());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;
	}
	
	public int updatePoint(Connection conn, int memNo, int finalPrice, int delPoint) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updatePoint");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, delPoint);
			pstmt.setInt(2, finalPrice);
			pstmt.setInt(3, memNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	

}
