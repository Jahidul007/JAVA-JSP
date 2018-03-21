<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>TEST</title>
</head>
<body>
<c:set var ="stuff" value="<%= new java.util.Date() %>" />
Time on server is: ${stuff}

</body>
</html>