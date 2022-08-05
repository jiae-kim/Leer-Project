package com.leer.mtm.model.vo;

import java.sql.Date;

public class Mtm {
	
	private int mtmNo;
	private int memNo;
	private int memNo2;
	private String mtmTitle;
	private String mtmContent;
	private Date enrollDate;
	private Date modifyDate;
	private Date ansDate;
	private String ansContent;
	private String mtmType;
	private String ansYn;
	
	private String memId; // member테이블
	
	public Mtm() {}

	public Mtm(int mtmNo, int memNo, int memNo2, String mtmTitle, String mtmContent, Date enrollDate, Date modifyDate,
			Date ansDate, String ansContent, String mtmType, String ansYn) {
		super();
		this.mtmNo = mtmNo;
		this.memNo = memNo;
		this.memNo2 = memNo2;
		this.mtmTitle = mtmTitle;
		this.mtmContent = mtmContent;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.ansDate = ansDate;
		this.ansContent = ansContent;
		this.mtmType = mtmType;
		this.ansYn = ansYn;
	}

	public Mtm(int mtmNo, int memNo, int memNo2, String mtmTitle, Date enrollDate, String mtmType, String ansYn) {
		super();
		this.mtmNo = mtmNo;
		this.memNo = memNo;
		this.memNo2 = memNo2;
		this.mtmTitle = mtmTitle;
		this.enrollDate = enrollDate;
		this.mtmType = mtmType;
		this.ansYn = ansYn;
	}

	public Mtm(String mtmTitle, String mtmContent, String memId) {
		super();
		this.mtmTitle = mtmTitle;
		this.mtmContent = mtmContent;
		this.memId = memId;
	}

	public int getMtmNo() {
		return mtmNo;
	}

	public void setMtmNo(int mtmNo) {
		this.mtmNo = mtmNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getMemNo2() {
		return memNo2;
	}

	public void setMemNo2(int memNo2) {
		this.memNo2 = memNo2;
	}

	public String getMtmTitle() {
		return mtmTitle;
	}

	public void setMtmTitle(String mtmTitle) {
		this.mtmTitle = mtmTitle;
	}

	public String getMtmContent() {
		return mtmContent;
	}

	public void setMtmContent(String mtmContent) {
		this.mtmContent = mtmContent;
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

	public Date getAnsDate() {
		return ansDate;
	}

	public void setAnsDate(Date ansDate) {
		this.ansDate = ansDate;
	}

	public String getAnsContent() {
		return ansContent;
	}

	public void setAnsContent(String ansContent) {
		this.ansContent = ansContent;
	}

	public String getMtmType() {
		return mtmType;
	}

	public void setMtmType(String mtmType) {
		this.mtmType = mtmType;
	}

	public String getAnsYn() {
		return ansYn;
	}

	public void setAnsYn(String ansYn) {
		this.ansYn = ansYn;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	@Override
	public String toString() {
		return "Mtm [mtmNo=" + mtmNo + ", memNo=" + memNo + ", memNo2=" + memNo2 + ", mtmTitle=" + mtmTitle
				+ ", mtmContent=" + mtmContent + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate
				+ ", ansDate=" + ansDate + ", ansContent=" + ansContent + ", mtmType=" + mtmType + ", ansYn=" + ansYn
				+ ", memId=" + memId + "]";
	}
	
}
