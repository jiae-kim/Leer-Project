package com.leer.member.model.vo;

import java.sql.Date;

public class Address {

	private int addressNo;
	private int memNo;
	private String addressName;
	private String phone;
	private String address;
	private Date addressEnroll;
	private String mainAddress;
	
	
	
	
	public Address() {	}


	

	public Address(int addressNo, int memNo, String addressName, String phone, String address, Date addressEnroll,
			String mainAddress) {
		super();
		this.addressNo = addressNo;
		this.memNo = memNo;
		this.addressName = addressName;
		this.phone = phone;
		this.address = address;
		this.addressEnroll = addressEnroll;
		this.mainAddress = mainAddress;
	}




	@Override
	public String toString() {
		return "Address [addressNo=" + addressNo + ", memNo=" + memNo + ", addressName=" + addressName + ", phone="
				+ phone + ", address=" + address + ", addressEnroll=" + addressEnroll + ", mainAddress=" + mainAddress
				+ "]";
	}




	public int getAddressNo() {
		return addressNo;
	}




	public void setAddressNo(int addressNo) {
		this.addressNo = addressNo;
	}




	public int getMemNo() {
		return memNo;
	}




	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}




	public String getAddressName() {
		return addressName;
	}




	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}




	public String getPhone() {
		return phone;
	}




	public void setPhone(String phone) {
		this.phone = phone;
	}




	public String getAddress() {
		return address;
	}




	public void setAddress(String address) {
		this.address = address;
	}




	public Date getAddressEnroll() {
		return addressEnroll;
	}




	public void setAddressEnroll(Date addressEnroll) {
		this.addressEnroll = addressEnroll;
	}




	public String getMainAddress() {
		return mainAddress;
	}




	public void setMainAddress(String mainAddress) {
		this.mainAddress = mainAddress;
	}
	
	
	
	
	
}
