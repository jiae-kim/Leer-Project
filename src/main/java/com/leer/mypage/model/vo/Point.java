package com.leer.mypage.model.vo;

import java.sql.Date;

public class Point {
	
	private int pointNo;
	private int memNo;
	private int point;
	private String pointUpdate;
	private Date date;
	private String history;
	
	public Point() {}
	
	public Point(int pointNo, int memNo, int point, String pointUpdate, Date date, String history) {
		super();
		this.pointNo = pointNo;
		this.memNo = memNo;
		this.point = point;
		this.pointUpdate = pointUpdate;
		this.date = date;
		this.history = history;
	}

	@Override
	public String toString() {
		return "Point [pointNo=" + pointNo + ", memNo=" + memNo + ", point=" + point + ", pointUpdate=" + pointUpdate
				+ ", date=" + date + ", history=" + history + "]";
	}

	public int getPointNo() {
		return pointNo;
	}

	public void setPointNo(int pointNo) {
		this.pointNo = pointNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getPointUpdate() {
		return pointUpdate;
	}

	public void setPointUpdate(String pointUpdate) {
		this.pointUpdate = pointUpdate;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getHistory() {
		return history;
	}

	public void setHistory(String history) {
		this.history = history;
	}
	
	
	
	

}
