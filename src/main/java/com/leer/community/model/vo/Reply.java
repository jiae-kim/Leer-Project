package com.leer.community.model.vo;

import java.sql.Date;

public class Reply {
	private int commNo;
	private int comuNo;
	private String memNo;
	private String commContent;
	private String enrollDate;
	private String modifyDate;
	private String commYM;
	
	public Reply() {}

	public Reply(int commNo, int comuNo, String memNo, String commContent, String enrollDate, String modifyDate,
			String commYM) {
		super();
		this.commNo = commNo;
		this.comuNo = comuNo;
		this.memNo = memNo;
		this.commContent = commContent;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.commYM = commYM;
	}

	public Reply(int commNo, String memNo, String commContent, String enrollDate) {
		super();
		this.commNo = commNo;
		this.memNo = memNo;
		this.commContent = commContent;
		this.enrollDate = enrollDate;
	}

	public int getCommNo() {
		return commNo;
	}

	public void setCommNo(int commNo) {
		this.commNo = commNo;
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

	public String getCommContent() {
		return commContent;
	}

	public void setCommContent(String commContent) {
		this.commContent = commContent;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getCommYM() {
		return commYM;
	}

	public void setCommYM(String commYM) {
		this.commYM = commYM;
	}

	@Override
	public String toString() {
		return "Reply [commNo=" + commNo + ", comuNo=" + comuNo + ", memNo=" + memNo + ", commContent=" + commContent
				+ ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", commYM=" + commYM + "]";
	}

	
	
	
}
