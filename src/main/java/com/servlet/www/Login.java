package com.servlet.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/paramEx")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet 호출");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<h1>로그인 폼</h1>");
		out.print("<form action='paramEx' method='POST'> "
				+ "아이디 :	<input type='text' name='userId'><br/>"
				+ "비밀번호 : 	<input type='text' name='userPwd'><br/>"
				+ "	<input type='submit' name='로그인'>"
				+ " </form>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 호출");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<h1>전달 받은 값 출력</h1>");
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		out.print("userId : "+userId+"<br/>");
		out.print("userPwd : "+userPwd);
		out.close();
	}

}
