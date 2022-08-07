package com.leer.terms.model.vo;

import java.sql.Date;

public class Terms {
	
	private int trmNo;
	private String trmClass;
	private String trmTitle;
	private String content;
	private String trmRemarks;
	private Date enrollDate;
	private Date modifyDate;
	private String memId;
	
	public Terms() {}

	public Terms(int trmNo, String trmClass, String trmTitle, String content, String trmRemarks, Date enrollDate,
			Date modifyDate, String memId) {
		super();
		this.trmNo = trmNo;
		this.trmClass = trmClass;
		this.trmTitle = trmTitle;
		this.content = content;
		this.trmRemarks = trmRemarks;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.memId = memId;
	}

	public Terms(int trmNo, String trmClass, String trmTitle, String content, String trmRemarks, String memId) {
		super();
		this.trmNo = trmNo;
		this.trmClass = trmClass;
		this.trmTitle = trmTitle;
		this.content = content;
		this.trmRemarks = trmRemarks;
		this.memId = memId;
	}

	public int getTrmNo() {
		return trmNo;
	}

	public Terms(int trmNo, String trmClass, String trmTitle, String trmRemarks, Date enrollDate, Date modifyDate,
			String memId) {
		super();
		this.trmNo = trmNo;
		this.trmClass = trmClass;
		this.trmTitle = trmTitle;
		this.trmRemarks = trmRemarks;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.memId = memId;
	}

	public void setTrmNo(int trmNo) {
		this.trmNo = trmNo;
	}

	public String getTrmClass() {
		return trmClass;
	}

	public void setTrmClass(String trmClass) {
		this.trmClass = trmClass;
	}

	public String getTrmTitle() {
		return trmTitle;
	}

	public void setTrmTitle(String trmTitle) {
		this.trmTitle = trmTitle;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTrmRemarks() {
		return trmRemarks;
	}

	public void setTrmRemarks(String trmRemarks) {
		this.trmRemarks = trmRemarks;
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

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	@Override
	public String toString() {
		return "Terms [trmNo=" + trmNo + ", trmClass=" + trmClass + ", trmTitle=" + trmTitle + ", content=" + content
				+ ", trmRemarks=" + trmRemarks + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate
				+ ", memId=" + memId + "]";
	}

}
