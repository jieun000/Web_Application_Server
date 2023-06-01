package com.study.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.study.dao.MemberDAO;
import com.study.vo.MemberVO;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
		dispatcher.forward(request, response);
		
}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/login.jsp"; //로그인 실패시 이동할 페이지
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = MemberDAO.getInstance();
		
		//여기는 dao에서 로그인 인증처리하는 메서드를 호출
		// 1 : 로그인성공 0 : 비번 틀림 -1 : 아이디 틀림
		int result = dao.userCheck(id, pw);
		
		if(result == 1) {
			//로그인 성공 세션에 회원정보 등록
			MemberVO vo = dao.getMember(id);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", vo);
			url = "main.jsp"; // 로그인 성공시 이동할 페이지
			
		} else if(result == 0) {
			//비번틀렸음 이라는 메세지 같은거
			request.setAttribute("msg", "비밀번호가 틀렸습니다.");
		} else {
			//아이디가 틀렸음 이라는 메세지
			request.setAttribute("msg", "아이디가 틀렸습니다.");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
