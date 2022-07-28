package com.leer.member.model.service;

import static com.leer.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.member.model.dao.MemberDao;
import com.leer.member.model.vo.Member;

public class MemberService {
	
	public ArrayList<Member> selectMemberList(){
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().selectMemberList(conn);
		
		close(conn);
		return list;
	}

}
