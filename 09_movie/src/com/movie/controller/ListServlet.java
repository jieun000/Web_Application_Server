package com.movie.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.movie.dao.MovieDAO;
import com.movie.vo.MovieVO;

@WebServlet("/list.do")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieDAO dao = MovieDAO.getInstance();
		List<MovieVO> list = new ArrayList<>();
		
		list = dao.listAll();
		request.setAttribute("movies", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("movieList.jsp");
		rd.forward(request, response);
//		request.getRequestDispatcher("movieList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
