package com.leer.common.model.vo;

public class FaqCategory {
	private int categoryNo;
	private String cateogryName;
	
	public FaqCategory() {}

	public FaqCategory(int categoryNo, String cateogryName) {
		super();
		this.categoryNo = categoryNo;
		this.cateogryName = cateogryName;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public String getCateogryName() {
		return cateogryName;
	}

	public void setCateogryName(String cateogryName) {
		this.cateogryName = cateogryName;
	}

	@Override
	public String toString() {
		return "FaqCategory [categoryNo=" + categoryNo + ", cateogryName=" + cateogryName + "]";
	}
	
}
