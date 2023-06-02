package smtp_메일송수신프로토콜;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.nio.cs.ext.MacArabic;

@WebServlet("/send.do")
public class SendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String to = request.getParameter("to");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		String msg;
		
		Mail_G mail = new Mail_G();
		
		int result = mail.sendMail(to, subject, content);
		if(result == 1) {
			msg = "메일 전송 성공";
		} else {
			msg = "메일 전송 실패";
		}
		
		request.setAttribute("msg", msg);
		
		RequestDispatcher rd = request.getRequestDispatcher("sendMail.jsp");
		rd.forward(request, response);
	}

}
