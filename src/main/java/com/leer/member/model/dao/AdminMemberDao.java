package com.leer.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import static com.leer.common.JDBCTemplate.*;

import com.leer.member.model.vo.Member;

public class AdminMemberDao {
	
	private Properties prop = new Properties();
	
	public AdminMemberDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminMemberDao.class.getResource("/db/sql/admin-member-mapper.xml").getPath()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
	// 관리자 회원조회 Dao
	// 작성자 김은지
	public ArrayList<Member> selectMemberList(Connection conn){
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberList");
		
		try {
			pstmt = conn.prepareStatement(sql);
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	// 관리자 회원 상세조회
	// 작성자 김은지
	public Member memberDatailList(Connection conn, int memNo) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("memberDatailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
						   	   rset.getString("mem_id"),
						   	   rset.getString("mem_name"),
						   	   rset.getString("phone"),
						   	   rset.getString("address"),
						   	   rset.getInt("point"),
						   	   rset.getDate("enroll_date")
						);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}

}












