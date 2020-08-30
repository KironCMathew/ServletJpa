package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.Dao;
import com.model.Book;
import com.model.Library;



/**
 * Servlet implementation class SaveController
 */
public class SaveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Dao dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveController() {
    	this.dao= new Dao();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bookName = request.getParameter("bookName");
		String bookId = request.getParameter("bookId");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String libraryName = request.getParameter("libraryName");
		String libraryId = request.getParameter("libraryId");
		
		Book book = new Book(bookId,bookName,author,publisher);
		Library library = new Library(libraryId, libraryName);
		book.setLibrary(library);
		dao.insertBook(book);
		
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
	    rd.forward(request, response);
	}

}
