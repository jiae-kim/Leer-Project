package com.leer.community.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.common.model.vo.PageInfo;
import com.leer.community.model.dao.AdminCommunityDao;
import com.leer.community.model.vo.ComuNotice;

public class AdminCommunityService {
	
	// 관리자 커뮤니티공지리스트 조회
	// 작성자 김은지
	public ArrayList<ComuNotice> selectComuNotiList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<ComuNotice> list = new AdminCommunityDao().selectComuNotiList(conn, pi);
		
		close(conn);
		return list;	
	}
	
	// 관리자 커뮤니티공지리스트 페이징처리
	// 작성자 김은지	
	public int selectComuNotiListCount() {
		Connection conn = getConnection();
		int listCount = new AdminCommunityDao().selectComuNotiListCount(conn);
		close(conn);
		return listCount;
	}
	
	// 관리자 커뮤니티공지 상세페이지
	// 작성자 김은지	
	public ComuNotice comuNotiDetailList(int notiNo) {
		Connection conn = getConnection();
		ComuNotice c = new AdminCommunityDao().comuNotiDetailList(conn, notiNo);
		close(conn);
		return c;
	}

}
























