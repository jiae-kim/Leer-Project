package com.leer.terms.model.dao;

import static com.leer.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.leer.common.model.vo.Category2;
import com.leer.common.model.vo.PageInfo;
import com.leer.terms.model.vo.Terms;

public class AdminTermsDao {
	
	private Properties prop = new Properties();
	
	public AdminTermsDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminTermsDao.class.getResource("/db/sql/admin-terms-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 관리자 이용약관리스트 조회
	// 작성자 김은지
	public ArrayList<Terms> selectTermsList(Connection conn, PageInfo pi){
		ArrayList<Terms> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectTermsList");
		
		try {
			pstmt = conn.prepareStatement(sql);

			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit()-1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Terms(rset.getInt("trm_no"),
								   rset.getString("trm_class"),
								   rset.getString("trm_title"),
								   rset.getString("trm_remarks"),
								   rset.getDate("enroll_date"),
								   rset.getDate("modify_date"),
								   rset.getString("mem_id")));
				
			}
		} catch (SQLException e) {
			e.printStackTrace(); 
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	// 관리자 이용약관조회리스트 페이징처리
	// 작성자 김은지
	public int selectTermsListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectTermsListCount");
		
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
	
	// 관리자 이용약관상세페이지
	// 작성자 김은지
	public Terms termsDetailList(Connection conn, int trmNo) {
		Terms t = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("termsDetailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, trmNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				t = new Terms(rset.getString("trm_class"),
							  rset.getString("trm_title"),
							  rset.getString("content"),
							  rset.getString("trm_remarks"),
							  rset.getString("mem_id")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return t;
	}
	
	// 관리자 이용약관등록 카테고리조회
	// 작성자 김은지	
	public ArrayList<Category2> selectTermsCategoryList(Connection conn){
		ArrayList<Category2> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectTermsCategoryList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Category2(rset.getInt("category_no"),
									   rset.getString("category_name")
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

}


























