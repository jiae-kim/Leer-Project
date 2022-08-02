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
	public ArrayList<ComuNotice> selectComuNotiList(){ //PageInfo pi
		Connection conn = getConnection();
		
		ArrayList<ComuNotice> list = new AdminCommunityDao().selectComuNotiList(conn);
		
		close(conn);
		return list;	
	}

}























