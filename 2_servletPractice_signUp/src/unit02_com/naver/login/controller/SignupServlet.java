package unit02_com.naver.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/join")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		out.print("이름: " + name + "<br>");
		
		int j1 = Integer.parseInt( request.getParameter("jumin1") );
		int j2 = Integer.parseInt( request.getParameter("jumin2") );
//		String jumin = j1 + "-" + j2;
		out.print("주민번호: " + j1 + "-" + j2 + "<br>");
		
		String id = request.getParameter("id");
		out.print("아이디: " + id + "<br>");
		String pw = request.getParameter("pw");
		out.print("비밀번호: " + pw + "<br>");
		
		String email = request.getParameter("email");
		if( request.getParameter("email_dn") == "") {
			email += "@" + request.getParameter("emailadder");
//			email = email + "@" + request.getParameter("emailadder");
		} else {
			email += "@" + request.getParameter("email_dn");
		}
		out.print("이메일: " + email + "<br>");
		
		String zip = request.getParameter("zip");
		out.print("우편번호: " + zip + "<br>");
		String addr = request.getParameter("addr1") + " " + request.getParameter("addr2");
		out.print("주소: " + addr + "<br>");
		
		String phone = request.getParameter("phone");
		out.print("핸드폰 번호: " + phone + "<br>");
		
		String job = request.getParameter("job");
		out.print("직업: " + job + "<br>");
		
		String mail_rcp = request.getParameter("mail_rcp");
		out.print("메일/SMS 수신 여부: " + mail_rcp + "<br>");
		
		String[] interests = request.getParameterValues("interest");
		if(interests == null) {
			out.print("관심 분야가 없습니다. ");
		} else {
			out.print("관심 분야: ");
			for(String itt : interests) {
				out.print(itt + " ");
			}
		}
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
