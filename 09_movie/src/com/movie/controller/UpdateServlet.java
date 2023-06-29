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

@WebServlet("/update.do")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int code = Integer.parseInt(request.getParameter("code"));
		
		MovieDAO dao = MovieDAO.getInstance();
		MovieVO vo  = dao.detail(code);
		
		request.setAttribute("movie", vo);
		
		request.getRequestDispatcher("movieUpdate.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String saveDirectory = request.getServletContext().getRealPath("images");
		int size = 20 * 1024 * 1024; // 최대 크기
		
		MultipartRequest multi = new MultipartRequest(request, saveDirectory, size, "utf-8", new DefaultFileRenamePolicy());	
		int code = Integer.parseInt(multi.getParameter("code"));
		String title = multi.getParameter("title");
		int price = Integer.parseInt(multi.getParameter("price"));
		String director = multi.getParameter("director");
		String actor = multi.getParameter("actor");
		String poster = multi.getFilesystemName("poster");
		String synopsis = multi.getParameter("synopsis");
		
		MovieVO vo = new MovieVO();
		vo.setCode(code);
		vo.setTitle(title);
		vo.setPrice(price);
		vo.setDirector(director);
		vo.setActor(actor);
		vo.setPoster(poster);
		vo.setSynopsis(synopsis);
		
		MovieDAO dao = MovieDAO.getInstance();
		dao.update(vo);
		
		request.setAttribute("msg", "수정완료!");
		request.setAttribute("movie", vo);
		
		request.getRequestDispatcher("list.do").forward(request, response);
	
	}
		
	
}
