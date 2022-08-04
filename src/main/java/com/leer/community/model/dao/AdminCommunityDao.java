package com.leer.community.model.dao;

import static com.leer.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.leer.common.model.vo.Attachment;
import com.leer.common.model.vo.Category2;
import com.leer.common.model.vo.PageInfo;
import com.leer.community.model.vo.ComuBoard;
import com.leer.community.model.vo.ComuNotice;
import com.leer.community.model.vo.Report;

public class AdminCommunityDao {
	
	private Properties prop = new Properties();
	
	public AdminCommunityDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminCommunityDao.class.getResource("/db/sql/admin-community-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 관리자 커뮤니티공지리스트 조회
	// 작성자 김은지
	public ArrayList<ComuNotice> selectComuNotiList(Connection conn, PageInfo pi){
		ArrayList<ComuNotice> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectComuNotiList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit()-1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new ComuNotice(rset.getInt("noti_no"),
										rset.getString("title"),
										rset.getDate("enroll_date"),
										rset.getDate("modify_date"),
										rset.getString("mem_id")
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
	
	// 관리자 커뮤니티공지리스트 페이징처리
	// 작성자 김은지	
	public int selectComuNotiListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectComuNotiListCount");
		
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
	
	// 관리자 커뮤니티공지 상세페이지
	// 작성자 김은지
	public ComuNotice comuNotiDetailList(Connection conn, int notiNo) {
		ComuNotice c = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("comuNotiDetailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, notiNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				c = new ComuNotice(rset.getString("title"),
								   rset.getString("content"),
								   rset.getString("mem_id")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return c;
	}
	
	// 관리자 공지사항/커뮤공지 등록
	// 작성자 김은지	
	public int insertNotice(Connection conn, ComuNotice c) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertNotice");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, c.getMemNo());
			pstmt.setString(2, c.getTitle());
			pstmt.setString(3, c.getContent());
			pstmt.setString(4, c.getNotiType());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	// 관리자 공지사항/커뮤공지사항 첨부파일 등록
	// 작성자 김은지	
	public int insertAttachment(Connection conn, Attachment at) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, at.getRefCode());
			pstmt.setInt(2, at.getRefBno());
			pstmt.setString(3, at.getOriginName());
			pstmt.setString(4, at.getChangeName());
			pstmt.setString(5, at.getFilePath());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	// 관리자 공지사항등록페이지 카테고리조회
	// 작성자 김은지
	public ArrayList<Category2> selectCategoryList(Connection conn){
		ArrayList<Category2> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCategoryList");
		
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
	
	// 관리자 커뮤게시물리스트 조회
	// 작성자 김은지	
	public ArrayList<ComuBoard> selectBoardList(Connection conn, PageInfo pi){  
		ArrayList<ComuBoard> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectBoardList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit()-1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new ComuBoard(rset.getInt("comu_no"),
									   rset.getString("title"),
    								   rset.getDate("enroll_date"),
    								   rset.getInt("view_count"),
    								   rset.getString("mem_id"),
									   rset.getString("report_yn")
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
	
	// 관리자 커뮤게시물리스트 페이징처리
	// 작성자 김은지	
	public int selectBoardListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBoardListCount");		
		
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
	
	// 관리자 커뮤게시물 상세페이지
	// 작성자 김은지
	public ComuBoard boardDetailList(Connection conn, int comuNo) {
		ComuBoard cb = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("boardDetailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comuNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				cb = new ComuBoard(rset.getString("title"),
								   rset.getString("content"),
								   rset.getDate("enroll_date"),
								   rset.getString("mem_id"),
								   rset.getString("category_name")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return cb;
	}
		
	// 관리자 신고리스트 조회
	// 작성자 김은지
	public ArrayList<Report> selectReportList(Connection conn, PageInfo pi){
		ArrayList<Report> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReportList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit()-1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Report(rset.getInt("report_no"),
									rset.getInt("mem_no"),
									rset.getString("report_class"),
									rset.getString("report_category"),
									rset.getInt("reported_no"),
									rset.getDate("report_date"),
									rset.getString("report_yn")
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
	
	// 관리자 신고리스트 페이징처리
	// 작성자 김은지
	public int selectReportListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectReportListCount");
		
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
	
	// 관리자 신고페이지 상세
	// 작성자 김은지
	public Report reportDetailList(Connection conn, int reportNo) {
		Report r = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("reportDetailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, reportNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				r = new Report(rset.getInt("reported_no"),
							   rset.getInt("mem_no"),
							   rset.getString("report_class"),
							   rset.getString("report_category"),
							   rset.getString("report_content")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return r;
	}
	
}































