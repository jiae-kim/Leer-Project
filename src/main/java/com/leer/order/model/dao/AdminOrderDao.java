package com.leer.order.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Properties;

import com.leer.member.model.dao.AdminMemberDao;
import com.leer.order.model.vo.Order;

public class AdminOrderDao {
	
private Properties prop = new Properties();
	
	public AdminOrderDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminMemberDao.class.getResource("/db/sql/admin-order-mapper.xml").getPath()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	// 관리자 회원조회상세-주문내역리스트
	// 작성자 김은지
	public ArrayList<Order> selectOrderList(Connection conn){
		ArrayList<Order> list = new ArrayList<>(); 
	}
	
}
