package com.leer.notice.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.notice.model.dao.AdminNoticeDao;
import com.leer.notice.model.vo.Notice;

public class AdminNoticeService {
	
	// 관리자 고객센터공지리스트 조회
	// 작성자 김은지
	public ArrayList<Notice> selectNoticeList(){ // PageInfo pi
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new AdminNoticeDao().selectNoticeList(conn); //, pi
		
		close(conn);
		return list;	
	}

}
