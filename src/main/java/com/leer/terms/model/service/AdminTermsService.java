package com.leer.terms.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.common.model.vo.Category2;
import com.leer.common.model.vo.PageInfo;
import com.leer.terms.model.dao.AdminTermsDao;
import com.leer.terms.model.vo.Terms;

public class AdminTermsService {
	
	// 관리자 이용약관리스트 조회
	// 작성자 김은지
	public ArrayList<Terms> selectTermsList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Terms> list = new AdminTermsDao().selectTermsList(conn, pi);
		
		close(conn);
		return list;		
	}

	// 관리자 이용약관리스트 조회 페이징처리
	// 작성자 김은지
	public int selectMemberListCount() {
		Connection conn = getConnection();
		int listCount = new AdminTermsDao().selectTermsListCount(conn);
		close(conn);
		return listCount;
	}
	
	// 관리자 이용약관 상세조회
	// 작성자 김은지
	public Terms termsDetailList(int trmNo) {
		Connection conn = getConnection();
		Terms t = new AdminTermsDao().termsDetailList(conn, trmNo);
		close(conn);
		return t;
	}
	
	// 관리자 이용약관등록 카테고리조회
	// 작성자 김은지	
	public ArrayList<Category2> selectTermsCategoryList(){
		Connection conn = getConnection();
		ArrayList<Category2> list = new AdminTermsDao().selectTermsCategoryList(conn);
		close(conn);
		return list;
	}

}



















