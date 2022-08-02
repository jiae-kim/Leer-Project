package com.leer.order.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.leer.mypage.model.vo.Cart;
import com.leer.order.model.dao.OrderDao;

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

}
