package com.leer.community.model.vo;

import java.sql.Date;

public class ComuLike {

	
	private int memNo;
	private int comuNo;
	private Date likeDate;
	
	public ComuLike() {}
	
	
	public ComuLike(int memNo, int comuNo, Date likeDate) {
		super();
		this.memNo = memNo;
		this.comuNo = comuNo;
		this.likeDate = likeDate;
	}

	



	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public int getComuNo() {
		return comuNo;
	}


	public void setComuNo(int comuNo) {
		this.comuNo = comuNo;
	}


	public Date getLikeDate() {
		return likeDate;
	}


	public void setLikeDate(Date likeDate) {
		this.likeDate = likeDate;
	}


	@Override
	public String toString() {
		return "comuLike [memNo=" + memNo + ", comuNo=" + comuNo + ", likeDate=" + likeDate + "]";
	}
	
	
	
}
