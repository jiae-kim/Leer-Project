package com.leer.mtm.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.common.model.vo.PageInfo;
import com.leer.mtm.model.dao.MtmDao;
import com.leer.mtm.model.vo.Mtm;

public class MtmService {
	
	
	public int selectMyListCount(int memNo){

		Connection conn = getConnection();
		
		int listCount = new MtmDao().selectMyListCount(conn, memNo);

		close(conn);
		
		return listCount;
	}
	
	
	public ArrayList<Mtm> selectMyMtmList(PageInfo pi, int memNo){
		
		Connection conn = getConnection();
		
		ArrayList<Mtm> list = new MtmDao().selectMyMtmList(conn, pi, memNo);
		
		close(conn);
		
		return list;
		
	}

}
