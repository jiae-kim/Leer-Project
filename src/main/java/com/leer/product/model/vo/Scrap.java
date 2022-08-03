package com.leer.product.model.vo;

import java.sql.Date;

public class Scrap {

	private String pCode;
	private int memNo;
	private String pName;
	private int price;
	private Date scrapDate;
	
	
	public Scrap() {}


	public Scrap(String pCode, int memNo, String pName, int price, Date scrapDate) {
		super();
		this.pCode = pCode;
		this.memNo = memNo;
		this.pName = pName;
		this.price = price;
		this.scrapDate = scrapDate;
	}


	public String getpCode() {
		return pCode;
	}


	public void setpCode(String pCode) {
		this.pCode = pCode;
	}


	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public String getpName() {
		return pName;
	}


	public void setpName(String pName) {
		this.pName = pName;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public Date getScrapDate() {
		return scrapDate;
	}


	public void setScrapDate(Date scrapDate) {
		this.scrapDate = scrapDate;
	}


	@Override
	public String toString() {
		return "Scrap [pCode=" + pCode + ", memNo=" + memNo + ", pName=" + pName + ", price=" + price + ", scrapDate="
				+ scrapDate + "]";
	}
	
	
}
