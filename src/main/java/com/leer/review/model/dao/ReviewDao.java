package com.leer.review.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.leer.common.JDBCTemplate.*;
import com.leer.review.model.vo.Review;

public class ReviewDao {

	private Properties prop = new Properties();
	
	public ArrayList<Review> WriteReviewView(Connection conn, int memNo){
		
		ArrayList<Review> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("WriteReviewView");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add( new Review (
							rset.getString("pname"),
							rset.getInt("price"),
							rset.getString("image_url"),
							rset.getDate("or_date")					
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
	
public ArrayList<Review> WriteReviewHistory(Connection conn, int memNo){
		
		ArrayList<Review> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("WriteReviewHistory");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset = pstmt.executeQuery();
					
			
			while(rset.next()) {
				list.add( new Review (
							rset.getString("pname"),
							rset.getInt("reviewScope"),
							rset.getString("reviewConetent"),
							rset.getInt("price"),
							rset.getString("image_url"),
							rset.getDate("or_date")					
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
	
}
