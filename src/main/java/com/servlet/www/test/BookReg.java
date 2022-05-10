package com.servlet.www.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bit.conan.BookBean;

/**
 * Servlet implementation class BookReg
 */
@WebServlet("/BookReg")
public class BookReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookReg() {
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
		System.out.println("doPost 호출");
		BookBean book = new BookBean(Integer.parseInt(request.getParameter("bookid")), request.getParameter("title").toString(),
								request.getParameter("publisher").toString(), Integer.parseInt(request.getParameter("price")));
		request.setAttribute("book", book);
		RequestDispatcher rd = request.getRequestDispatcher("/servlet/book/bookResult.jsp");
		rd.forward(request, response);
	}

}
