package com.example.web.jdbc;

import java.sql.Connection;
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
}
