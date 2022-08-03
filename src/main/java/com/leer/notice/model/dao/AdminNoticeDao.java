package com.leer.notice.model.dao;

import static com.leer.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.leer.notice.model.vo.Notice;

public class AdminNoticeDao {
	
	private Properties prop = new Properties();
	
	public AdminNoticeDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminNoticeDao.class.getResource("/db/sql/admin-notice-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 관리자 고객센터리스트조회
	// 작성자 김은지
	public ArrayList<Notice> selectNoticeList(Connection conn){ // , PageInfo pi
		ArrayList<Notice> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNoticeList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			/*
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit()-1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow); */
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Notice(rset.getInt("noti_no"),
									rset.getString("title"),
									rset.getDate("enroll_date"),
									rset.getInt("noti_views"),
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

}


























