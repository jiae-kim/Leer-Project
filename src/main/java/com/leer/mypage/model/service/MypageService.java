package com.leer.mypage.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.commit;
import static com.leer.common.JDBCTemplate.getConnection;
import static com.leer.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.member.model.vo.Member;
import com.leer.mypage.model.dao.MypageDao;
import com.leer.mypage.model.vo.Cart;
import com.leer.mypage.model.vo.Point;
import com.leer.product.model.vo.Product;

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
	
	public Member RefundController(int memNo,String p_code,String orNo){
		
		Connection conn = getConnection();

		Member m = new MypageDao().RefundController(conn,memNo,p_code,orNo);
		
	
		
		close(conn);
		return m;
		
	}
	

	

	public int CancleComplete( int memNo, String p_code, String orNo) {
		
		int result = 0;
		Connection conn = getConnection();
		int result1 = new MypageDao().CancleComplete(conn,memNo,p_code,orNo);
		
		int result2 = new MypageDao().CancleStockComplete(conn,p_code);
		
		
		if(result1 > 0 && result2 > 0 ) { // 성공
			commit(conn);
			result = 1;
		}else { // 실패
			rollback(conn);
			result = 0;
		}
		
		return result;
		
	}

	
	
	public ArrayList<Product> selectScrapList(int memNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new MypageDao().selectScrapList(conn, memNo);
		
		close(conn);
		
		return list;
		
	}


}
