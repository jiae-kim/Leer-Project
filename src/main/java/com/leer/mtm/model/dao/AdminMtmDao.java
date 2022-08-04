package com.leer.mtm.model.dao;

import static com.leer.common.JDBCTemplate.close;

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
import com.leer.terms.model.vo.Terms;

public class AdminMtmDao {
	
	private Properties prop = new Properties();
	
	public AdminMtmDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminMtmDao.class.getResource("/db/sql/admin-notice-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 관리자 1:1문의리스트 조회
	// 작성자 김은지
	public ArrayList<Mtm> selectMtmList(Connection conn, PageInfo pi){
		ArrayList<Mtm> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMtmList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit()-1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Mtm(rset.getInt("mtm_no"),
								 rset.getInt("mem_no"),
								 rset.getInt("mem_no2"),
								 rset.getString("mtm_title"),
								 rset.getDate("enroll_date"),
								 rset.getString("mtm_type"),
								 rset.getString("ans_yn")
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
	
	// 관리자 1:1문의리스트 조회 페이징처리
	// 작성자 김은지
	public int selectMtmListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMtmListCount");
		
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





















