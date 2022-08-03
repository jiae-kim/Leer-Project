package com.leer.order.model.service;

import static com.leer.common.JDBCTemplate.close;
import static com.leer.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.leer.common.model.vo.PageInfo;
import com.leer.order.model.dao.AdminOrderDao;
import com.leer.order.model.vo.Order;
import com.leer.product.model.dao.AdminProductDao;
import com.leer.product.model.vo.ProductIo;

public class AdminOrderService {
	
	// 관리자 회원상세조회-주문내역리스트 조회
	// 작성자 김은지
	public ArrayList<Order> selectMemberOrderDetail(int memNo){
		Connection conn = getConnection();
		
		ArrayList<Order> list = new AdminOrderDao().selectMemberOrderDetail(conn, memNo);
		
		close(conn);
		return list;
	}

	/* [주문및배송 - 주문및배송조회]
	 * 주문및배송 전체조회
	 * 작성자 김지애
	 */
	public ArrayList<Order> selectOrderList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Order> list = new AdminOrderDao().selectOrderList(conn, pi);
		close(conn);
		return list;
	}

	/* [주문및배송 - 주문및배송조회]
	 * 주문및배송 전체조회 페이지 : 페이징 처리
	 * 작성자 김지애
	 */
	public int selectOrderListCount() {
		Connection conn = getConnection();
		int listCount = new AdminOrderDao().selectOrderListCount(conn);
		close(conn);
		return listCount;
	}
	
}
