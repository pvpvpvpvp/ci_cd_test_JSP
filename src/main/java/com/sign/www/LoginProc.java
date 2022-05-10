package com.sign.www;

import java.io.IOException;
import java.sql.Connection;

import javax.naming.InitialContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import javax.websocket.Session;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;

/**
 * Servlet implementation class LoginProc
 */
@WebServlet("/LoginProc.do")
public class LoginProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginProc() {
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
		System.out.print("doPost Active _LoginProc_\n"); 
		HttpSession session = request.getSession(true);
		try {	
			String userId = request.getParameter("userId");
			String userPwd = request.getParameter("userPwd"); 
			InitialContext ic = new InitialContext();
			DataSource ds =(DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
			Connection conn = ds.getConnection();
			
			String sql = "SELECT * FROM MEMBER WHERE user_id='"+userId+"'"+
					" AND user_pwd='"+userPwd+"'";
		    PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			boolean rsIsEmpty = rs.next();
		    
		    
		    rs.close(); pstmt.close(); conn.close();
		    	
			if(session.isNew()|| session.getAttribute("userId")==null&&rsIsEmpty){
				session.setAttribute("userId", userId);
			}
			 RequestDispatcher rd = request.getRequestDispatcher("/servlet/login/loginResult.jsp");
			 rd.forward(request, response);
		}catch (Exception e) {
			System.err.println(e);
		}
	}

}
