package com.leer.community.model.vo;

import java.sql.Date;

public class ComuBoard {
	
	private int comuNo;
	private String memNo;
	private String categoryNo;
	private String tag;
	private String title;
	private	String content;
	private Date enrollDate;
	private Date modifyDate;
	private int viewCount;
	private String deleteYN;
	
	
	
	
	public ComuBoard() {}




	public ComuBoard(int comuNo, String memNo, String categoryNo, String tag, String title, String content,
			Date enrollDate, Date modifyDate, int viewCount, String deleteYN) {
		super();
		this.comuNo = comuNo;
		this.memNo = memNo;
		this.categoryNo = categoryNo;
		this.tag = tag;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.viewCount = viewCount;
		this.deleteYN = deleteYN;
	}




	public ComuBoard(int comuNo, String tag, String title, 
			Date enrollDate, int viewCount) {
		super();
		this.comuNo = comuNo;
		this.tag = tag;
		this.title = title;
		this.enrollDate = enrollDate;
		this.viewCount = viewCount;
	}

	


	public ComuBoard(int comuNo, String memNo, String categoryNo, String tag, String title,
			Date enrollDate) {
		super();
		this.comuNo = comuNo;
		this.memNo = memNo;
		this.categoryNo = categoryNo;
		this.tag = tag;
		this.title = title;
		this.enrollDate = enrollDate;
	}




	public int getComuNo() {
		return comuNo;
	}




	public void setComuNo(int comuNo) {
		this.comuNo = comuNo;
	}




	public String getMemNo() {
		return memNo;
	}




	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}




	public String getCategoryNo() {
		return categoryNo;
	}




	public void setCategoryNo(String categoryNo) {
		this.categoryNo = categoryNo;
	}




	public String getTag() {
		return tag;
	}




	public void setTag(String tag) {
		this.tag = tag;
	}




	public String getTitle() {
		return title;
	}




	public void setTitle(String title) {
		this.title = title;
	}




	public String getContent() {
		return content;
	}




	public void setContent(String content) {
		this.content = content;
	}




	public Date getEnrollDate() {
		return enrollDate;
	}




	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}




	public Date getModifyDate() {
		return modifyDate;
	}




	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}




	public int getViewCount() {
		return viewCount;
	}




	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}




	public String getDeleteYN() {
		return deleteYN;
	}




	public void setDeleteYN(String deleteYN) {
		this.deleteYN = deleteYN;
	}




	@Override
	public String toString() {
		return "ComuBoard [comuNo=" + comuNo + ", memNo=" + memNo + ", categoryNo=" + categoryNo + ", tag=" + tag
				+ ", title=" + title + ", content=" + content + ", enrollDate=" + enrollDate + ", modifyDate="
				+ modifyDate + ", viewCount=" + viewCount + ", deleteYN=" + deleteYN + "]";
	}




	}