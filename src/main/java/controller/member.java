package controller;

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
 * Servlet implementation class member
 */
@WebServlet("*.action")
public class member extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public member() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			actionDo(request, response);
		} catch (ServletException | IOException | SQLException | NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public void actionDo(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException, SQLException, NamingException {
		
		String url = request.getRequestURI(); 
		String ctxPath = request.getContextPath();
		String cmd = url.substring(ctxPath.length());
		System.out.println("url : "+url+" Path : "+ctxPath+" cmd : "+cmd);
		RequestDispatcher rd = null;
		if(cmd.equals("/member/login.action")) {
			rd = getServletContext().getRequestDispatcher("/servlet/view/loginFrm.jsp");
		}
		if(cmd.equals("/member/insert.action")) {
			rd = getServletContext().getRequestDispatcher("/servlet/view/joinFrm.jsp");
		}
		if(cmd.equals("/member/select.action")) {
			System.out.println("select");
			
		}
		if(cmd.equals("/member/update.action")) {
			System.out.println("update");
		}
		if(cmd.equals("/member/delete.action")) {
			System.out.println("delete");
		}
		if(cmd.equals("/member/selectAll.action")) {
			MemberDAO dao = MemberDAO.getInstance();
			ArrayList<MembersDTO> arrayList = dao.selectMemberAll();
			request.setAttribute("members", arrayList);
			rd = getServletContext().getRequestDispatcher("/servlet/view/memberSelectAll.jsp");
		}
		rd.forward(request, response);
	}
	

}
