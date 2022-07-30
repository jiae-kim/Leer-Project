package com.leer.mypage.model.service;

import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.leer.mypage.model.dao.MypageDao;
import com.leer.mypage.model.vo.Cart;

public class MypageService {
	
	public int insertProductCart(Cart c) {
		
		Connection conn = getConnection();
		
		int result = new MypageDao().insertProductCart(conn, c);
		return 2;
	}

}
