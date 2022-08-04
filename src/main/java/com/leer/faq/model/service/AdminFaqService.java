package com.leer.faq.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.leer.common.JDBCTemplate.*;

import com.leer.common.model.vo.PageInfo;
import com.leer.faq.model.dao.AdminFaqDao;
import com.leer.faq.model.vo.Faq;

public class AdminFaqService {

	/* [고객센터 - FAQ]
	 * FAQ 전체조회
	 * 작성자 김지애
	 */
	public ArrayList<Faq> selectFaqList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Faq> list = new AdminFaqDao().selectFaqList(conn, pi);
		close(conn);
		return list;
	}

	/* [고객센터 - FAQ]
	 * FAQ 전체조회 페이지 : 페이징 처리
	 * 작성자 김지애
	 */
	public int selectFaqListCount() {
		Connection conn = getConnection();
		int listCount = new AdminFaqDao().selectFaqListCount(conn);
		close(conn);
		return listCount;
	}
	
}
