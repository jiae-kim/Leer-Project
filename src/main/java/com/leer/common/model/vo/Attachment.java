package com.leer.common.model.vo;

import java.sql.Date;

public class Attachment {
	private int fileNo;
	private String refCode;
	private int refBno;
	private String originName;
	private String changeName;
	private String filePath;
	private Date enrillDate;
	private String fileYn;
	private int fileLevel;
	private String fileInfo;
	
	public Attachment() {}
	
	public Attachment(int fileNo, String refCode, int refBno, String originName, String changeName, String filePath,
			Date enrillDate, String fileYn, int fileLevel, String fileInfo) {
		super();
		this.fileNo = fileNo;
		this.refCode = refCode;
		this.refBno = refBno;
		this.originName = originName;
		this.changeName = changeName;
		this.filePath = filePath;
		this.enrillDate = enrillDate;
		this.fileYn = fileYn;
		this.fileLevel = fileLevel;
		this.fileInfo = fileInfo;
	}
	
	public Attachment(int fileNo, String originName, String changeName, String filePath) {
		super();
		this.fileNo = fileNo;
		this.originName = originName;
		this.changeName = changeName;
		this.filePath = filePath;
	}

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public String getRefCode() {
		return refCode;
	}

	public void setRefCode(String refCode) {
		this.refCode = refCode;
	}

	public int getRefBno() {
		return refBno;
	}

	public void setRefBno(int refBno) {
		this.refBno = refBno;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public Date getEnrillDate() {
		return enrillDate;
	}

	public void setEnrillDate(Date enrillDate) {
		this.enrillDate = enrillDate;
	}

	public String getFileYn() {
		return fileYn;
	}

	public void setFileYn(String fileYn) {
		this.fileYn = fileYn;
	}

	public int getFileLevel() {
		return fileLevel;
	}

	public void setFileLevel(int fileLevel) {
		this.fileLevel = fileLevel;
	}

	public String getFileInfo() {
		return fileInfo;
	}

	public void setFileInfo(String fileInfo) {
		this.fileInfo = fileInfo;
	}

	@Override
	public String toString() {
		return "Attachment [fileNo=" + fileNo + ", refCode=" + refCode + ", refBno=" + refBno + ", originName="
				+ originName + ", changeName=" + changeName + ", filePath=" + filePath + ", enrillDate=" + enrillDate
				+ ", fileYn=" + fileYn + ", fileLevel=" + fileLevel + ", fileInfo=" + fileInfo + "]";
	}
	
	
	
	
}
