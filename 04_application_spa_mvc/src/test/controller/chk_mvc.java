package test.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chk")
public class chk_mvc extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		int age = Integer.parseInt(request.getParameter("age"));
		String r_id;
		String r_age;
		
		if(id.equals("user")) {
			r_id = "사용자";
		} else if(id.equals("admin")) {
			r_id = "관리자";
		} else {
			r_id = "비회원";
		}
		// System.out.print((age / 10) + "0대");
		r_age = (age / 10) + "0대";
		
		request.setAttribute("r_id", r_id);
		request.setAttribute("r_age", r_age);
		RequestDispatcher dispatcher = request.getRequestDispatcher("mvc.jsp");
		dispatcher.forward(request, response);
	
//		if(id.equals("user")) {
//			request.setAttribute("r_id", "사용자");
//		} else if(id.equals("admin")) {
//			request.setAttribute("r_id", "관리자");
//		} else {
//			request.setAttribute("r_id", "비회원");
//		}
	}

}
