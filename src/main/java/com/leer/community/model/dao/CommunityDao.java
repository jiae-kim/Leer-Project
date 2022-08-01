package com.leer.community.model.dao;

import static com.leer.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.Reader;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.leer.common.model.vo.Attachment;
import com.leer.common.model.vo.Category;
import com.leer.community.model.vo.ComuBoard;
import com.leer.community.model.vo.Reply;

public class CommunityDao {
	private Properties prop = new Properties();

	public CommunityDao() {
		try {
			prop.loadFromXML(new FileInputStream(CommunityDao.class.getResource("/db/sql/comuBoard-mapper.xml").getPath()));
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

	public ArrayList<ComuBoard> selectList(Connection conn) {

		ArrayList<ComuBoard> list = new ArrayList<>();

		PreparedStatement pstmt = null;

		ResultSet rset = null;

		String sql = prop.getProperty("selectList");

		try {
			pstmt = conn.prepareStatement(sql);
//			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
//			int endRow = startRow + pi.getBoardLimit() - 1;
//			pstmt.setInt(1, startRow);
//			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				ComuBoard cb = new ComuBoard(
									rset.getInt("comu_no"),
									rset.getString("tag"),
									rset.getString("title"), 
									rset.getDate("enroll_date"),
									rset.getInt("view_count"),
									rset.getInt("like_count"),
									rset.getInt("comment_count"));
				
				Clob clob = rset.getClob("content");
				Reader r = clob.getCharacterStream();
				
				StringBuffer buffer = new StringBuffer();
				int ch;
				while((ch = r.read()) != -1) {
					buffer.append("" + (char)ch);
				}
				
				cb.setContent(buffer.toString());
				
				list.add(cb);				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
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
	
	public int insertBoard(Connection conn, ComuBoard c) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, c.getMemNo());
			pstmt.setString(1, c.getCategoryNo());
			pstmt.setString(2, c.getTag());
			pstmt.setString(3, c.getTitle());
			pstmt.setString(4, c.getContent());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			
		}
		return result;
	}
	
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int increaseCount(Connection conn, int comuNo) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, comuNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	public ComuBoard selectBoard(Connection conn, int comuNo) {
		ComuBoard c = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comuNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
//				c = new ComuBoard(
//							rset.getInt("comu_no"),
//							rset.getString("nickname"),
//							rset.getString("category_name"),
//							rset.getString("tag"),
//							rset.getString("title"),
//							rset.getDate("enroll_date")
//						);

				c = new ComuBoard(
						rset.getInt("comu_no"), 
						rset.getString("nickname"),
						rset.getString("category_name"),
						rset.getString("tag"), 
						rset.getString("title"),
						rset.getDate("enroll_date"));

				Clob clob = rset.getClob("content");
				Reader r = clob.getCharacterStream();

				StringBuffer buffer = new StringBuffer();
				int ch;
				try {
					while ((ch = r.read()) != -1) {
						buffer.append("" + (char) ch);
					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				c.setContent(buffer.toString());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return c;
	}
	public Attachment selectAttachment(Connection conn, int comuNo) {
		
		Attachment at = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comuNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				at = new Attachment();
				at.setFileNo(rset.getInt("file_no"));
				at.setOriginName(rset.getString("origin_name"));
				at.setChangeName(rset.getString("change_name"));
				at.setFilePath(rset.getString("file_path"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return at;
	}

	public ArrayList<Reply> selectReplyList(Connection conn, int comuNo) {

		ArrayList<Reply> list = new ArrayList<>();

		PreparedStatement pstmt = null;

		ResultSet rset = null;

		String sql = prop.getProperty("selectReplyList");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comuNo);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(new Reply(
						rset.getInt("comm_no"), 
						rset.getString("nickname"),
						rset.getString("comm_content"), 
						rset.getString("enroll_date")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int insertReply(Connection conn, Reply r) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r.getComuNo());
			pstmt.setString(2, r.getCommContent());
			pstmt.setString(3, r.getMemNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
}
