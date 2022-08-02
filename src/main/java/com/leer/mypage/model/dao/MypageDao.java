package com.leer.mypage.model.dao;

import static com.leer.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.leer.member.model.vo.Member;
import com.leer.mypage.model.vo.Cart;
import com.leer.mypage.model.vo.Point;

public class MypageDao {
	
	private Properties prop = new Properties();
	
	public MypageDao() {
		
		String filePath = MypageDao.class.getResource("/db/sql/mypage-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public int insertProductCart(Connection conn, Cart c) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertProductCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, c.getMemNo());
			pstmt.setString(2, c.getpCode());
			pstmt.setInt(3, c.getAmount());
			pstmt.setInt(4, c.getOrCycle());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
	
	public ArrayList<Cart> selectCartList(Connection conn, int memNo) {
		
		ArrayList<Cart> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCartList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Cart( rset.getInt("cart_no"),
								   rset.getInt("mem_no"),
								   rset.getString("p_code"),
								   rset.getString("image_url1"),
								   rset.getInt("amount"),
								   rset.getInt("or_cycle"),
								   rset.getDate("cart_date"),
								   rset.getString("p_name"),
								   rset.getInt("price"),
								   rset.getInt("deli_fee")
									));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
			
		}
		return list;
	}
	
	public int deleteCart(Connection conn, String cartNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cartNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
	
	public ArrayList<Member> selectOrderDev(Connection conn,int memNo){
		
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOrderDev");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(rset.getString("orNo")));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	
	
	public ArrayList<Member> selectOrderDevDetail(Connection conn,int memNo){
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOrderDevDetail");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset= pstmt.executeQuery();
		
			
			while(rset.next()) {
				list.add(new Member( 
								   rset.getString("orNo"),
								   rset.getString("image_url"),
								   rset.getString("p_name"),
								   rset.getInt("price"),
								   rset.getDate("or_date"),
								   rset.getString("p_code")
									));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	

	public ArrayList<Point> PointList(Connection conn,int memNo){
		ArrayList<Point> list = new ArrayList<>();
		PreparedStatement pstmt=null;
		ResultSet rset = null;
		String sql = prop.getProperty("PointList");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,memNo);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Point(
							rset.getInt("pointNo"),
							rset.getInt("point"),
							rset.getDate("date"),
							rset.getString("history")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public ArrayList<Member> OrderCancleView(Connection conn, int memNo){
		
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt=null;
		ResultSet rset = null;
		String sql = prop.getProperty("OrderCancleView");
		String yn="N";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,memNo);
			pstmt.setString(2,yn);
			rset=pstmt.executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public Member RefundController(Connection conn,int memNo,String p_code,String orNo){
		
		Member m = null;
		PreparedStatement pstmt=null;
		ResultSet rset = null;
		String sql = prop.getProperty("RefundController");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			pstmt.setString(2, orNo);
			pstmt.setString(3, p_code);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(
							rset.getString("p_name"),
							rset.getString("image_url"),
							rset.getInt("price"),
							rset.getDate("or_date"),
							rset.getString("or_no")
						);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}

}
