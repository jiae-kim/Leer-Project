package com.leer.member.model.dao;

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
import com.leer.member.model.vo.Member;

public class AdminAjaxMemberDao {
	
	private Properties prop = new Properties();
	
	public AdminAjaxMemberDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminMemberDao.class.getResource("/db/sql/admin-member-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 관리자 회원리스트 조회 - 가나다순
	// 작성자 김은지
	public ArrayList<Member> selectMemberListGND(Connection conn, PageInfo pi){ 
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberListGND");
		
		try {
			pstmt = conn.prepareStatement(sql);

			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit()-1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery(); 
			
			while(rset.next()) {
				
				list.add(new Member(rset.getInt("mem_no"),
						rset.getString("mem_id"),
						rset.getString("nickname"),
						rset.getString("mem_name"),
						rset.getString("phone"),
						rset.getString("email"),
						rset.getString("address"),
						rset.getInt("point"),
						rset.getDate("enroll_date")));
				
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
