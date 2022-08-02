package com.leer.member.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.commit;
import static com.leer.common.JDBCTemplate.getConnection;
import static com.leer.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.leer.member.model.dao.MemberDao;
import com.leer.member.model.vo.Member;

public class MemberService {
	

	public Member loginMember(String memId, String memPwd) {
		
		Connection conn = getConnection();
		
		Member m = new MemberDao().loginMember(conn, memId, memPwd);
		
		close(conn);
		
		return m;
	}
	
	
	
	public int insertMember(Member m) {
		
		Connection conn = getConnection();
		
		int result = new MemberDao().insertMember(conn, m);
		
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	
	public Member updateMember(Member m) {
		
		Connection conn = getConnection();
		
		int result = new MemberDao().updateMember(conn, m);
		
		
		Member updateMem = null;
		
		if(result > 0) {
			commit(conn);
			
			updateMem = new MemberDao().selectMember(conn, m.getMemId());
			
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return updateMem;
		
	}
	
	
	
	
	
}
