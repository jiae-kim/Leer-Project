package com.leer.terms.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.terms.model.dao.AdminTermsDao;
import com.leer.terms.model.vo.Terms;

public class AdminTermsService {
	
	// 관리자 이용약관리스트 조회
	// 작성자 김은지
	public ArrayList<Terms> selectTermsList(){
		Connection conn = getConnection();
		
		ArrayList<Terms> list = new AdminTermsDao().selectTermsList(conn);
		
		close(conn);
		return list;		
	}

}
