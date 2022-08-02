package com.leer.review.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.leer.common.JDBCTemplate.*;

import com.leer.member.model.vo.Member;
import com.leer.mypage.model.dao.MypageDao;
import com.leer.review.model.vo.Review;

public class ReviewDao {

	private Properties prop = new Properties();
	
public ReviewDao() {
		
		String filePath = ReviewDao.class.getResource("/db/sql/review-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
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
							rset.getString("p_name"),
							rset.getInt("price"),
							rset.getString("image_url1"),
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
							rset.getString("p_name"),
							rset.getInt("review_Scope"),
							rset.getString("review_Content"),
							rset.getInt("price"),
							rset.getString("image_url1"),
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

	public Review WriteReview(Connection conn, int memNo, String orNo, String p_code) {
		
		Review r = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("WriteReview");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			pstmt.setString(2, orNo);
			pstmt.setString(3, p_code);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				r = new Review(
							rset.getString("image_url1"),
							rset.getString("p_Name"),
							rset.getDate("or_date"),
							rset.getInt("price")
						);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return r;
	}
	
	public int WriteReviewComplete(Connection conn,int memNo,String pname,int reviewscope,String content) {
		int result = 0;
		
		
		
		return result;
	}
	
}
