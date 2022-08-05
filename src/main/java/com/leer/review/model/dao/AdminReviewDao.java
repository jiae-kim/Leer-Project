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

import com.leer.common.model.vo.PageInfo;
import com.leer.product.model.dao.ProductDao;
import com.leer.review.model.vo.Review;

public class AdminReviewDao {

	private Properties prop = new Properties();
	
	public AdminReviewDao() {
		try {
			prop.loadFromXML(new FileInputStream(ProductDao.class.getResource("/db/sql/admin-product-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/* [상품관리 - 상품리뷰]
	 * 상품리뷰 전체조회
	 * 작성자 김지애
	 */
	public ArrayList<Review> selectProductReviewList(Connection conn, PageInfo pi) {
		ArrayList<Review> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductReviewList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit()-1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery(); 
			
			while(rset.next()) {
				list.add(new Review(rset.getInt("review_no"),
									rset.getString("mem_id"),
									rset.getString("p_name"),
									rset.getString("p_code"),
									rset.getString("review_content"),
									rset.getInt("review_scope"),
									rset.getDate("enroll_date"),
									rset.getString("write_yn")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/* [상품관리 - 상품리뷰]
	 * 상품리뷰 전체조회 페이지 : 페이징 처리
	 * 작성자 김지애
	 */
	public int selectProductReviewListCount(Connection conn) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductReviewListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("COUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}
	
	
	
	
}
