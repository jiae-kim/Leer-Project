package com.leer.faq.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.leer.common.JDBCTemplate.*;

import com.leer.common.model.vo.FaqCategory;
import com.leer.common.model.vo.PageInfo;
import com.leer.faq.model.dao.AdminFaqDao;
import com.leer.faq.model.vo.Faq;

public class AdminFaqService {

	/* [고객센터 - FAQ]
	 * FAQ 전체조회
	 * 작성자 김지애
	 */
	public ArrayList<Faq> selectFaqList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Faq> list = new AdminFaqDao().selectFaqList(conn, pi);
		close(conn);
		return list;
	}

	/* [고객센터 - FAQ]
	 * FAQ 전체조회 : 페이징 처리
	 * 작성자 김지애
	 */
	public int selectFaqListCount() {
		Connection conn = getConnection();
		int listCount = new AdminFaqDao().selectFaqListCount(conn);
		close(conn);
		return listCount;
	}

	/* [고객센터 - FAQ]
	 * FAQ 상세조회 : 조회수 증가
	 * 작성자 김지애
	 */
	public int increaseCount(int faqNo) {
		Connection conn = getConnection();
		int result = new AdminFaqDao().increaseCount(conn, faqNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	/* [고객센터 - FAQ]
	 * FAQ 상세조회 
	 * 작성자 김지애
	 */
	public Faq selectFaq(int faqNo) {
		Connection conn = getConnection();
		Faq f = new AdminFaqDao().selectFaq(conn, faqNo);
		close(conn);
		return f;
	}

	/* [고객센터 - FAQ]
	 * FAQ 등록 : 카테고리 조회
	 * 작성자 김지애
	 */
	public ArrayList<FaqCategory> selectFaqCategoryList() {
		Connection conn = getConnection();
		ArrayList<FaqCategory> list = new AdminFaqDao().selectFaqCategoryList(conn);
		close(conn);
		return list;
	}
	
	/* [고객센터 - FAQ]
	 * FAQ 등록
	 * 작성자 김지애
	 */
	public int FaqInsertPage(Faq f) {
		Connection conn = getConnection();
		int result = new AdminFaqDao().FaqInsertPage(conn, f);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

    /* [고객센터 - FAQ]
     * FAQ 삭제
     * 작성자 김지애
     */
    public int deleteFaq(int faqNo) {
        Connection conn = getConnection();
        int result = new AdminFaqDao().deleteFaq(conn, faqNo);
        
        if(result > 0) {
            commit(conn);
        }else {
            rollback(conn);
        }
        close(conn);
        return result;
    }

	
}
