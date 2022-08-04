package com.leer.mtm.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.common.model.vo.PageInfo;
import com.leer.mtm.model.dao.AdminMtmDao;
import com.leer.mtm.model.vo.Mtm;

public class AdminMtmService {
	
	// 관리자 1:1문의리스트 조회
	// 작성자 김은지
	public ArrayList<Mtm> selectMtmList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Mtm> list = new AdminMtmDao().selectMtmList(conn, pi);
		
		close(conn);
		return list;	
	}
	
	// 관리자 1:1문의리스트 조회 페이징처리
	// 작성자 김은지
	public int selectMtmListCount() {
		Connection conn = getConnection();
		int listCount = new AdminMtmDao().selectMtmListCount(conn);
		close(conn);
		return listCount;		
	}
	
	// 관리자 1:1문의리스트 상세조회
	// 작성자 김은지
	public Mtm mtmDetailList(int mtmNo) {
		Connection conn = getConnection();
		Mtm m = new AdminMtmDao().mtmDetailList(conn, mtmNo);
		close(conn);
		return m;
	}

}



















