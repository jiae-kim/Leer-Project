package com.leer.review.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.leer.common.JDBCTemplate.*;

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
	
	public int WriteReviewComplete(int memNo,String pname,int reviewscope,String content) {
		
		Connection conn = getConnection();
		int result = 0;
		result = new ReviewDao().WriteReviewComplete(conn,memNo,pname,reviewscope,content);
		
		if(result<0) {
			
		}else {
			
		}
		close(conn);
		return result;
		
	}
	
}
