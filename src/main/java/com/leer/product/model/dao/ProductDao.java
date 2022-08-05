package com.leer.product.model.dao;

import static com.leer.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.leer.product.model.vo.Inquiry;
import com.leer.product.model.vo.Product;

public class ProductDao {
	
	private Properties prop = new Properties();
	
	public ProductDao() {
		try {
			prop.loadFromXML(new FileInputStream(ProductDao.class.getResource("/db/sql/product-mapper.xml").getPath()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<Product>selectProductList(Connection conn){
		ArrayList<Product>list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery(); 
			
			while(rset.next()) {
				
				list.add(new Product(rset.getString("p_code"),
						 rset.getInt("category_no"),
						 rset.getString("p_name"),
						 rset.getInt("price"),
						 rset.getDate("publish_month"),
						 rset.getString("image_url1")));
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
	
	public ArrayList<Product>selectProductListOld(Connection conn){
		ArrayList<Product>list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductListOld");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery(); 
			
			while(rset.next()) {
				
				list.add(new Product(rset.getString("p_code"),
						 rset.getInt("category_no"),
						 rset.getString("p_name"),
						 rset.getInt("price"),
						 rset.getDate("publish_month"),
						 rset.getString("image_url1")));
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
	
	public Product selectProductDetail(Connection conn, String pCode) {
		Product p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pCode);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Product(rset.getString("p_code"),
								rset.getString("p_name"),
						        rset.getInt("price"),
						        rset.getString("publisher"),
						        rset.getInt("month"),
						        rset.getInt("p_stock"),
						        rset.getString("sup_yn"),
						        rset.getString("image_url1"),
						        rset.getString("image_url2"),
						        rset.getString("image_url"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return p;
		
		
	}
	
	public ArrayList<Inquiry> selectInquiryList(Connection conn, String pCode){
		ArrayList<Inquiry> list = new ArrayList<Inquiry>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectInquiryList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pCode);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Inquiry(rset.getInt("q_no"),
						  			 rset.getString("q_yn"),
						  			 rset.getString("title"),
						  			 rset.getString("mem_name"),
						  			 rset.getDate("enroll_date")
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
	
	
	
	//찜하기 여부 확인
	public int scrapCheck(Connection conn, String pCode, int memNo) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("scrapCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			pstmt.setString(2, pCode);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("A");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}
	
	
	
	public int insertScrap(Connection conn, String pCode, int memNo) {
		
		  int result = 0;
	      PreparedStatement pstmt = null;
	      
	      String sql = prop.getProperty("insertScrap");
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, pCode);
	         pstmt.setInt(2, memNo);
	         
	         result = pstmt.executeUpdate(); 
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(pstmt);
	      }
	      
	      return result;
	}
	
	
	
	public int deleteScrap(Connection conn, String pCode, int memNo) {
		
		  int result = 0;
	      PreparedStatement pstmt = null;
	      
	      String sql = prop.getProperty("deleteScrap");
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, pCode);
	         pstmt.setInt(2, memNo);
	         
	         result = pstmt.executeUpdate(); 
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(pstmt);
	      }
	      
	      return result;
	}
	
	public int insertInquiry(Connection conn, Inquiry i) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertInquiry");
		
		try {
			pstmt.setString(1, i.getpCode2());
			pstmt.setInt(2, i.getMemNo());
			pstmt.setString(3, i.getTitle());
			pstmt.setString(4, i.getContent());
			pstmt.setString(4, i.getqCategory());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
}
