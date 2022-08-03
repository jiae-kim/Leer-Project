package com.leer.review.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.leer.common.JDBCTemplate.*;

import com.leer.common.model.vo.Attachment;
import com.leer.member.model.vo.Member;
import com.leer.mypage.model.dao.MypageDao;
import com.leer.product.model.dao.ProductDao;
import com.leer.review.model.vo.Review;

public class AdminReviewDao {

	private Properties prop = new Properties();
	
	public AdminReviewDao() {
		try {
			prop.loadFromXML(new FileInputStream(ProductDao.class.getResource("/db/sql/admin-product-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
}
