<html>

<head>
<title>Student Confirmation Title</title>
</head>

<body>

	The student is confirmed:
	<%=request.getParameter("firstName")%>
	<%=request.getParameter("lastName")%>
	<br />
	<br /> The student's favorite programming Languages:
	
	<ul>
		<%
			String[] langs = request.getParameterValues("favoriteLanguage");
			for(String templang : langs){
				out.println("<li>"+templang+"</li>");
				
			}
		%>
	</ul>


</body>
</html>