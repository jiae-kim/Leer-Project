package com.leer.notice.model.vo;

import java.sql.Date;

public class Notice {
	
	
	private int notiNo;
	private String memNo;
	private String title;
	private String content;
	private Date enrollDate;
	private Date modifyDate;
	private int notiViews;
	private String blindYN;
	private String notiType;
	
	private String memId; // member테이블
	
	
	public Notice() {}
	
	
	public Notice(int notiNo, String memNo, String title, String content, Date enrollDate, Date modifyDate, int notiViews,
			String blindYN, String notiType) {
		super();
		this.notiNo = notiNo;
		this.memNo = memNo;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.notiViews = notiViews;
		this.blindYN = blindYN;
		this.notiType = notiType;
	}


	


	public Notice(int notiNo, String memNo, String title, Date enrollDate, int notiViews) {
		super();
		this.notiNo = notiNo;
		this.memNo = memNo;
		this.title = title;
		this.enrollDate = enrollDate;
		this.notiViews = notiViews;
	}


	
	public Notice(int notiNo, String memNo, String title, String content, Date enrollDate, int notiViews) {
		super();
		this.notiNo = notiNo;
		this.memNo = memNo;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.notiViews = notiViews;
	}


	public Notice(int notiNo, String title, Date enrollDate, int notiViews, String memId) {
		super();
		this.notiNo = notiNo;
		this.title = title;
		this.enrollDate = enrollDate;
		this.notiViews = notiViews;
		this.memId = memId;
	}


	public Notice(String title, String content, String memId, Date enrollDate) {
		super();
		this.title = title;
		this.content = content;
		this.memId = memId;
		this.enrollDate = enrollDate;
	}


	public int getNotiNo() {
		return notiNo;
	}


	public void setNotiNo(int notiNo) {
		this.notiNo = notiNo;
	}


	public String getMemNo() {
		return memNo;
	}


	public void setMemNo(String memNo) {
		this.memNo = memNo;
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


	public int getNotiViews() {
		return notiViews;
	}


	public void setNotiViews(int notiViews) {
		this.notiViews = notiViews;
	}


	public String getBlindYN() {
		return blindYN;
	}


	public void setBlindYN(String blindYN) {
		this.blindYN = blindYN;
	}


	public String getNotiType() {
		return notiType;
	}


	public void setNotiType(String notiType) {
		this.notiType = notiType;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}


	@Override
	public String toString() {
		return "Notice [notiNo=" + notiNo + ", memNo=" + memNo + ", title=" + title + ", content=" + content
				+ ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", notiViews=" + notiViews
				+ ", blindYN=" + blindYN + ", notiType=" + notiType + ", memId=" + memId + "]";
	}
	
	

}
