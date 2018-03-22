<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*,tagdemo.jsp.jstl.Student" %>
<%
	//just create some sample data ...normally provided by mvc
	List<Student> data = new ArrayList<>();

	data.add(new Student("Jahid","Hasan",false));
	data.add(new Student("Jahir","Hasan",true));
	data.add(new Student("Jihad","Hasan",false));
	data.add(new Student("Saifur","Hasan",true));
	
	pageContext.setAttribute("myStudents", data);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Student</th>
	</tr>
	<c:forEach var="tempStudent" items="${myStudents}">
	<tr>
		<td>${tempStudent.firstName }</td>
		<td>${tempStudent.lastName }</td>
		<td>
		<c:if test="${tempStudent.goldStudent }">
		Special discount
		</c:if>
		<c:if test="${not tempStudent.goldStudent }">
		--------------
		</c:if>
		</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>