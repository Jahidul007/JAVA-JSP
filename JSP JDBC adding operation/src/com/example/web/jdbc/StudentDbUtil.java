package com.example.web.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;


public class StudentDbUtil {

	private DataSource dataSource;

	public StudentDbUtil(DataSource theDataSource) {
		dataSource = theDataSource;
	}

	public List<Student> getStudents() throws Exception {

		List<Student> students = new ArrayList<>();

		// get a connection to the database
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;

		try {

			myConn = dataSource.getConnection();

			// create a sql statement
			String sql = "select * from student";
			myStmt = myConn.createStatement();
			// execute sql query
			myRs = myStmt.executeQuery(sql);
			// process the result set
			while (myRs.next()) {

				// retrieve data from result set row
				int id = myRs.getInt("id");
				String firstname = myRs.getString("first_name");
				String lastname = myRs.getString("last_name");
				String email = myRs.getString("email");

				// create new student object
				Student tempStudent = new Student(id, firstname, lastname, email);

				// add it to the list of students
				students.add(tempStudent);

			}
			return students;

		} finally {
			// close JDBC objects
			close(myConn, myStmt, myRs);
		}

	}

	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
		// TODO Auto-generated method stub
		try {
			if (myRs != null)
				myRs.close();
			if (myStmt != null)
				myStmt.close();
			if (myConn != null)
				myConn.close();

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	public void addStudent(Student theStudent) throws Exception {
		Connection myCon =null;
		PreparedStatement myStmt=null;
		try {
			//get db connection
			myCon = dataSource.getConnection();
			
			//create sql for insert
			String sql = "insert into student "+"(first_name,last_name,email)"+"values(?,?,?)";
			myStmt =myCon.prepareStatement(sql);
			
			//set the param values for the statement 
			myStmt.setString(1, theStudent.getFirstname());
			myStmt.setString(2, theStudent.getLastname());
			myStmt.setString(3, theStudent.getEmail());
			
			//execute sql insert
			myStmt.execute();
			
		} finally {
			// TODO: handle finally clause
			//clean up JDBC objects
			close(myCon,myStmt,null);
		}
		
	}
}
