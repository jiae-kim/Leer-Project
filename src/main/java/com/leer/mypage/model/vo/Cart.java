package com.leer.mypage.model.vo;

import java.sql.Date;

public class Cart {
	
	private int memNo;
	private String pCode;
	private int amount;
	private int orCycle;
	private Date cartDate;
	
	public Cart() {}
	
	
	public Cart(int memNo, String pCode, int amount, int orCycle, Date cartDate) {
		super();
		this.memNo = memNo;
		this.pCode = pCode;
		this.amount = amount;
		this.orCycle = orCycle;
		this.cartDate = cartDate;
	}


	@Override
	public String toString() {
		return "Cart [memNo=" + memNo + ", pCode=" + pCode + ", amount=" + amount + ", orCycle=" + orCycle
				+ ", cartDate=" + cartDate + "]";
	}


	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public String getpCode() {
		return pCode;
	}


	public void setpCode(String pCode) {
		this.pCode = pCode;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	public int getOrCycle() {
		return orCycle;
	}


	public void setOrCycle(int orCycle) {
		this.orCycle = orCycle;
	}


	public Date getCartDate() {
		return cartDate;
	}


	public void setCartDate(Date cartDate) {
		this.cartDate = cartDate;
	}
	
	
	
	

}
