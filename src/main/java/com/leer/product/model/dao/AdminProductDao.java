package com.leer.product.model.dao;

import static com.leer.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.leer.common.model.vo.Attachment;
import com.leer.common.model.vo.Category;
import com.leer.common.model.vo.PageInfo;
import com.leer.product.model.vo.Inquiry;
import com.leer.product.model.vo.Product;
import com.leer.product.model.vo.ProductIo;

public class AdminProductDao {
	
	private Properties prop = new Properties();
	
	public AdminProductDao() {
		try {
			prop.loadFromXML(new FileInputStream(ProductDao.class.getResource("/db/sql/admin-product-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/* [제품관리 - 상품조회]
	 * 상품 전체 조회 : select
	 * 작성자 김지애
	 */
	public ArrayList<Product>selectProductList(Connection conn, PageInfo pi){
		ArrayList<Product>list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit()-1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery(); 
			
			while(rset.next()) {
				list.add(new Product(rset.getString("p_name"),
									 rset.getInt("category_no"),
									 rset.getString("p_code"),
									 rset.getString("publisher"),
									 rset.getDate("publish_month"),
									 rset.getInt("price"),
									 rset.getDate("enroll_date"),
									 rset.getInt("p_stock")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	/* [제품관리 - 상품조회]
	 * 상품전체조회 페이지 : 페이징 처리
	 * 작성자 김지애
	 */
	public int selectProductListCount(Connection conn) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("COUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}
	
	/* [제품관리 - 상품등록]
	 * 상품 등록 페이지 요청 : select
	 * 작성자 김지애
	 */
	public ArrayList<Category> selectCategoryList(Connection conn) {
		ArrayList<Category> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCategoryList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Category(rset.getInt("category_no"),
									  rset.getString("category_name")
									  ));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	/* [제품관리 - 상품등록]
	 * 상품 등록 : insert
	 * 작성자 김지애
	 */
	public int insertProduct(Connection conn, Product p) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getpName());
			pstmt.setString(2, p.getPublishMonth2());
			pstmt.setString(3, p.getPublisher());
			pstmt.setInt(4, p.getCategoryNo());
			pstmt.setString(5, p.getpCode());
			pstmt.setInt(6, p.getPrice());
			pstmt.setInt(7, p.getpStock());
			pstmt.setInt(8, p.getDeliFee());
			pstmt.setDouble(9, p.getPoint2());
			pstmt.setString(10, p.getImageUrl1());
			pstmt.setString(11, p.getImageUrl2());
			pstmt.setString(12, p.getImageUrlS());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/* [제품관리 - 상품등록]
	 * 상품 등록 : 첨부파일 3개 insert
	 * 작성자 김지애
	 */
	public int insertAttachment(Connection conn, Attachment at) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, at.getOriginName());
			pstmt.setString(2, at.getChangeName());
			pstmt.setString(3, at.getFilePath());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/* [제품관리 - 상품조회]
	 * 상품전체조회 페이지 : 수정버튼 클릭 시 수정페이지 요청 select
	 * 작성자 김지애
	 */
	public Product selectProduct(Connection conn, String pCode) {
		// select문 => ResultSet (한행 : 관리자가 선택한 한개의 상품) => Notice객체에 담아 반환
		Product p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pCode);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Product(rset.getString("p_name"),
								rset.getString("publish_month"),
								rset.getString("publisher"),
								rset.getInt("category_no"),
								rset.getString("p_code"),
								rset.getInt("price"),
								rset.getInt("p_stock"),
								rset.getInt("deli_fee"),
								rset.getDouble("point"),
								rset.getString("image_url1"),
								rset.getString("image_url2"),
								rset.getString("image_urls")
								);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return p;
	} 

	public Attachment selectAttachment(Connection conn, String pCode) {
		Attachment at = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pCode);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				at = new Attachment();
				at.setFileNo(rset.getInt("file_no"));
				at.setOriginName(rset.getString("origin_name"));
				at.setChangeName(rset.getString("change_name"));
				at.setFilePath(rset.getString("file_path"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return at;
	}
	
	/* [제품관리 - 상품등록]
	 * 상품 수정 : update
	 * 작성자 김지애
	 */
	public int updateProduct(Connection conn, Product p) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getpName());
			pstmt.setString(2, p.getPublishMonth2());
			pstmt.setString(3, p.getPublisher());
			pstmt.setString(4, p.getCategoryNo2());
			pstmt.setString(5, p.getpCode());
			pstmt.setInt(6, p.getPrice());
			pstmt.setInt(7, p.getpStock());
			pstmt.setString(8, p.getDeliFee2());
			pstmt.setInt(9, p.getPoint());
			pstmt.setString(10, p.getImageUrl1());
			pstmt.setString(11, p.getImageUrl2());
			pstmt.setString(12, p.getImageUrlS());
			pstmt.setString(13, p.getpCode());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/* [제품관리 - 상품조회]
	 * 상품전체조회 페이지 : 삭제버튼 delete
	 * 작성자 김지애
	 */
	public int deleteProduct(Connection conn, String pCode) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pCode);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/* [상품및결제관리 - 입출고관리]
	 * 재고 전체 조회
	 * 작성자 김지애
	 */
	public ArrayList<ProductIo> selectProductIoList(Connection conn, PageInfo pi) {
		ArrayList<ProductIo> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductIoList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit()-1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery(); 
			
			while(rset.next()) {
				list.add(new ProductIo(rset.getInt("status_no"),
									   rset.getString("p_code"),
									   rset.getString("p_name"),
									   rset.getInt("status_amount"),
									   rset.getDate("status_date"),
									   rset.getString("status")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	/* [상품및결제관리 - 입출고관리]
	 * 재고 전체 조회 페이지 : 페이징 처리
	 * 작성자 김지애
	 */
	public int selectProductListIoCount(Connection conn) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductListIoCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("COUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}

	/* [상품관리 - 상품문의]
	 * 상품문의 전체조회
	 * 작성자 김지애
	 */
	public ArrayList<Inquiry> selectProductIqList(Connection conn, PageInfo pi) {
		ArrayList<Inquiry> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductIqList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit()-1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery(); 
			
			while(rset.next()) {
				list.add(new Inquiry(rset.getInt("q_no"),
									 rset.getString("mem_id"),
									 rset.getString("q_category"),
									 rset.getString("p_code"),
									 rset.getString("title"),
									 rset.getDate("enroll_date"),
									 rset.getString("q_yn")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/* [상품관리 - 상품문의]
	 * 상품문의 전체조회 페이지 : 페이징 처리
	 * 작성자 김지애
	 */
	public int selectProductIqListCount(Connection conn) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductIqListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("COUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}

	/* [주문및배송 - 입출고관리]
	 * 상품 재고 전체조회 페이지 : 입고등록
	 * 작성자 김지애
	 */
	public int StockInsertPage(Connection conn, ProductIo pi) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("StockInsertPage");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pi.getpCode());
			pstmt.setInt(2, pi.getStatusAmount());
			pstmt.setString(3, pi.getStatusDate2());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/* [상품관리 - 상품문의]
	 * 상품문의 상세조회
	 * 작성자 김지애
	 */
	public Inquiry InquiryDetailList(Connection conn, String qNo2) {
		Inquiry iq = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("InquiryDetailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				iq = new Inquiry(rset.getString("qno"),
								 rset.getString("mem_id"),
								 rset.getString("p_code"),
								 rset.getString("p_name"),
								 rset.getString("q_category"),
								 rset.getString("title"),
								 rset.getString("content"),
								 rset.getDate("enroll_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return iq;
	}


	
	
}
