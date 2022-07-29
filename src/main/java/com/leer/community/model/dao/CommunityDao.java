package com.leer.community.model.dao;

import static com.leer.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.leer.common.model.vo.Category;
import com.leer.common.model.vo.PageInfo;
import com.leer.community.model.vo.ComuBoard;

public class CommunityDao {
	private Properties prop = new Properties();

	public CommunityDao() {
		try {
			prop.loadFromXML(new FileInputStream(CommunityDao.class.getResource("/db/sql/community-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int selectListCount(Connection conn) {

		int listCount = 0;

		PreparedStatement pstmt = null;

		ResultSet rset = null;

		String sql = prop.getProperty("selectListCount");

		try {
			pstmt = conn.prepareStatement(sql);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				listCount = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}

	public ArrayList<ComuBoard> selectList(Connection conn, PageInfo pi) {

		ArrayList<ComuBoard> list = new ArrayList<>();

		PreparedStatement pstmt = null;

		ResultSet rset = null;

		String sql = prop.getProperty("selectList");

		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(new ComuBoard(
						rset.getInt("comu_no"),
						rset.getString("nickname"), 
						rset.getString("category_name"),
						rset.getString("tag"),
						rset.getString("title"), 
						rset.getClob("content"), 
						rset.getDate("enroll_date"),
						rset.getInt("view_count")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public ArrayList<Category> selectCategoryList(Connection conn) {
		
		ArrayList<Category> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCategoryList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Category(rset.getInt("category_no")
									, rset.getString("category_name")
									  ));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
			
		}
		return list;
		
	}
}
