<html>

<head>
<title>Student Confirmation Title</title>
</head>

<body>

	The student is confirmed:
	<%=request.getParameter("firstName").toUpperCase()%>
	<%=request.getParameter("lastName").toUpperCase()%>
	<br/>
	<br/>
	The student country name: <%=request.getParameter("country")%>

</body>
</html>