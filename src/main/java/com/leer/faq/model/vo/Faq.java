package com.leer.faq.model.vo;

import java.sql.Date;

public class Faq {
	
	private int faqNo;
	private int memNo;
	private String faqCategory; // DB에 없음 
	private String faqTitle;
	private String faqContent;
	private Date enrollDate;
	private Date modifyDate;
	private int faqViews;
	private String faqYn;
	private int count;
	private String memId; // join : MEMEBER 테이블
	private String enrollDate2; // faq 등록시 date 타입 대신 
	private int categoryNo; // DB에서 카테고리 명과 타입 변경함 
	private String categoryName; // join : FAQ_CATEGORY 테이블
	
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

	// FAQ 전체조회
	public Faq(int faqNo, String categoryName, String faqTitle, Date enrollDate, int count) {
		super();
		this.faqNo = faqNo;
		this.categoryName = categoryName;
		this.faqTitle = faqTitle;
		this.enrollDate = enrollDate;
		this.count = count;
	}

	// FAQ 상세조회
	public Faq(int faqNo, String categoryName, String memId, Date enrollDate, Date modifyDate, int count, String faqTitle, String faqContent 
			) {
		super();
		this.faqNo = faqNo;
		this.categoryName = categoryName;
		this.memId = memId;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.count = count;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
	}
	
	public Faq(int faqNo, int categoryNo, String faqTitle, Date enrollDate, int count) {
		super();
		this.faqNo = faqNo;
		this.categoryNo = categoryNo;
		this.faqTitle = faqTitle;
		this.enrollDate = enrollDate;
		this.count = count;
	}
	
	

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
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

	public String getFaqYn() {
		return faqYn;
	}
	
	public void setFaqYn(String faqYn) {
		this.faqYn = faqYn;
	}
	
	public int getCount() {
		return count;
	}
	
	public void setCount(int count) {
		this.count = count;
	}
	
	public String getMemId() {
		return memId;
	}
	
	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	public String getEnrollDate2() {
		return enrollDate2;
	}

	public void setEnrollDate2(String enrollDate2) {
		this.enrollDate2 = enrollDate2;
	}
		
	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public String toString() {
		return "Faq [faqNo=" + faqNo + ", memNo=" + memNo + ", faqCategory=" + faqCategory + ", faqTitle=" + faqTitle
				+ ", faqContent=" + faqContent + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate
				+ ", faqViews=" + faqViews + "]";
	}
	
	
}
