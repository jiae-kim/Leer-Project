package com.leer.member.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.member.model.dao.AdminMemberDao;
import com.leer.member.model.vo.Member;

public class AdminMemberService {
	
	// 관리자 회원리스트 조회
	// 작성자 김은지
	public ArrayList<Member> selectMemberList(){
		Connection conn = getConnection();
		
		ArrayList<Member> list = new AdminMemberDao().selectMemberList(conn);
		
		close(conn);
		return list;
	}
	
	// 관리자 회원상세조회
	// 작성자 김은지
	public Member memberDatailList(int memNo) {
		Connection conn = getConnection();
		Member m = new AdminMemberDao().memberDatailList(conn, memNo);
		close(conn);
		return m;
	}

}
