package com.upload;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload.do")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String savePath = "upload"; // 저장 할 폴더명
		int uploadFileSize = 5 * 1024 * 1024; // 업로드 파일 최대 크기 (바이트 단위)
		String encType = "utf-8";
		response.setContentType("text/html; charset=utf-8");
		
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath); // 서버에 저장되는 경로
//		System.out.println(uploadFilePath); // 경로 확인용 테스트 코드
		
		try {
			MultipartRequest multi = new MultipartRequest(
										request, 
										uploadFilePath, // 경로
										uploadFileSize, // 최대 크기
										encType, // 인코딩 타입
										new DefaultFileRenamePolicy()); // 중복 파일 새 이름 처리
		
			String name = multi.getParameter("name");
			String title = multi.getParameter("title");
			String fileName = multi.getFilesystemName("upload");
			
			PrintWriter out = response.getWriter();
			
			out.println("이름: " + name + "<br>");
			out.println("제목: " + title + "<br>");
			out.println("파일명: " + fileName + "<br>");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
