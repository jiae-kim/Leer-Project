package com.leer.community.model.vo;

import java.sql.Date;

import oracle.sql.CLOB;

public class ComuBoard {
	
	private int comuNo;
	private int memNo;
	private String tag;
	private String title;
	private CLOB content;
	private Date enrollDate;
	private Date modifyDate;
	private int viewCount;
	private String deleteYN;
	
	
	
	
	public ComuBoard() {}
	






	public int getComuNo() {
		return comuNo;
	}






	public void setComuNo(int comuNo) {
		this.comuNo = comuNo;
	}






	public int getMemNo() {
		return memNo;
	}






	public void setMemNo(int memNo) {
		this.memNo = memNo;
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






	public CLOB getContent() {
		return content;
	}






	public void setContent(CLOB content) {
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






	public ComuBoard(int comuNo, int memNo, String tag, String title, CLOB content, Date enrollDate, Date modifyDate,
			int viewCount, String deleteYN) {
		super();
		this.comuNo = comuNo;
		this.memNo = memNo;
		this.tag = tag;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.viewCount = viewCount;
		this.deleteYN = deleteYN;
	}






	@Override
	public String toString() {
		return "comuBoard [comuNo=" + comuNo + ", memNo=" + memNo + ", tag=" + tag + ", title=" + title + ", content="
				+ content + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", viewCount=" + viewCount
				+ ", deleteYN=" + deleteYN + "]";
	}
	
	

}
