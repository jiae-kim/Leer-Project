package com.leer.review.model.vo;

import java.sql.Date;

public class Review {
	
	private int reviewNo;
	private int memNo;
	private String pCode;
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
	
	
	public Review() {}
	
	
	
	public Review(String pName, int reviewScope, String reviewContent, int price, String image_url, Date or_date) {
		super();
		this.pName = pName;
		this.reviewScope = reviewScope;
		this.reviewContent = reviewContent;
		this.price = price;
		this.image_url = image_url;
		this.or_date = or_date;
	}


	

	public Review(String image_url,String pName, Date or_date, int price) {
		super();
		this.image_url = image_url;
		this.pName = pName;
		this.or_date = or_date;
		this.price = price;
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


	public Review(int reviewNo, int memNo, String pCode, String memId, String pName, int reviewScope,
			String reviewContent, Date enrollDate, Date mofifyDate, String writeYN) {
		super();
		this.reviewNo = reviewNo;
		this.memNo = memNo;
		this.pCode = pCode;
		this.memId = memId;
		this.pName = pName;
		this.reviewScope = reviewScope;
		this.reviewContent = reviewContent;
		this.enrollDate = enrollDate;
		this.mofifyDate = mofifyDate;
		this.writeYN = writeYN;
	}


	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", memNo=" + memNo + ", pCode=" + pCode + ", memId=" + memId
				+ ", pName=" + pName + ", reviewScope=" + reviewScope + ", reviewContent=" + reviewContent
				+ ", enrollDate=" + enrollDate + ", mofifyDate=" + mofifyDate + ", writeYn=" + writeYN + "]";
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


	public String getpCode() {
		return pCode;
	}


	public void setpCode(String pCode) {
		this.pCode = pCode;
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
	
	
	
	

}
