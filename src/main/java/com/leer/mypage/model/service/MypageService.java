package com.leer.mypage.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.member.model.vo.Member;
import com.leer.mypage.model.dao.MypageDao;
import com.leer.mypage.model.vo.Cart;
import com.leer.mypage.model.vo.Point;

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
	
	public ArrayList<Member> selectOrderDev(int memNo){
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MypageDao().selectOrderDev(conn,memNo);
		
		close(conn);
		return list;
	}
	
	
	public ArrayList<Member> selectOrderDevDetail(int memNo){
		
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MypageDao().selectOrderDevDetail(conn,memNo);
		
		close(conn);
		return list;
	}
	
	public ArrayList<Point> PointList(int memNo){
		
		Connection conn = getConnection();
		
		ArrayList<Point> list= new MypageDao().PointList(conn,memNo);
		
		close(conn);
		return list;
		
	}
	
	public ArrayList<Member> OrderCancleView(int memNo){
		
		Connection conn= getConnection();
		
		ArrayList<Member> list = new MypageDao().OrderCancleView(conn,memNo);
		
		close(conn);
		return list;
	}

}
