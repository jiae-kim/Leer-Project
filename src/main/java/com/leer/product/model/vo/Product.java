package com.leer.product.model.vo;

import java.sql.Date;

public class Product {

	private String pCode;
	private int categoryNo;
	private String pName;
	private int price; 
	private String publisher;
	private Date publishMonth;
	private int pStock;
	private String supYn;
	private int point;
	private int deliFee; 
	private String sellYn;
	private String imageUrl1;
	private String imageUrl2; 
	
	public Product() {}

	public Product(String pCode, int categoryNo, String pName, int price, String publisher, Date publishMonth,
			int pStock, String supYn, int point, int deliFee, String sellYn, String imageUrl1, String imageUrl2) {
		super();
		this.pCode = pCode;
		this.categoryNo = categoryNo;
		this.pName = pName;
		this.price = price;
		this.publisher = publisher;
		this.publishMonth = publishMonth;
		this.pStock = pStock;
		this.supYn = supYn;
		this.point = point;
		this.deliFee = deliFee;
		this.sellYn = sellYn;
		this.imageUrl1 = imageUrl1;
		this.imageUrl2 = imageUrl2;
	}

	public Product(int categoryNo, String pName, int price, Date publishMonth, String imageUrl1) {
		super();
		this.categoryNo = categoryNo;
		this.pName = pName;
		this.price = price;
		this.publishMonth = publishMonth;
		this.imageUrl1 = imageUrl1;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
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

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public Date getPublishMonth() {
		return publishMonth;
	}

	public void setPublishMonth(Date publishMonth) {
		this.publishMonth = publishMonth;
	}

	public int getpStock() {
		return pStock;
	}

	public void setpStock(int pStock) {
		this.pStock = pStock;
	}

	public String getSupYn() {
		return supYn;
	}

	public void setSupYn(String supYn) {
		this.supYn = supYn;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getDeliFee() {
		return deliFee;
	}

	public void setDeliFee(int deliFee) {
		this.deliFee = deliFee;
	}

	public String getSellYn() {
		return sellYn;
	}

	public void setSellYn(String sellYn) {
		this.sellYn = sellYn;
	}

	public String getImageUrl1() {
		return imageUrl1;
	}

	public void setImageUrl1(String imageUrl1) {
		this.imageUrl1 = imageUrl1;
	}

	public String getImageUrl2() {
		return imageUrl2;
	}

	public void setImageUrl2(String imageUrl2) {
		this.imageUrl2 = imageUrl2;
	}

	@Override
	public String toString() {
		return "Product [pCode=" + pCode + ", categoryNo=" + categoryNo + ", pName=" + pName + ", price=" + price
				+ ", publisher=" + publisher + ", publishMonth=" + publishMonth + ", pStock=" + pStock + ", supYn="
				+ supYn + ", point=" + point + ", deliFee=" + deliFee + ", sellYn=" + sellYn + ", imageUrl1="
				+ imageUrl1 + ", imageUrl2=" + imageUrl2 + "]";
	}
	
	
}
