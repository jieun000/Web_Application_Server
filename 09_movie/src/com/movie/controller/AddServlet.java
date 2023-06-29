package com.movie.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.movie.dao.MovieDAO;
import com.movie.vo.MovieVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/add.do")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		String saveDirectory = request.getServletContext().getRealPath("images");
		int size = 20 * 1024 * 1024;
		
		// cos library
		MultipartRequest multi = new MultipartRequest(request, saveDirectory, size, "utf-8", new DefaultFileRenamePolicy());
		
		MovieVO vo = new MovieVO();
		
		vo.setTitle(multi.getParameter("title"));
		vo.setPrice(Integer.parseInt(multi.getParameter("price")));
		vo.setDirector(multi.getParameter("director"));
		vo.setActor(multi.getParameter("actor"));
		vo.setPoster(multi.getFilesystemName("poster"));
		vo.setSynopsis(multi.getParameter("synopsis"));
		
		MovieDAO dao = MovieDAO.getInstance();
		dao.add(vo);
		
		response.sendRedirect("list.do");
	}

}
