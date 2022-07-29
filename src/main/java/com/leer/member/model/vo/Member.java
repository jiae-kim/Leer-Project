package com.leer.member.model.vo;

import java.sql.Date;

public class Member {
	
	private int memNo;
	private String memId;
	private String memPwd;
	private String nickname;
	private String memName;
	private String memBirth;
	private String phone;
	private String email;
	private String address;
	private String categoryNo;
	private int point;
	private String memStatus;
	private Date enrollDate;
	private String admin;
	private String profileLink;
	
	
	
	
	public Member() {}

	
	

	public Member(int memNo, String memId, String memPwd, String nickname, String memName, String memBirth,
			String phone, String email, String address, String categoryNo, int point, String memStatus, Date enrollDate,
			String admin, String profileLink) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.nickname = nickname;
		this.memName = memName;
		this.memBirth = memBirth;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.categoryNo = categoryNo;
		this.point = point;
		this.memStatus = memStatus;
		this.enrollDate = enrollDate;
		this.admin = admin;
		this.profileLink = profileLink;
	}
	
	
	
	
	public Member(int memNo, String memId, String memPwd, String nickname, String memName, String memBirth,
			String phone, String email, String address, String categoryNo, int point, String memStatus, String admin) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.nickname = nickname;
		this.memName = memName;
		this.memBirth = memBirth;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.categoryNo = categoryNo;
		this.point = point;
		this.memStatus = memStatus;
		this.admin = admin;
	}




	public Member(int memNo, String memId, String nickname, String memName, String phone, String email, String address,
			int point, Date enrollDate) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.nickname = nickname;
		this.memName = memName;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.point = point;
		this.enrollDate = enrollDate;
	}
	
	
	
	
	public Member(int memNo, String memId, String memName, String phone, String address, int point, Date enrollDate) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memName = memName;
		this.phone = phone;
		this.address = address;
		this.point = point;
		this.enrollDate = enrollDate;
	}
	
	
	
	
	
	


	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemBirth() {
		return memBirth;
	}

	public void setMemBirth(String memBirth) {
		this.memBirth = memBirth;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(String categoryNo) {
		this.categoryNo = categoryNo;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getMemStatus() {
		return memStatus;
	}

	public void setMemStatus(String memStatus) {
		this.memStatus = memStatus;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public String getProfileLink() {
		return profileLink;
	}

	public void setProfileLink(String profileLink) {
		this.profileLink = profileLink;
	}
	
	
	

	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", nickname=" + nickname
				+ ", memName=" + memName + ", memBirth=" + memBirth + ", phone=" + phone + ", email=" + email
				+ ", address=" + address + ", categoryNo=" + categoryNo + ", point=" + point + ", memStatus="
				+ memStatus + ", enrollDate=" + enrollDate + ", admin=" + admin + ", profileLink=" + profileLink + "]";
	}

}
