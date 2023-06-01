package unit02_com.naver.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chk")
public class CheckboxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
//		request.getParameter(("line")은 하나만 잡아주기 때문에 안 됨
		String[] lines = request.getParameterValues("line");
		int t = 0;		
		String t_tmp = request.getParameter("t");
		
//		if(request.getParameter("t")=="")
//		if(t_tmp == "")
		if(t_tmp.equals(""))
			out.print("안 씀");
		else
//			t = Integer.parseInt(request.getParameter(t));
			t = Integer.parseInt(t_tmp);
		
//		향상된 for문
//		for(String line : lines) {
//			System.out.println(line);
//		}
//		그냥 반복문
//		for(int i=0; i<lines.length; i++) {
//			System.out.println(lines[i]);
//		}
		out.print(t_tmp + "<br>");
		
		if(lines == null) {
			out.print("선택된 라인이 없습니다. ");
		} else {
			out.print("==선택한 라인==<br>");
			for(String line : lines) {
				out.print(line + "<br>");
			}
		}
		
	}

}
