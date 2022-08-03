package com.leer.review.model.vo;

import java.sql.Date;

public class Review {
	
	private int reviewNo;
	private int memNo;
	private String memId;
	private String pName;
	private int reviewScope;
	private String reviewContent;
	private Date enrollDate;
	private Date mofifyDate;
	private String writeYN;
	private int price;
	private String image_url;
	private Date or_date;
	private String or_no;
	private String p_code;
	
	// 리뷰전체조회 시 포인트 지급여부 판단 (작성자 김지애)
	private String rpoint_yn;
	public String getRpoint_yn() {
		return rpoint_yn;
	}
	public void setRpoint_yn(String rpoint_yn) {
		this.rpoint_yn = rpoint_yn;
	}

	public Review() {}
	
	public String getOr_no() {
		return or_no;
	}

	public void setOr_no(String or_no) {
		this.or_no = or_no;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public Review(String pName, int reviewScope, String reviewContent, int price, String image_url, Date or_date, String p_code , int reviewNo) {
		super();
		this.pName = pName;
		this.reviewScope = reviewScope;
		this.reviewContent = reviewContent;
		this.price = price;
		this.image_url = image_url;
		this.or_date = or_date;
		this.p_code = p_code;
		this.reviewNo = reviewNo;
	}

	public Review(String image_url,String pName, Date or_date, int price, String p_code) {
		super();
		this.image_url = image_url;
		this.pName = pName;
		this.or_date = or_date;
		this.price = price;
		this.p_code = p_code;
	}

	public Review(String pName, int price, String image_url, Date or_date, String or_no, String p_code) {
		super();
		this.pName = pName;
		this.price = price;
		this.image_url = image_url;
		this.or_date = or_date;
		this.or_no = or_no;
		this.p_code = p_code;
	}

	public Review(String pName, int price, String image_url, Date or_date) {
		super();
		this.pName = pName;
		this.price = price;
		this.image_url = image_url;
		this.or_date = or_date;
	}

	public String getWriteYN() {
		return writeYN;
	}

	public void setWriteYN(String writeYN) {
		this.writeYN = writeYN;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public Date getOr_date() {
		return or_date;
	}

	public void setOr_date(Date or_date) {
		this.or_date = or_date;
	}

	public Review(int reviewNo, int memNo, String memId, String pName, int reviewScope,
			String reviewContent, Date enrollDate, Date mofifyDate, String writeYN,String p_code) {
		super();
		this.reviewNo = reviewNo;
		this.memNo = memNo;
		this.memId = memId;
		this.pName = pName;
		this.reviewScope = reviewScope;
		this.reviewContent = reviewContent;
		this.enrollDate = enrollDate;
		this.mofifyDate = mofifyDate;
		this.writeYN = writeYN;
		this.p_code = p_code;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getReviewScope() {
		return reviewScope;
	}

	public void setReviewScope(int reviewScope) {
		this.reviewScope = reviewScope;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getMofifyDate() {
		return mofifyDate;
	}

	public void setMofifyDate(Date mofifyDate) {
		this.mofifyDate = mofifyDate;
	}

	public String getWriteYn() {
		return writeYN;
	}

	public void setWriteYn(String writeYn) {
		this.writeYN = writeYn;
	}

	/* [상품관리 - 상품리뷰]
	 * 상품리뷰 전체조회
	 * 작성자 김지애
	 */
	public Review(int reviewNo, String memId, String pName, String p_code, String reviewContent, int reviewScope,  
			Date enrollDate, String rpointYn) {
		super();
		this.reviewNo = reviewNo;
		this.memId = memId;
		this.pName = pName;
		this.p_code = p_code;
		this.reviewContent = reviewContent;
		this.reviewScope = reviewScope;
		this.enrollDate = enrollDate;
		this.rpoint_yn = rpoint_yn;
	}
	
	
	
	
	

}
