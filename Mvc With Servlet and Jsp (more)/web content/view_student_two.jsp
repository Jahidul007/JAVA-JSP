<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mvc With jsp and servlet</title>
</head>
<body> 
<h2>Student Table Demo</h2>
<hr>
<br/>

<table border="1">
	<tr>
		<th>First name</th>
		<th>Last name</th>
		<th>Email</th>
	</tr>
	<c:forEach var="tempStudent" items="${student_list}">
	
	<tr>
		<td>${tempStudent.firstname}</td>
		<td>${tempStudent.lastName}</td>
		<td>${tempStudent.email}</td>
	</tr>	
	</c:forEach>
</table>
</body>
</html>