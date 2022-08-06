package com.leer.faq.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.leer.common.JDBCTemplate.*;

import com.leer.common.model.vo.Category2;
import com.leer.common.model.vo.FaqCategory;
import com.leer.common.model.vo.PageInfo;
import com.leer.faq.model.vo.Faq;
import com.leer.product.model.dao.ProductDao;

public class AdminFaqDao {

	private Properties prop = new Properties();
	
	public AdminFaqDao() {
		try {
			prop.loadFromXML(new FileInputStream(ProductDao.class.getResource("/db/sql/admin-notice-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/* [고객센터 - FAQ]
	 * FAQ 전체조회
	 * 작성자 김지애
	 */
	public ArrayList<Faq> selectFaqList(Connection conn, PageInfo pi) {
		ArrayList<Faq> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectFaqList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit()-1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery(); 
			
			while(rset.next()) {
				list.add(new Faq(rset.getInt("faq_no"),
								 rset.getString("category_name"),
								 rset.getString("faq_title"),
								 rset.getDate("enroll_date"),
								 rset.getInt("count")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/* [고객센터 - FAQ]
	 * FAQ 전체조회 페이지 : 페이징 처리
	 * 작성자 김지애
	 */
	public int selectFaqListCount(Connection conn) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectFaqListCount");
		
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

	/* [고객센터 - FAQ]
	 * FAQ 상세조회 페이지 : 조회수 증가
	 * 작성자 김지애
	 */
	public int increaseCount(Connection conn, int faqNo) {
		// update문 => 처리된 행수 반환
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, faqNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/* [고객센터 - FAQ]
	 * FAQ 상세조회 페이지
	 * 작성자 김지애
	 */
	public Faq selectFaq(Connection conn, int faqNo) {
		Faq f = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectFaq");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, faqNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				f = new Faq(rset.getInt("faq_no"),
							rset.getString("faq_category"),
							rset.getString("mem_id"),
							rset.getDate("enroll_date"),
							rset.getDate("modify_date"),
							rset.getInt("count"),
							rset.getString("faq_title"),
							rset.getString("faq_content"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return f;
	}

	/* [고객센터 - FAQ]
	 * FAQ 등록 : 카테고리 조회
	 * 작성자 김지애
	 */
	public ArrayList<FaqCategory> selectFaqCategoryList(Connection conn) {
		ArrayList<FaqCategory> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectFaqCategoryList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new FaqCategory(rset.getInt("category_no"),
									     rset.getString("category_name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	/* [고객센터 - FAQ]
	 * FAQ 등록
	 * 작성자 김지애
	 */
	public int FaqInsertPage(Connection conn, Faq f) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("FaqInsertPage");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, f.getCategoryNo());
			pstmt.setString(2, f.getFaqTitle());
			pstmt.setString(3, f.getFaqContent());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	
}
