package com.leer.member.model.service;

import static com.leer.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.member.model.dao.MemberDao;
import com.leer.member.model.vo.Member;

public class MemberService {
	

	public Member loginMember(String memId, String memPwd) {
		
		Connection conn = getConnection();
		
		Member m = new MemberDao().loginMember(conn, memId, memPwd);
		
		close(conn);
		
		return m;
	}
	
	
	
	
	
	
	
	
	
	
	
}
