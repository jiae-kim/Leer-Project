package com.leer.community.model.vo;

public class ComuTag {
	
	private String tagCode;
	private String tagName;
	private String tagYN;
	
	
	@Override
	public String toString() {
		return "comuTag [tagCode=" + tagCode + ", tagName=" + tagName + ", tagYN=" + tagYN + "]";
	}


	public ComuTag(String tagCode, String tagName, String tagYN) {
		super();
		this.tagCode = tagCode;
		this.tagName = tagName;
		this.tagYN = tagYN;
	}


	public ComuTag() {}


	public String getTagCode() {
		return tagCode;
	}


	public void setTagCode(String tagCode) {
		this.tagCode = tagCode;
	}


	public String getTagName() {
		return tagName;
	}


	public void setTagName(String tagName) {
		this.tagName = tagName;
	}


	public String getTagYN() {
		return tagYN;
	}


	public void setTagYN(String tagYN) {
		this.tagYN = tagYN;
	}
	
	
	
	
	
}
