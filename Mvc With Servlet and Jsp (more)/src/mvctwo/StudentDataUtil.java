package com.example.servletdemo.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {
	public static List<student> getStudent(){
		
		//create an empty list
		List<student> students = new ArrayList<>();
		//add sample data 
		students.add(new student("Mary","Public","mary@gmail.com"));
		students.add(new student("Sarby","chad","Sarby@gmail.com"));
		students.add(new student("Joe","Mow","joe@gmail.com"));
		students.add(new student("Larry","carl","larry@gmail.com"));
		return students;
		
	}

}
