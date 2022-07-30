package com.leer.mypage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.util.Properties;

import com.leer.mypage.model.vo.Cart;

public class MypageDao {
	
	private Properties prop = new Properties();
	
	public MypageDao() {
		
		String filePath = MypageDao.class.getResource("/db/sql/mypage-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public int insertProductCart(Connection conn, Cart c) {
		return 2;
	}

}
