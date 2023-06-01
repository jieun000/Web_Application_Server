package test.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Mvc")
public class SpaMvc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		String result;
		
		if(num % 2 == 0) {
			result = "짝수";
		} else {
			result = "홀수";
		}
		// result 전송을 위해 추가 ("뽑아오기", 저장변수)
		request.setAttribute("result", result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("mvc2.jsp");
		dispatcher.forward(request, response);

	}
	
}
