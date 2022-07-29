package com.leer.community.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.common.model.vo.Category;
import com.leer.common.model.vo.PageInfo;
import com.leer.community.model.dao.CommunityDao;
import com.leer.community.model.vo.ComuBoard;

public class CommunityService {
	public int selectListCount() {

		Connection conn = getConnection();

		int listCount = new CommunityDao().selectListCount(conn);

		close(conn);
		return listCount;
	}
	public ArrayList<ComuBoard> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<ComuBoard> list = new CommunityDao().selectList(conn, pi);

		close(conn);
		return list;
	}
	public ArrayList<Category> selectCategoryList(){
		
		Connection conn = getConnection();
		
		ArrayList<Category> list = new CommunityDao().selectCategoryList(conn);
		
		close(conn);
		
		return list;
		
		
	}
	
}
