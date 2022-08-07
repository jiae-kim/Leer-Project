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

public class AdminMemberDao {
	
	private Properties prop = new Properties();
	
	public AdminMemberDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminMemberDao.class.getResource("/db/sql/admin-member-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
		
	// 관리자 회원리스트 조회
	// 작성자 김은지
	public ArrayList<Member> selectMemberList(Connection conn, PageInfo pi){
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberList");
		
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
	
	
	// 관리자 회원조회리스트 페이징처리
	// 작성자 김은지
	public int selectMemberListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMemberListCount");
		
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
						   	   rset.getString("nickName"),
						   	   rset.getString("phone"),
						   	   rset.getString("address"),
						   	   rset.getInt("point"),
						   	   rset.getDate("enroll_date")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}
	
	// 관리자 회원정보 업데이트페이지
	// 작성자 김은지
	public Member updateMemberForm(Connection conn, int memNo) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("updateMemberForm");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
							   rset.getString("mem_id"),
							   rset.getString("mem_name"),
						   	   rset.getString("nickName"),
							   rset.getString("phone"),
							   rset.getString("address"),
							   rset.getInt("point"),
							   rset.getString("enroll_date")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}
		
	// 관리자 회원정보 변경
	// 작성자 김은지
	public int updateMember(Connection conn, Member m) {
		
		System.out.println(m);
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getMemName());
			pstmt.setString(2, m.getNickname());
			pstmt.setString(3, m.getAddress());
			pstmt.setString(4, m.getPhone());
			pstmt.setString(5, m.getMemId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	// 관리자 회원정보 삭제
	// 작성자 김은지
	public int deleteMember(Connection conn, int memNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMember");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	// 관리자 장기구독자 조회
	// 작성자 김은지
	public ArrayList<Member> selectLongMemberList(Connection conn, PageInfo pi){
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectLongMemberList");
		
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
									rset.getString("mem_name"),
									rset.getString("phone"),
									rset.getString("email"),
									rset.getString("address"),
									rset.getInt("point"),
									rset.getDate("start_date"),
									rset.getDate("end_date"),
									rset.getString("or_no")));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	// 관리자 장기구독자조회리스트 페이징처리
	// 작성자 김은지	
	public int selectLongMemberListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectLongMemberListCount");
		
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
	
	// 관리자 장기구독자 상세조회
	// 작성자 김은지	
	public Member memberLongDetailList(Connection conn, int orNo) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("memberLongDetailList");	
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, orNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
							   rset.getString("mem_id"),
							   rset.getString("mem_name"),
							   rset.getInt("point"),
							   rset.getString("p_code"),
							   rset.getString("or_no"),
							   rset.getInt("or_price"),
							   rset.getString("p_name"),
							   rset.getDate("publish_month"),
							   rset.getString("image_url1"),
							   rset.getInt("or_cycle")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}
	
}


















