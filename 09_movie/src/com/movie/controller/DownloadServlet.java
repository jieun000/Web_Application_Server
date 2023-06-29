package com.movie.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/download")
public class DownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String saveDirector = request.getServletContext().getRealPath("images");
		String title = request.getParameter("title"); // 다운받을 때 파일명
		String poster = request.getParameter("poster"); // 실제 서버에 저장된 파일명
		
		// '아바타.jpg'로 받기 위함
		title += ".jpg";
		
		try {
			// File file = new File(경로, 파일명)
			File file = new File(saveDirector, poster);
			InputStream is = new FileInputStream(file);
			
			String client = request.getHeader("user-agent"); // 사용자 브라우저를 알려줌
			if(client.indexOf("WOW64") == -1) {
				title = new String(title.getBytes("utf-8"), "iso-8859-1"); // 나머지 모든 브라우저
			} else {
				title = new String(title.getBytes("ksc5601"), "iso-8859-1"); // 익스플로러용
			}
			
			response.reset();
			response.setContentType("application/octet-stream"); // 8비트짜리 바이너리 데이터
			response.setHeader("content-Disposition", "attachment; filename=\"" + title + "\"");
																// filename="제목"의 목적
			response.setHeader("content-Length", ""+file.length());
												// Long.toString(file.length()); 빈칸 대신 이걸로 문자 변환해도 됨
			OutputStream os = response.getOutputStream();
			
			//byte[] b = new byte[배열 크기 설정]
			byte[] b = new byte[(int)file.length()]; //-> 일이삼사오 os.write(b,0,3)-> 일이삼
			int readBuffer = 0;
			
			while( (readBuffer = is.read(b)) > 0 ) {
				os.write(b, 0, readBuffer); // os.write(b에 보냄, 0부터, readBuffer개까지)
			}
			os.close();
			is.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
