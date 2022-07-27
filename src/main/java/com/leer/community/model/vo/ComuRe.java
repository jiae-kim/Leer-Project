package com.leer.community.model.vo;

import java.sql.Date;

public class ComuRe {

	private int commNo;
	private int comuNo;
	private int memNo;
	private String commContent;
	private Date enrollDate;
	private Date modifyDate;
	private String commYN;
	
	
	public ComuRe() {}
	
	
	public ComuRe(int commNo, int comuNo, int memNo, String commContent, Date enrollDate, Date modifyDate,
			String commYN) {
		super();
		this.commNo = commNo;
		this.comuNo = comuNo;
		this.memNo = memNo;
		this.commContent = commContent;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.commYN = commYN;
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


	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public String getCommContent() {
		return commContent;
	}


	public void setCommContent(String commContent) {
		this.commContent = commContent;
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


	public String getCommYN() {
		return commYN;
	}


	public void setCommYN(String commYN) {
		this.commYN = commYN;
	}


	@Override
	public String toString() {
		return "comuRe [commNo=" + commNo + ", comuNo=" + comuNo + ", memNo=" + memNo + ", commContent=" + commContent
				+ ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", commYN=" + commYN + "]";
	}
	
	
	
	
	
}
