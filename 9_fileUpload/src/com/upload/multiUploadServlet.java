package com.upload;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/uploads.do")
public class multiUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String saveDirectory = request.getServletContext().getRealPath("upload");
		int fileSize = 5 * 1024 * 1024;
		
		try {
			MultipartRequest multi = new MultipartRequest(
											request, 
											saveDirectory,
											fileSize,
											"utf-8",
											new DefaultFileRenamePolicy());						
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()) {
				String file = (String)files.nextElement();
				String fileName = multi.getFilesystemName(file); // 파일명
				String oriFileName = multi.getOriginalFileName(file); // 원본 파일명
				
				System.out.println("파일명: " + fileName);
				System.out.println("원본 파일명: " + oriFileName);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
