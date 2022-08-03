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

public class MemberDao {
	
	private Properties prop = new Properties();
	
	public MemberDao() {
		try {
			prop.loadFromXML(new FileInputStream(MemberDao.class.getResource("/db/sql/member-mapper.xml").getPath()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	
	public Member loginMember(Connection conn, String memId, String memPwd) {
		
		
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			pstmt.setString(2, memPwd);
			
			rset = pstmt.executeQuery();
			
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no")
							 , rset.getString("mem_id")
							 , rset.getString("mem_pwd")
							 , rset.getString("nickname")
							 , rset.getString("mem_name")
							 , rset.getString("mem_birth")
							 , rset.getString("phone")
							 , rset.getString("email")
							 , rset.getString("address")
							 , rset.getString("category_no")
							 , rset.getInt("point")
							 , rset.getString("mem_status")
							 , rset.getString("admin")
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
		
	
	
	public int insertMember(Connection conn, Member m) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemId());
			pstmt.setString(2, m.getMemPwd());
			pstmt.setString(3, m.getNickname());
			pstmt.setString(4, m.getMemName());
			pstmt.setString(5, m.getMemBirth());
			pstmt.setString(6, m.getPhone());
			pstmt.setString(7, m.getEmail());
			pstmt.setString(8, m.getAddress());
			pstmt.setString(9, m.getCategoryNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
	public int updateMember(Connection conn, Member m) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getNickname());
			pstmt.setString(2, m.getMemName());
			pstmt.setString(3, m.getMemBirth());
			pstmt.setString(4, m.getPhone());
			pstmt.setString(5, m.getEmail());
			pstmt.setString(6, m.getAddress());
			pstmt.setString(7, m.getMemId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
	public Member selectMember(Connection conn, String memId) {
		
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no")
						 , rset.getString("mem_id")
						 , rset.getString("mem_pwd")
						 , rset.getString("nickname")
						 , rset.getString("mem_name")
						 , rset.getString("mem_birth")
						 , rset.getString("phone")
						 , rset.getString("email")
						 , rset.getString("address")
						 , rset.getString("category_no")
						 , rset.getInt("point")
						 , rset.getString("mem_status")
						 , rset.getString("admin")
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
	
	
	
	public int updatePwdMember(Connection conn, String memId, String memPwd, String updatePwd) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updatePwdMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, updatePwd);
			pstmt.setString(2, memId);
			pstmt.setString(3, memPwd);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
	public int deleteMember(Connection conn, String memId) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	
	public int idCheck(Connection conn, String checkId) {
		
		int count = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("idCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, checkId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return count;
	}
	
	
	
	
}
