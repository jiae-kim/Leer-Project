package com.leer.faq.model.vo;

import java.sql.Date;

public class Faq {
	
	private int faqNo;
	private int memNo;
	private String faqCategory;
	private String faqTitle;
	private String faqContent;
	private Date enrollDate;
	private Date modifyDate;
	private int faqViews;
	
	public Faq() {}

	public Faq(int faqNo, int memNo, String faqCategory, String faqTitle, String faqContent, Date enrollDate,
			Date modifyDate, int faqViews) {
		super();
		this.faqNo = faqNo;
		this.memNo = memNo;
		this.faqCategory = faqCategory;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.faqViews = faqViews;
	}

	
	public Faq(int faqNo, String faqCategory, String faqTitle, Date enrollDate, int faqViews) {
		super();
		this.faqNo = faqNo;
		this.faqCategory = faqCategory;
		this.faqTitle = faqTitle;
		this.enrollDate = enrollDate;
		this.faqViews = faqViews;
	}

	public int getFaqNo() {
		return faqNo;
	}

	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getFaqCategory() {
		return faqCategory;
	}

	public void setFaqCategory(String faqCategory) {
		this.faqCategory = faqCategory;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContent() {
		return faqContent;
	}

	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
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

	public int getFaqViews() {
		return faqViews;
	}

	public void setFaqViews(int faqViews) {
		this.faqViews = faqViews;
	}

	@Override
	public String toString() {
		return "Faq [faqNo=" + faqNo + ", memNo=" + memNo + ", faqCategory=" + faqCategory + ", faqTitle=" + faqTitle
				+ ", faqContent=" + faqContent + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate
				+ ", faqViews=" + faqViews + "]";
	}
	
	
}
