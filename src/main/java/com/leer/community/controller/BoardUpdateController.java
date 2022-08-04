package com.leer.community.controller;

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
import com.leer.community.model.service.CommunityService;
import com.leer.community.model.vo.ComuBoard;
import com.leer.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class BoardUpdateController
 */
@WebServlet("/comuUpdate.bo")
public class BoardUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 10 * 1024 * 1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/comu_upfiles/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			int comuNo = Integer.parseInt(multiRequest.getParameter("no"));
			String category = multiRequest.getParameter("category");
			String[] allTag = multiRequest.getParameterValues("tag");
			String title = multiRequest.getParameter("title");
			String content = multiRequest.getParameter("title");
			
			int memNo = ((Member)session.getAttribute("loginUser")).getMemNo();
			Member m = new CommunityService().selectMyCount(memNo);
			request.setAttribute("m", m);
			
			String tag  = String.join(",", allTag);
			
			ComuBoard cb = new ComuBoard();
			
			cb.setComuNo(comuNo);
			cb.setCategoryNo(category);
			cb.setTag(tag);
			cb.setTitle(title);
			cb.setContent(content);
			
			
			Attachment at = null;
			
			if(multiRequest.getOriginalFileName("comuupfile") != null) {
				at = new Attachment();
				at.setOriginName(multiRequest.getOriginalFileName("comuupfile"));
				at.setChangeName(multiRequest.getFilesystemName("comuupfile"));
				at.setFilePath("resources/comu_upfiles");
				
				if(multiRequest.getParameter("originFileNo") != null) {
					
					at.setFileNo( Integer.parseInt(multiRequest.getParameter("originFileNo")));
				}else {
					// 기존의 첨부파일이 없었을 경우 => Insert Attachment(현재게시글번호)
					at.setRefBno(comuNo);
				}
				// 새로 넘어온 첨부파일이 없었다면 at는 여전히 null
			}
				int result = new CommunityService().updateBoard(cb, at);
				
				if(result > 0) {
					request.getSession().setAttribute("alertMsg", "성공적으로 수정되었습니다.");
					response.sendRedirect(request.getContextPath() + "/detail.bo?no=" + comuNo);
				} else {
					request.getSession().setAttribute("alertMsg", "수정하는데 실패 하였습니다.");
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
