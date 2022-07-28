package com.leer.member.model.service;

import static com.leer.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.member.model.dao.MemberDao;
import com.leer.member.model.vo.Member;

public class MemberService {
	
	// 관리자 회원리스트 조회
	// 작성자 김은지
	public ArrayList<Member> selectMemberList(){
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().selectMemberList(conn);
		
		close(conn);
		return list;
	}
	
	// 관리자 회원상세조회
	// 작성자 김은지
	public Member memberDatailList(int memNo) {
		Connection conn = getConnection();
		Member m = new MemberDao().memberDatailList(conn, memNo);
		close(conn);
		return m;
	}

}
