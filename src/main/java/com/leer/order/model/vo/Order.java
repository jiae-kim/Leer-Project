package com.leer.order.model.vo;

import java.sql.Date;

public class Order {
	
	private String orNo;
	private int memNo;
	private int orPrice;
	private int orPoint;
	private String reviewYn;
	private String orYn;
	private String orReturn;
	private String returnReson;
	private String takeName;
	private String phone;
	private String location;
	private String parcelName;
	private String parcelNum;
	private int parcelStatus;
	private String payment;
	private Date orDate;
	
	private String pName;
	private Date enrollDate;
	
	public Order() {}

	public Order(String orNo, int memNo, int orPrice, int orPoint, String reviewYn, String orYn, String orReturn,
			String returnReson, String takeName, String phone, String location, String parcelName, String parcelNum,
			int parcelStatus, String payment, Date orDate) {
		super();
		this.orNo = orNo;
		this.memNo = memNo;
		this.orPrice = orPrice;
		this.orPoint = orPoint;
		this.reviewYn = reviewYn;
		this.orYn = orYn;
		this.orReturn = orReturn;
		this.returnReson = returnReson;
		this.takeName = takeName;
		this.phone = phone;
		this.location = location;
		this.parcelName = parcelName;
		this.parcelNum = parcelNum;
		this.parcelStatus = parcelStatus;
		this.payment = payment;
		this.orDate = orDate;
	}

	public Order(String orNo, Date orDate, String pName, Date enrollDate) {
		super();
		this.orNo = orNo;
		this.orDate = orDate;
		this.pName = pName;
		this.enrollDate = enrollDate;
	}

	public String getOrNo() {
		return orNo;
	}

	public void setOrNo(String orNo) {
		this.orNo = orNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getOrPrice() {
		return orPrice;
	}

	public void setOrPrice(int orPrice) {
		this.orPrice = orPrice;
	}

	public int getOrPoint() {
		return orPoint;
	}

	public void setOrPoint(int orPoint) {
		this.orPoint = orPoint;
	}

	public String getReviewYn() {
		return reviewYn;
	}

	public void setReviewYn(String reviewYn) {
		this.reviewYn = reviewYn;
	}

	public String getOrYn() {
		return orYn;
	}

	public void setOrYn(String orYn) {
		this.orYn = orYn;
	}

	public String getOrReturn() {
		return orReturn;
	}

	public void setOrReturn(String orReturn) {
		this.orReturn = orReturn;
	}

	public String getReturnReson() {
		return returnReson;
	}

	public void setReturnReson(String returnReson) {
		this.returnReson = returnReson;
	}

	public String getTakeName() {
		return takeName;
	}

	public void setTakeName(String takeName) {
		this.takeName = takeName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getParcelName() {
		return parcelName;
	}

	public void setParcelName(String parcelName) {
		this.parcelName = parcelName;
	}

	public String getParcelNum() {
		return parcelNum;
	}

	public void setParcelNum(String parcelNum) {
		this.parcelNum = parcelNum;
	}

	public int getParcelStatus() {
		return parcelStatus;
	}

	public void setParcelStatus(int parcelStatus) {
		this.parcelStatus = parcelStatus;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public Date getOrDate() {
		return orDate;
	}

	public void setOrDate(Date orDate) {
		this.orDate = orDate;
	}
	
	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	@Override
	public String toString() {
		return "Order [orNo=" + orNo + ", memNo=" + memNo + ", orPrice=" + orPrice + ", orPoint=" + orPoint
				+ ", reviewYn=" + reviewYn + ", orYn=" + orYn + ", orReturn=" + orReturn + ", returnReson="
				+ returnReson + ", takeName=" + takeName + ", phone=" + phone + ", location=" + location
				+ ", parcelName=" + parcelName + ", parcelNum=" + parcelNum + ", parcelStatus=" + parcelStatus
				+ ", payment=" + payment + ", orDate=" + orDate + ", pName=" + pName + ", enrollDate=" + enrollDate
				+ "]";
	}
	
}
