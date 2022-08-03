package com.leer.community.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.commit;
import static com.leer.common.JDBCTemplate.getConnection;
import static com.leer.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.common.model.vo.Attachment;
import com.leer.common.model.vo.Category2;
import com.leer.common.model.vo.PageInfo;
import com.leer.community.model.dao.AdminCommunityDao;
import com.leer.community.model.vo.ComuBoard;
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
	
	// 관리자 공지사항/커뮤공지 등록
	// 작성자 김은지	
	public int insertNotice(ComuNotice c, Attachment at) {
		Connection conn = getConnection();
		
		int result1 = new AdminCommunityDao().insertNotice(conn, c);
		
		int result2 = 1;
		if(at != null) {
			result2 = new AdminCommunityDao().insertAttachment(conn, at);
		}
		
		if(result1 < 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}
	
	// 관리자 공지사항/커뮤공지 카테고리 조회
	// 작성자 김은지	
	public ArrayList<Category2> selectCategoryList(){
		Connection conn = getConnection();
		ArrayList<Category2> list = new AdminCommunityDao().selectCategoryList(conn);
		close(conn);
		return list;
	}
	
	// 관리자 커뮤게시물리스트 조회
	// 작성자 김은지
	public ArrayList<ComuBoard> selectBoardList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<ComuBoard> list = new AdminCommunityDao().selectBoardList(conn, pi);
		
		close(conn);
		return list;
	}
	// 관리자 커뮤게시물리스트 페이징처리
	// 작성자 김은지	
	public int selectBoardListCount() {
		Connection conn = getConnection();
		int listCount = new AdminCommunityDao().selectBoardListCount(conn);
		close(conn);
		return listCount;
	}
	
	// 관리자 커뮤게시물 상세페이지
	// 작성자 김은지
	public ComuBoard boardDetailList(int comuNo) {
		Connection conn = getConnection();
		ComuBoard cb = new AdminCommunityDao().boardDetailList(conn, comuNo);
		close(conn);
		return cb;
	}

}
























