package com.leer.product.model.vo;

import java.sql.Date;

public class Product {

	private String pCode;
	private int categoryNo;
	private String pName;
	private int price; 
	private String publisher;
	private Date publishMonth;
	private int month;
	private int pStock;
	private String supYn;
	private int point;
	private int deliFee; 
	private String sellYn;
	private String imageUrl1;
	private String imageUrl2;
	private String imageUrlS;
	private Date enrollDate;
	private String publishMonth2; // 상품등록 시 출간일 String형
	private double point2; // 상품등록 시 포인트 소수로 들어감
	private String categoryNo2;
	private String deliFee2;
	
	public Product() {}

	public Product(String pCode, int categoryNo, String pName, int price, String publisher, Date publishMonth,
			int pStock, String supYn, int point, int deliFee, String sellYn, String imageUrl1, String imageUrl2, String imageUrlS) {
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
		this.imageUrlS = imageUrlS;
	}

	public Product(String pCode, int categoryNo, String pName, int price, Date publishMonth, String imageUrl1) {
		super();
		this.pCode = pCode;
		this.categoryNo = categoryNo;
		this.pName = pName;
		this.price = price;
		this.publishMonth = publishMonth;
		this.imageUrl1 = imageUrl1;
	}

	public Product(String pCode, String pName, int price, String publisher, int month, int pStock, String supYn,
			String imageUrl1, String imageUrl2, String imageUrlS) {
		super();
		this.pCode = pCode;
		this.pName = pName;
		this.price = price;
		this.publisher = publisher;
		this.month = month;
		this.pStock = pStock;
		this.supYn = supYn;
		this.imageUrl1 = imageUrl1;
		this.imageUrl2 = imageUrl2;
		this.imageUrlS = imageUrlS; 
		
	}

	/* [제품관리 - 상품조회]
	 * 상품 전체 조회 / 수정버튼
	 * 작성자 : 김지애
	 */
	public Product(String pName, int categoryNo, String pCode, String publisher, Date publishMonth, int price, Date enrollDate,
			int pStock) {
		super();
		this.pName = pName;
		this.categoryNo = categoryNo;
		this.pCode = pCode;
		this.publisher = publisher;
		this.publishMonth = publishMonth;
		this.price = price;
		this.enrollDate = enrollDate;
		this.pStock = pStock;
	}
	
	public Product(String pName, String publishMonth2, String publisher, int categoryNo, String pCode, int price, int pStock, 
			int deliFee, double point2, String imageUrl1, String imageUrl2, String imageUrlS) {
		super();
		this.pName = pName;
		this.publishMonth2 = publishMonth2;
		this.publisher = publisher;
		this.categoryNo = categoryNo;
		this.pCode = pCode;
		this.price = price;
		this.pStock = pStock;
		this.deliFee = deliFee;
		this.point2 = point2;
		this.imageUrl1 = imageUrl1;
		this.imageUrl2 = imageUrl2;
		this.imageUrlS = imageUrlS;
	}

	
	
	//찜하기
	public Product(String pCode, String pName, int price, String imageUrl1) {
		super();
		this.pCode = pCode;
		this.pName = pName;
		this.price = price;
		this.imageUrl1 = imageUrl1;
	}

	
	
	
	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
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

	public String getImageUrlS() {
		return imageUrlS;
	}

	public void setImageUrlS(String imageUrlS) {
		this.imageUrlS = imageUrlS;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	/* [제품관리] - 상품등록
	 * 출간일 입력시 String형으로 입력
	 * 작성자 : 김지애
	 */	
	public String getPublishMonth2() {
		return publishMonth2;
	}
	
	public void setPublishMonth2(String publishMonth2) {
		this.publishMonth2 = publishMonth2;
	}
	
	/* [제품관리] - 상품등록
	 * 포인트 입력시 Double형으로 입력
	 * 작성자 : 김지애
	 */	
	public double getPoint2() {
		return point2;
	}

	public void setPoint2(double point2) {
		this.point2 = point2;
	}

	public String getCategoryNo2() {
		return categoryNo2;
	}

	public void setCategoryNo2(String categoryNo2) {
		this.categoryNo2 = categoryNo2;
	}

	public String getDeliFee2() {
		return deliFee2;
	}

	public void setDeliFee2(String deliFee2) {
		this.deliFee2 = deliFee2;
	}

	@Override
	public String toString() {
		return "Product [pCode=" + pCode + ", categoryNo=" + categoryNo + ", pName=" + pName + ", price=" + price
				+ ", publisher=" + publisher + ", publishMonth=" + publishMonth + ", month=" + month + ", pStock="
				+ pStock + ", supYn=" + supYn + ", point=" + point + ", deliFee=" + deliFee + ", sellYn=" + sellYn
				+ ", imageUrl1=" + imageUrl1 + ", imageUrl2=" + imageUrl2 + ", imageUrlS=" + imageUrlS + ", enrollDate="
				+ enrollDate + ", publishMonth2=" + publishMonth2 + ", point2=" + point2 + "]";
	}

	

	

	
}
