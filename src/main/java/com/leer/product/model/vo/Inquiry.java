package com.leer.product.model.vo;

import java.sql.Date;

public class Inquiry {
	
	private int qNo;
	private int pCode; // db로부터 잘못가져온거임 
	private int memNo;
	private String memName;
	private String qYn;
	private String title;
	private String content; 
	private String qCategory;
	private Date enrollDate;
	private Date modifyDate; 
	private String qAnswer; 
	private String memId; 
	private String pCode2;
	private String pName;
	private String qNo2; 
	private String enrollDate2;
	private String answer;
	
	public Inquiry() {}

	// 상품문의 상세조회
	public Inquiry(int qNo, String memId, String pCode2, String pName, String qCategory, String title, String content,
			Date enrollDate, String answer) {
		super();
		this.qNo = qNo;
		this.memId = memId;
		this.pCode2 = pCode2;
		this.pName = pName;
		this.qCategory = qCategory;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.answer = answer;
	}
	
	public Inquiry(int qNo, String memId, String qCategory, String pCode2, String title, Date enrollDate, String qYn) {
		super();
		this.qNo = qNo;
		this.memId = memId;
		this.qCategory = qCategory;
		this.pCode2 = pCode2;
		this.title = title;
		this.enrollDate = enrollDate;
		this.qYn = qYn;
	}

	public Inquiry(int qNo, int pCode, int memNo, String memName, String qYn, String title, String content, String qCategory,
			Date enrollDate, Date modifyDate, String qAnswer) {
		super();
		this.qNo = qNo;
		this.pCode = pCode;
		this.memNo = memNo;
		this.memName = memName;
		this.qYn = qYn;
		this.title = title;
		this.content = content;
		this.qCategory = qCategory;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.qAnswer = qAnswer;
	}

	public Inquiry(int qNo, String qYn, String title, String memName, Date enrollDate) {
		super();
		this.qNo = qNo;
		this.qYn = qYn;
		this.title = title;
		this.memName = memName;
		this.enrollDate = enrollDate;
	}

	public Inquiry(int qNo) {
	    this.qNo = qNo;
    }

    public int getqNo() {
		return qNo;
	}

	public void setqNo(int qNo) {
		this.qNo = qNo;
	}

	public int getpCode() {
		return pCode;
	}

	public void setpCode(int pCode) {
		this.pCode = pCode;
	}

	public int getMemNo() {
		return memNo;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getqYn() {
		return qYn;
	}

	public void setqYn(String qYn) {
		this.qYn = qYn;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getqCategory() {
		return qCategory;
	}

	public void setqCategory(String qCategory) {
		this.qCategory = qCategory;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getqAnswer() {
		return qAnswer;
	}

	public void setqAnswer(String qAnswer) {
		this.qAnswer = qAnswer;
	}

	public String getqNo2() {
        return qNo2;
    }

    public void setqNo2(String qNo2) {
        this.qNo2 = qNo2;
    }

    public String getMemId() {
        return memId;
    }

    public void setMemId(String memId) {
        this.memId = memId;
    }
    
    public String getpCode2() {
        return pCode2;
    }

    public void setpCode2(String pCode2) {
        this.pCode2 = pCode2;
    }

    public String getpName() {
        return pName;
    }

    public String getEnrollDate2() {
        return enrollDate2;
    }

    public void setEnrollDate2(String enrollDate2) {
        this.enrollDate2 = enrollDate2;
    }
    
    public void setpName(String pName) {
        this.pName = pName;
    }
    
    public String getAnswer() {
        return answer;
    }
    
    public void setAnswer(String answer) {
        this.answer = answer;
    }
    
	@Override
	public String toString() {
		return "Inquiry [qNo=" + qNo + ", pCode=" + pCode + ", memNo=" + memNo + ", memName=" + memName + ", qYn=" + qYn
				+ ", title=" + title + ", content=" + content + ", qCategory=" + qCategory + ", enrollDate="
				+ enrollDate + ", modifyDate=" + modifyDate + ", qAnswer=" + qAnswer + "]";
	}
	
}
