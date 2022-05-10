package com.servlet.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bit.conan.MembersDTO;

import dao.MemberDAO;

/**
 * Servlet implementation class MemberService
 */
@WebServlet("/MemberService")
public class MemberService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberService() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO dao = MemberDAO.getInstance();
		try {
			ArrayList<MembersDTO> arrayList = dao.selectMemberAll();
			request.setAttribute("members", arrayList);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/servlet/view/memberSelectAll.jsp");
			rd.forward(request, response);
			MembersDTO dto = dao.selectMember("qwer");
			System.out.println(dto);
			System.out.println("insertC : "+dao.insertMember(dto));
			System.out.println("updateC : "+dao.updateMember(dto));
			System.out.println("deleteC : "+dao.deleteMember("${userId}"));
			System.out.println(request.getContextPath());
		} catch (SQLException | NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println(e);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
