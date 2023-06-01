package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sample")
public class b_sample extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// 바이너리, 바이트 형식으로 출력/입력을 할 게 아니라 문자 PrinterStream 사용
// PrintStream은 문자(다국어) 사용하기 번거로움
// PrintWriter를 사용
		
// 웹서버 출력
		PrintWriter out = response.getWriter();
		out.print("<h1>hello doget</h1>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// 콘솔창 출력
		System.out.println("dopost 호출");
	}

}
