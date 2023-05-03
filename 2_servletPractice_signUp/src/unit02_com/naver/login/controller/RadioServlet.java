package unit02_com.naver.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/radio")
public class RadioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html; charset=utf-8");
		
		String gender = request.getParameter("gender");
		String ad = request.getParameter("ad");
		String con = request.getParameter("content");
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<meta charset=\"utf-8\">");
		out.print("<title>바꾼 title</title>");
		out.print("</head>");
		out.print("<body>");
		
		out.print("입력한 내용 <br>");
		out.print("성별: " + gender + "<br>");
		out.print("광고 수신 여부: " + ad + "<br>");
		out.print("자기소개 <br>");
		out.print("<pre>" + con + "</pr>");
		
		out.print("</body>");
		out.print("</html>");
		
		out.close();
		
	}

}
