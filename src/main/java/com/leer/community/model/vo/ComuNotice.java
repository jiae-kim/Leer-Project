package com.leer.community.model.vo;

import java.sql.Date;

public class ComuNotice {
	
	private int notiNo;
	private int memNo;
	private String title;
	private String content;
	private Date enrollDate;
	private Date modifyDate;
	private int notiViews;
	private String blindYn;
	private String notiType;
	
	private String memId; // member테이블
	
	public ComuNotice() {}
	
	public ComuNotice(int notiNo, int memNo, String title, String content, Date enrollDate, Date modifyDate,
			int notiViews, String blindYn, String notiType) {
		super();
		this.notiNo = notiNo;
		this.memNo = memNo;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.notiViews = notiViews;
		this.blindYn = blindYn;
		this.notiType = notiType;
	}

	public ComuNotice(int notiNo, String title, Date enrollDate, Date modifyDate, String memId) {
		super();
		this.notiNo = notiNo;
		this.title = title;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.memId = memId;
	}

	public int getNotiNo() {
		return notiNo;
	}

	public void setNotiNo(int notiNo) {
		this.notiNo = notiNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
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

	public String getBlindYn() {
		return blindYn;
	}

	public void setBlindYn(String blindYn) {
		this.blindYn = blindYn;
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
		return "ComuNotice [notiNo=" + notiNo + ", memNo=" + memNo + ", title=" + title + ", content=" + content
				+ ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", notiViews=" + notiViews
				+ ", blindYn=" + blindYn + ", notiType=" + notiType + ", memId=" + memId + "]";
	}

}
