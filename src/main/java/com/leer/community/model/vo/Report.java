package com.leer.community.model.vo;

import java.sql.Date;

public class Report {
	
	private int reportNo;
	private int memNo;
	private String reportClass; 
	private String reportCategory;
	private int reportedComu;
	private int reportedNo;
	private String reportContent;
	private Date reportDate;
	private String reportYn;
	
	public Report() {}

	public Report(int reportNo, int memNo, String reportClass, String reportCategory, int reportedComu, int reportedNo,
			String reportContent, Date reportDate, String reportYn) {
		super();
		this.reportNo = reportNo;
		this.memNo = memNo;
		this.reportClass = reportClass;
		this.reportCategory = reportCategory;
		this.reportedComu = reportedComu;
		this.reportedNo = reportedNo;
		this.reportContent = reportContent;
		this.reportDate = reportDate;
		this.reportYn = reportYn;
	}

	public Report(int reportNo, int memNo, String reportClass, String reportCategory, int reportedNo, Date reportDate,
			String reportYn) {
		super();
		this.reportNo = reportNo;
		this.memNo = memNo;
		this.reportClass = reportClass;
		this.reportCategory = reportCategory;
		this.reportedNo = reportedNo;
		this.reportDate = reportDate;
		this.reportYn = reportYn;
	}

	public Report(int reportNo, int memNo, String reportClass, String reportCategory, String reportContent) {
		super();
		this.reportNo = reportNo;
		this.memNo = memNo;
		this.reportClass = reportClass;
		this.reportCategory = reportCategory;
		this.reportContent = reportContent;
	}

	public int getReportNo() {
		return reportNo;
	}

	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getReportClass() {
		return reportClass;
	}

	public void setReportClass(String reportClass) {
		this.reportClass = reportClass;
	}

	public String getReportCategory() {
		return reportCategory;
	}

	public void setReportCategory(String reportCategory) {
		this.reportCategory = reportCategory;
	}

	public int getReportedComu() {
		return reportedComu;
	}

	public void setReportedComu(int reportedComu) {
		this.reportedComu = reportedComu;
	}

	public int getReportedNo() {
		return reportedNo;
	}

	public void setReportedNo(int reportedNo) {
		this.reportedNo = reportedNo;
	}

	public String getReportContent() {
		return reportContent;
	}

	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}

	public Date getReportDate() {
		return reportDate;
	}

	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}

	public String getReportYn() {
		return reportYn;
	}

	public void setReportYn(String reportYn) {
		this.reportYn = reportYn;
	}

	@Override
	public String toString() {
		return "Report [reportNo=" + reportNo + ", memNo=" + memNo + ", reportClass=" + reportClass
				+ ", reportCategory=" + reportCategory + ", reportedComu=" + reportedComu + ", reportedNo=" + reportedNo
				+ ", reportContent=" + reportContent + ", reportDate=" + reportDate + ", reportYn=" + reportYn + "]";
	}

}
