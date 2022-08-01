package com.leer.order.model.dao;

import static com.leer.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
	public ArrayList<Order> selectMemberOrderDetail(Connection conn, int memNo){
		ArrayList<Order> list = new ArrayList<>(); 
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberOrderDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Order(rset.getString("or_no"),
								   rset.getDate("or_date"),
								   rset.getString("p_name"),
								   rset.getDate("enroll_date")));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
}











