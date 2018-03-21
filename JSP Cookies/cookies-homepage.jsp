<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
	<%
		// the default...if there are no cookies 
		String favLang = "Java";
	
		//get the cookies from  the browser request
		Cookie[] theCookies = request.getCookies();
		
		//find our favorite Language cookie
		if(theCookies!=null){
			for(Cookie tempCookie : theCookies){
				if("myApp.favoriteLanguage".equals(tempCookie.getName())){
					favLang = tempCookie.getValue();
				}
				
			}
		}
	
	%>
	<!-- now show personalized page -->
	<!-- show the new books for this language  -->
	<h4>New books for <%=favLang %></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	
	<h4>Latest news for <%=favLang %></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	
	</ul><h4>Hot jobs for <%=favLang %></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>

</body>
</html>