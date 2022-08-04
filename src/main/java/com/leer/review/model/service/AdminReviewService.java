package com.leer.review.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.leer.common.JDBCTemplate.*;

import com.leer.common.model.vo.PageInfo;
import com.leer.review.model.dao.AdminReviewDao;
import com.leer.review.model.vo.Review;

public class AdminReviewService {

	/* [상품관리 - 상품리뷰]
	 * 상품리뷰 전체조회
	 * 작성자 김지애
	 */
	public ArrayList<Review> selectProductReviewList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Review> list = new AdminReviewDao().selectProductReviewList(conn, pi);
		close(conn);
		return list;
	}

	/* [상품관리 - 상품리뷰]
	 * 상품리뷰 전체조회 페이지 : 페이징 처리
	 * 작성자 김지애
	 */
	public int selectProductReviewListCount() {
		Connection conn = getConnection();
		int listCount = new AdminReviewDao().selectProductReviewListCount(conn);
		close(conn);
		return listCount;
	}
	
	
	
}
