package com.leer.member.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.common.model.vo.PageInfo;
import com.leer.member.model.dao.AdminAjaxMemberDao;
import com.leer.member.model.vo.Member;

public class AdminAjaxMemberService {
	
	// 관리자 회원리스트조회 - 가나다순
	// 작성자 김은지
	public ArrayList<Member> selectMemberListGND(PageInfo pi){ 
		Connection conn = getConnection();
		
		ArrayList<Member> list = new AdminAjaxMemberDao().selectMemberListGND(conn, pi); 
		
		close(conn);
		return list;
	}
	
}
