package com.movie.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.movie.dao.MovieDAO;
import com.movie.vo.MovieVO;

@WebServlet("/detail.do")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int code = Integer.parseInt(request.getParameter("code"));
		
		MovieDAO dao = MovieDAO.getInstance();
		MovieVO vo = new MovieVO();
		vo = dao.detail(code);
		// MovieVO vo = dao.detail(code);
		
		request.setAttribute("detail", vo);
		
		request.getRequestDispatcher("movieDetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
