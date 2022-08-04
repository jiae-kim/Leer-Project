package com.leer.community.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.leer.common.MyFileRenamePolicy;
import com.leer.common.model.vo.Attachment;
import com.leer.community.model.service.AdminCommunityService;
import com.leer.community.model.vo.ComuNotice;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class AdminNotiInsertController
 */
@WebServlet("/adInsert.no")
public class AdminNotiInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNotiInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 관리자 공지사항/커뮤공지사항 작성기능
	 * 작성자 김은지
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 10 * 1024 * 1024;
			
			String savePath = session.getServletContext().getRealPath("/resources/upfiles/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());

			String notiType = multiRequest.getParameter("notiType");
			String title = multiRequest.getParameter("title");
			String content = multiRequest.getParameter("content");				
			
			ComuNotice c = new ComuNotice();
			
			c.setNotiType(notiType);
			c.setTitle(title);
			c.setContent(content);
			
			Attachment at = null;
			
			if(multiRequest.getOriginalFileName("upfile") != null) { // 첨부파일 있을경우
				at = new Attachment();
				at.setOriginName(multiRequest.getOriginalFileName("upfile"));
				at.setChangeName(multiRequest.getFilesystemName("upfile"));
				at.setFilePath("resources/upfiles/");
			}
			
			int result = new AdminCommunityService().insertNotice(c, at);
			
			if(result > 0) {
				session.setAttribute("alertMsg", "성공적으로 등록되었습니다.");
				response.sendRedirect(request.getContextPath() + "/adComuNotiList.do?cpage=1");
			}else {
				if(at != null) {
					new File(savePath + at.getChangeName()).delete();
				}
				request.setAttribute("errorMsg", "등록 실패");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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



















