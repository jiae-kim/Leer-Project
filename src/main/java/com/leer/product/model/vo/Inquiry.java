package com.leer.product.model.vo;

import java.sql.Date;

public class Inquiry {
	
	private int qNo;
	private int pCode;
	private int memNo;
	private String memName;
	private String qYn;
	private String title;
	private String content; 
	private String qCategory;
	private Date enrollDate;
	private Date modifyDate; 
	private String qAnswer; 
	
	public Inquiry() {}

	public Inquiry(int qNo, int pCode, int memNo, String memName, String qYn, String title, String content, String qCategory,
			Date enrollDate, Date modifyDate, String qAnswer) {
		super();
		this.qNo = qNo;
		this.pCode = pCode;
		this.memNo = memNo;
		this.memName = memName;
		this.qYn = qYn;
		this.title = title;
		this.content = content;
		this.qCategory = qCategory;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.qAnswer = qAnswer;
	}

	public Inquiry(int qNo, String qYn, String title, String memName, Date enrollDate) {
		super();
		this.qNo = qNo;
		this.qYn = qYn;
		this.title = title;
		this.memName = memName;
		this.enrollDate = enrollDate;
	}

	public int getqNo() {
		return qNo;
	}

	public void setqNo(int qNo) {
		this.qNo = qNo;
	}

	public int getpCode() {
		return pCode;
	}

	public void setpCode(int pCode) {
		this.pCode = pCode;
	}

	public int getMemNo() {
		return memNo;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getqYn() {
		return qYn;
	}

	public void setqYn(String qYn) {
		this.qYn = qYn;
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

	public String getqCategory() {
		return qCategory;
	}

	public void setqCategory(String qCategory) {
		this.qCategory = qCategory;
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

	public String getqAnswer() {
		return qAnswer;
	}

	public void setqAnswer(String qAnswer) {
		this.qAnswer = qAnswer;
	}

	@Override
	public String toString() {
		return "Inquiry [qNo=" + qNo + ", pCode=" + pCode + ", memNo=" + memNo + ", memName=" + memName + ", qYn=" + qYn
				+ ", title=" + title + ", content=" + content + ", qCategory=" + qCategory + ", enrollDate="
				+ enrollDate + ", modifyDate=" + modifyDate + ", qAnswer=" + qAnswer + "]";
	}

	


	
}
