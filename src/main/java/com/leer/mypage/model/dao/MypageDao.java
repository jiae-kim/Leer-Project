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

import com.leer.mypage.model.vo.Cart;

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
			pstmt.setInt(1, 3); // pstmt.setInt(1, c.getMemNo())
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
		//String sql = prop.getProperty()
		return list;
		
	}

}
