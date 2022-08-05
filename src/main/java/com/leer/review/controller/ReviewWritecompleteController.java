package com.leer.review.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.leer.common.MyFileRenamePolicy;
import com.leer.common.model.vo.Attachment;
import com.leer.review.model.service.ReviewService;
import com.leer.review.model.vo.Review;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class ReviewWritecompleteController
 */
@WebServlet("/reviewWrite")
public class ReviewWritecompleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewWritecompleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

			request.setCharacterEncoding("UTF-8");
		
			// 일반요청방식이 아닌 multipart/form-data로 요청방식은
				// request로부터 바로 값 뽑기 불가능
				
			HttpSession session = request.getSession();
			
			// enctype이 multipart/form-data로 잘 전송되었을 경우 => 전반적인 내용 수행
			
			if(ServletFileUpload.isMultipartContent(request)) {

				
				// 1. 첨부파일 내가 지정한 폴더에 업로드 (파일 저장)
				//    파일 업로드를 위한 라이브러리 : cos.jar (com.oreilly.servlet의 약자)
											//  http://www.servlets.com 가서 라이브러리 다운받아와야됨
				
				// 1_1) 전달되는 파일의 용량 제한 (int maxSize => byte단위) => 10Mbyte로 제한
				/*
				 * byte => kbyte => mbyte => gbyte => tbyte
				 * 
				 * 1kbyte == 1024byte
				 * 1mbyte == 1024kbyte == 1024 * 1024 byte
				 * 
				 */
				int maxSize = 10 * 1024 * 1024;
				
				// 1_2) 전달된 파일을 저장시킬 폴더의 경로 알아내기 (String savePath) 
				String savePath = session.getServletContext().getRealPath("/resources/review_upfiles/");
				
				// 1_3) 전달된 파일의 파일명 수정 및 서버에 업로드(폴더에 저장) 작업
				/*
				 * 	>> HttpServletRequest request => MultipartRequest multiRequest 변환 
				 *  
				 *  위 구문 한줄 실행만으로 넘어온 첨부파일이 있을 경우 파일명 수정된후 지정한 폴더에 무조건 업로드됨
				 *  
				 *  * 파일명 수정해야되는 이유 
				 *  1) 중복된 이름의 파일이 있을경우 덮어씌워질 수 있음 
				 *  2) 파일명에 한글/특수문자/띄어쓰기가 포함될 경우 서버에 따라 문제발생 
				 *  
				 *  기본적으로 파일명이 안겹치도록 수정작업해주는 객체 있음
				 *  => DefaultFileRenamePolicy 객체 (cos.jar에서 제공하는 객체)
				 *  => 내부적으로 해당 클래스에 rename메소드가 실행되면서 파일명 수정작업해줌 
				 *  		rename(원본파일) {
				 *  			기존에 동일한 파일명이 존재할 경우 
				 *  			파일명 뒤에 카운팅된 숫자를 붙여줌 
				 *  			ex) aaa.jpg, aaa1.jpg, aaa2.jpg
				 *  			return 수정파일
				 *  		}
				 *  
				 *  나만의 방식대로 절대 안겹치도록 rename할수 있게 나만의 FileRenamePolicy클래스 만들기
				 *  com.br.common.MyFileRenamePolicy 클래스만들기
				 */
				MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
				
				// 2. DB에 데이터 insert
				
				int memNo = Integer.parseInt(multiRequest.getParameter("memNo"));
				String pname = (String)multiRequest.getParameter("pname");
				int reviewscope = Integer.parseInt(multiRequest.getParameter("reviewscope"));
				String content = (String)multiRequest.getParameter("content");
				String pcode = (String)multiRequest.getParameter("pcode");

				Review r = new Review();
				r.setMemNo(memNo);
				r.setpName(pname);
				r.setReviewScope(reviewscope);
				r.setReviewContent(content);
				r.setP_code(pcode);

				
				//    > 첨부파일의 원본명, 수정명(업로드된파일명), 저장경로  => ATTACHMENT에 INSERT
				Attachment at = null; // 첨에는 null로 초기화, 넘어온 첨부파일이 있다면 생성
				
				// multiRequest.getOriginalFileName("키"); : 넘어온 첨부파일이 있을경우 "원본명" | 없을 경우 null
				if(multiRequest.getOriginalFileName("upfile") != null) { // 넘어온 첨부파일이 있을경우
					at = new Attachment();
					at.setOriginName(multiRequest.getOriginalFileName("upfile"));
					at.setChangeName(multiRequest.getFilesystemName("upfile"));
					at.setFilePath("resources/review_upfiles/");
				}
	
				int result = new ReviewService().WriteReviewComplete(r,at);
				
				
				if(result > 0) {
					// 열려있는 자식창 닫기 (자바스크립트 부모창 자식창 )
					response.getWriter().print("<script>window.opener.location.reload(); window.close();</script>");
					// getWriter() 을 통해 부모객체(현재) 와 자식객체의 연결통로 만들기
					// 이후 script를 진행시켜 자식객체에서 window.opener(부모객체의).location(현재위치).reload(새로고침)
					// 이후 window.close(); 현재 window 닫기
				}else {
					// 첨부파일이 있었을 경우 업로드된 파일 찾아서 삭제시키기
					if(at != null) {
						new File(savePath + at.getChangeName()).delete();
						
					}
				}
		
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
