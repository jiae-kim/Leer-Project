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

import com.leer.terms.model.vo.Terms;

public class AdminTermsDao {
	
	private Properties prop = new Properties();
	
	public AdminTermsDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminTermsDao.class.getResource("/db/sql/admin-terms-mapper.xml").getPath()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// 관리자 이용약관리스트 조회
	// 작성자 김은지
	public ArrayList<Terms> selectTermsList(Connection conn){
		ArrayList<Terms> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectTermsList");
		
		try {
			pstmt = conn.prepareStatement(sql);
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
			// TODO Auto-generated catch block
			e.printStackTrace(); 
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

}


























