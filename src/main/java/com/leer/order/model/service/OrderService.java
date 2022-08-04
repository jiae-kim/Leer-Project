package com.leer.order.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.mypage.model.vo.Cart;
import com.leer.order.model.dao.OrderDao;
import com.leer.order.model.vo.OrProduct;
import com.leer.order.model.vo.Order;

public class OrderService {
	
public Cart selectOrderList(String chk){
		
		Connection conn = getConnection();
		Cart c = new OrderDao().selectOrderList(conn, chk);
		
		close(conn);
		return c;
	}
	
	public int selectPoint(int memNo) {
		
		Connection conn = getConnection();
		int point = new OrderDao().selectPoint(conn, memNo);
		
		close(conn);
		return point;
	}
	
	public int insertOrder(Order o) {
		
		Connection conn = getConnection();
		int result = new OrderDao().insertOrder(conn, o);
		
		close(conn);
		return result;
	}
	
	public int insertOrProduct(OrProduct op) {
		
		Connection conn = getConnection();
		int result = new OrderDao().insertOrProduct(conn, op);
		
		close(conn);
		return result; 
	}
	
	public int insertOutStock(Cart c) {
		
		Connection conn = getConnection();
		int result = new OrderDao().insertOutStock(conn, c);
		
		close(conn);
		return result;
	}
	
	public int updatePoint(int memNo, int finalPrice) {
		
		Connection conn = getConnection();
		int result = new OrderDao().updatePoint(conn, memNo, finalPrice);
		
		close(conn);
		return result;
	}
}
