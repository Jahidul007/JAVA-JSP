<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Student Tracker App</title>

    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>
	<div id="wrapper">
		<div id ="header">
			<h2>Ting Tong University</h2>
		</div>
	</div>	
	
	<div id="container">
	 <!-- put new button : add student  -->
		<div id="content">
			<input type= "button" value="Add Student" 
					onclick="window.location.href='add-student-form.jsp'; return false;"
					class="add-student-button"
			/>
			<table>
				<tr>
					<th>First Name</th> 
					<th>Last Name</th>
					<th>Email</th>
				</tr>
				<c:forEach var="tempStudent" items="${Student_list }">
				<tr>
					<td>${tempStudent.firstname}</td>
					<td>${ tempStudent.lastname}</td>
					<td>${ tempStudent.email}</td>
				</tr>
			    </c:forEach>
			</table>
		</div>
	</div>
</body>
</html>