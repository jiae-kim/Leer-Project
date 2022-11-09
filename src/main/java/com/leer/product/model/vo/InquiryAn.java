package com.leer.product.model.vo;

public class InquiryAn {
	
	private int anNo;
	private int qNo;
	private String content;
	private String anYn;
	
	public InquiryAn() {}

	public InquiryAn(int anNo, int qNo, String content, String anYn) {
        super();
        this.anNo = anNo;
        this.qNo = qNo;
        this.content = content;
        this.anYn = anYn;
    }
	
    public int getAnNo() {
        return anNo;
    }

    public void setAnNo(int anNo) {
        this.anNo = anNo;
    }

    public int getqNo() {
        return qNo;
    }

    public void setqNo(int qNo) {
        this.qNo = qNo;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAnYn() {
        return anYn;
    }

    public void setAnYn(String anYn) {
        this.anYn = anYn;
    }

    @Override
    public String toString() {
        return "InquiryAn [anNo=" + anNo + ", qNo=" + qNo + ", content=" + content + ", anYn=" + anYn + "]";
    }
	
}
