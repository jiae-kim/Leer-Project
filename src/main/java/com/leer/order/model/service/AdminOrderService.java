package com.leer.order.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.order.model.dao.AdminOrderDao;
import com.leer.order.model.vo.Order;

public class AdminOrderService {
	
	// 관리자 회원상세조회-주문내역리스트 조회
	// 작성자 김은지
	public ArrayList<Order> selectMemberOrderDetail(){
		Connection conn = getConnection();
		
		ArrayList<Order> list = new AdminOrderDao().selectMemberOrderDetail(conn);
		
		close(conn);
		return list;
	}

}
