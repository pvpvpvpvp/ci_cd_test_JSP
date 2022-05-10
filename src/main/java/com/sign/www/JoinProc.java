package com.sign.www;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;
import org.bit.conan.MembersDTO;

/**
 * Servlet implementation class JoinProc
 */
@WebServlet("/JoinProc.do")
public class JoinProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinProc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost Active _JoinProc.do_");
		try {
			InitialContext ic = new InitialContext();
			DataSource ds =(DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
			Connection conn = ds.getConnection();
		    // 4. sql 쿼리문을 실행하기 위한 객체 생성
		    String strInsert = "INSERT INTO member(user_id,user_pwd,address,email,phone,user_name)\r\n" +
	                    " VALUES(?,?,?,?,?,?)";
		    PreparedStatement pstmt = conn.prepareStatement(strInsert);
		    pstmt.setString(1, request.getParameter("userId"));
		    pstmt.setString(2, request.getParameter("userPwd"));
		    pstmt.setString(3, request.getParameter("address"));
		    pstmt.setString(4, request.getParameter("email"));
		    pstmt.setString(5, request.getParameter("phone"));
		    pstmt.setString(6, request.getParameter("userName"));
		    int cnt = pstmt.executeUpdate();
		    pstmt.close(); conn.close();
		    RequestDispatcher rd;
		    if(cnt==1){
		    	rd = request.getRequestDispatcher("/servlet/login/joinResult.jsp?cnt=1");
				
		    }else{
		    	rd = request.getRequestDispatcher("/servlet/login/joinResult.jsp?cnt=0");
		    }
		    rd.forward(request, response);
		    
		}catch (Exception e) {
			System.err.println(e);
		}
		
		
	}

}
