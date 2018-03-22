<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String[] cities={"DHAKA","CTG","NEW YORK"};

	pageContext.setAttribute("myCities", cities);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL TAG</title>
</head>
<body>
	<c:forEach var="tempCity" items="${ myCities}">
	${ tempCity}<br/>
	</c:forEach>
</body>
</html>