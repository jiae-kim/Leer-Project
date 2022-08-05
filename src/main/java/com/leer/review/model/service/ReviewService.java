package com.leer.review.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.leer.common.JDBCTemplate.*;

import com.leer.common.model.vo.Attachment;
import com.leer.member.model.vo.Member;
import com.leer.mypage.model.dao.MypageDao;
import com.leer.review.model.dao.ReviewDao;
import com.leer.review.model.vo.Review;

public class ReviewService {

	
	public ArrayList<Review> WriteReviewView(int memNo){
		
		Connection conn = getConnection();
		
		
		ArrayList<Review> list = new ReviewDao().WriteReviewView(conn,memNo);
		
		close(conn);
		return list;
		
		
	}
	
	public ArrayList<Review> WriteReviewHistory(int memNo){
		
		Connection conn = getConnection();
		
		
		ArrayList<Review> list = new ReviewDao().WriteReviewHistory(conn,memNo);
		
		close(conn);
		return list;
		
		
	}
	
	public Review WriteReview(int memNo,String orNo,String p_code) {
		
		Connection conn = getConnection();
		
		Review r = new ReviewDao().WriteReview(conn,memNo,orNo,p_code);
		
		close(conn);
		return r;
		
	}
	
	public int WriteReviewComplete(Review r, Attachment at) {
		
		Connection conn = getConnection();
		int result2 = 1;
		int result1 = new ReviewDao().WriteReviewComplete(conn,r);
		int result3= new ReviewDao().PointTriger(conn,r);
		
		if(at != null ) {
			result2 = new ReviewDao().insertAttachment(conn, at);
		}
		
		if( result1>0 && result2>0) { //성공
			commit(conn);
		} else { // 실패
			rollback(conn);
		}
		
		
		
		close(conn);
		return result1*result2;
		
	}
	
	public int ReviewCancle(int memNo,int reviewNo,String p_code) {
		
		Connection conn = getConnection();
		int result = new ReviewDao().ReviewCancle(conn,memNo,reviewNo,p_code);
		
		
		
		return result;
		
	}
	
}
