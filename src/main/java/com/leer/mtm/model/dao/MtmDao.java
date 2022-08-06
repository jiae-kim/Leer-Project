package com.leer.mtm.model.dao;

import static com.leer.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.leer.common.model.vo.PageInfo;
import com.leer.mtm.model.vo.Mtm;

public class MtmDao {

	private Properties prop = new Properties();

	public MtmDao() {
		try {
			prop.loadFromXML(new FileInputStream(MtmDao.class.getResource("/db/sql/mtm-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public int selectMyListCount(Connection conn, int memNo){
		
		int listCount = 0;

		PreparedStatement pstmt = null;

		ResultSet rset = null;

		String sql = prop.getProperty("selectListCount");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);

			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}
	
	
	
	public ArrayList<Mtm> selectMyMtmList(Connection conn, PageInfo pi, int memNo){
		
		ArrayList<Mtm> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMyMtmList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, memNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Mtm(rset.getInt("mtm_no"),
								 rset.getString("mtm_title"),
								 rset.getString("mtm_content"),
								 rset.getDate("enroll_date"),
								 rset.getString("mtm_type"),
								 rset.getString("ans_yn")
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	public Mtm selectDetail(Connection conn, int mtmNo){
		
		Mtm m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mtmNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Mtm(rset.getString("mtm_title"),
						    rset.getString("mtm_content"),
						    rset.getDate("enroll_date"),
						    rset.getDate("ans_date"),
						    rset.getString("ans_content"),
						    rset.getString("mtm_type"),
						    rset.getString("ans_yn")
							);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}
	
	
	
	public int insertMtm(Connection conn, int memNo, String mtmTitle, String mtmContent, String mtmType) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMtm");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			pstmt.setString(2, mtmTitle);
			pstmt.setString(3, mtmContent);
			pstmt.setString(4, mtmType);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
	public int updateMtm(Connection conn, int mtmNo, String mtmType, String mtmTitle, String mtmContent) {
		
		int result = 0;

		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMtm");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mtmTitle);
			pstmt.setString(2, mtmContent);
			pstmt.setInt(3, mtmNo);
			System.out.println(mtmNo);
			
			System.out.println(result);
			result = pstmt.executeUpdate();
			System.out.println(result);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
}
