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
import java.sql.*;
import javax.sql.*;
import javax.naming.*;
import org.bit.conan.MembersDTO;

/**
 * Servlet implementation class UpdateProc
 */
@WebServlet("/UpdateProc.do")
public class UpdateProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		try {
			InitialContext ic = new InitialContext();
			DataSource ds =(DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
			Connection conn = ds.getConnection();
			PreparedStatement pstmt;
		    String userid = session.getAttribute("userId").toString();
		    String sql = "SELECT * FROM MEMBER WHERE user_id='"+userid+"'";
		    pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			MembersDTO m = new MembersDTO();
			String date ="";
			while(rs.next()){
				m.setUserId(rs.getString(2));
				m.setUserPwd(rs.getString(3));
				m.setAddress(rs.getString(4));
				m.setEmail(rs.getString(5));
				date=rs.getString(6);
				m.setPhone(rs.getString(7));
				m.setUserName(rs.getString(8));
			}
			request.setAttribute("date", date);
			request.setAttribute("m", m);
			rs.close(); pstmt.close(); conn.close();
		}catch (Exception e) {
			System.err.println(e);
		}
		RequestDispatcher rd = request.getRequestDispatcher("/servlet/login/updateFrm.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("doPost Active _UpdateProc_");
		HttpSession session = request.getSession(true);
		try {
			InitialContext ic = new InitialContext();
			DataSource ds =(DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
			Connection conn = ds.getConnection();
			String userId = session.getAttribute("userId").toString();
			 /*업데이트 적기!*/
		    String strUpdate = "UPDATE MEMBER SET "+
		    	" user_id =?, user_pwd=?, user_name=?, phone=?,"+
		    	" address=?, email=?"+
		    	" WHERE user_id='"+userId+"'";
		    PreparedStatement pstmt = conn.prepareStatement(strUpdate);
		    
		    pstmt.setString(1, request.getParameter("userId"));
		    pstmt.setString(2, request.getParameter("userPwd"));
		    pstmt.setString(5, request.getParameter("address"));
		    pstmt.setString(6, request.getParameter("email"));
		    pstmt.setString(4, request.getParameter("phone"));
		    pstmt.setString(3, request.getParameter("userName"));
		    int cnt = pstmt.executeUpdate();
		    boolean updateSuccess = cnt>=1?true:false;
		    pstmt.close(); conn.close();
		    if(updateSuccess)
		    {
		    	RequestDispatcher rd = request.getRequestDispatcher("/servlet/login/updateResult.jsp");
				rd.forward(request, response);
		    }
		}catch (Exception e) {
			System.err.println(e);
		}
		
	}

}
