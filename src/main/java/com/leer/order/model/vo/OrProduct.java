package com.leer.order.model.vo;

public class OrProduct {

	private String orNo;
	private String pCode;
	private int orCycle;
	private int orAmount;
	
	public OrProduct() {}

	public OrProduct(String orNo, String pCode, int orCycle, int orAmount) {
		super();
		this.orNo = orNo;
		this.pCode = pCode;
		this.orCycle = orCycle;
		this.orAmount = orAmount;
	}

	public String getOrNo() {
		return orNo;
	}

	public void setOrNo(String orNo) {
		this.orNo = orNo;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public int getOrCycle() {
		return orCycle;
	}

	public void setOrCycle(int orCycle) {
		this.orCycle = orCycle;
	}

	public int getOrAmount() {
		return orAmount;
	}

	public void setOrAmount(int orAmount) {
		this.orAmount = orAmount;
	}

	@Override
	public String toString() {
		return "OrProduct [orNo=" + orNo + ", pCode=" + pCode + ", orCycle=" + orCycle + ", orAmount=" + orAmount + "]";
	}
	
}
