package com.example.web.jdbc;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class StudentControllerServlet
 */
@WebServlet("/StudentControllerServlet")
public class StudentControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StudentDbUtil studentDbUtil;

	@Resource(name = "jdbc/web_student_tracker")
	private DataSource dataSource;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();

		// create our student db util

		try {
			studentDbUtil = new StudentDbUtil(dataSource);

		} catch (Exception e) {
			// TODO: handle exception
			throw new ServletException(e);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			// read the "command" parameter
			String theCommand = request.getParameter("command");

			// if the command is missing .... then default to list students
			if (theCommand == null) {
				theCommand = "LIST";
			}

			// route to the appropriate method
			switch (theCommand) {
			case "List":
				listStudents(request, response);
				break;

			case "Add":
				addStudent(request, response);
				break;

			default:
				listStudents(request, response);
				break;
			}


		} catch (Exception e) {
			// TODO: handle exception
			throw new ServletException(e);
		}

	}

	private void addStudent(HttpServletRequest request, HttpServletResponse response) throws Exception {

		//read student information from form data
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		
		//crate new student object
		Student theStudent = new Student(firstname, lastname, email);
		
		//add the student to the database 
		studentDbUtil.addStudent(theStudent);
		
		//send back to the main page (student-list)
		listStudents(request, response);
		
		 

	}

	private void listStudents(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		// get students from db util
		List<Student> students = studentDbUtil.getStudents();

		// add students to the request
		request.setAttribute("Student_list", students);
		// send to jsp page

		RequestDispatcher dispatcher = request.getRequestDispatcher("/list-students.jsp");
		dispatcher.forward(request, response);
	}

}
