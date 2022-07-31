package com.leer.mypage.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.mypage.model.dao.MypageDao;
import com.leer.mypage.model.vo.Cart;

public class MypageService {
	
	public int insertProductCart(Cart c) {
		
		Connection conn = getConnection();
		
		int result = new MypageDao().insertProductCart(conn, c);
		
		close(conn);
		return result;
		
	}
	
	public ArrayList<Cart> selectCartList(int memNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Cart> list = new MypageDao().selectCartList(conn, memNo);
		
		close(conn);
		return list; 
	}
	
	public int deleteCart(String cartNo) {
		
		Connection conn = getConnection();
		
		int result = new MypageDao().deleteCart(conn, cartNo);
		
		close(conn);
		return result;
	}

}
