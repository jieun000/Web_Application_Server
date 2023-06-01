package unit01;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/a_lifeCycle")
public class a_lifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	int initCnt = 1;
	int doGetCnt = 1;
	int destroyCnt = 1;
	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init메서드 호출: " + initCnt++); // 서버 호출시 ++
	}

	public void destroy() {
		System.out.println("destroy메서드 호출: " + destroyCnt++);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet메서드 호출: " + doGetCnt++); // 새로고침시++
}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
