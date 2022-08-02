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

import com.leer.common.model.vo.PageInfo;
import com.leer.community.model.vo.ComuNotice;

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
	public ArrayList<ComuNotice> selectComuNotiList(Connection conn){ //, PageInfo pi
		ArrayList<ComuNotice> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectComuNotiList");
		
		try {
			pstmt = conn.prepareStatement(sql);
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
	
}














