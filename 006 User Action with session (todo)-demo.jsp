<%@ page import="java.util.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- step 1: create HTML form -->
<form action="todo-demo.jsp">
 	Add new item: <input type="text" name= "TheItem"/>
	<input type="submit" value= "Submit"/>
</form>
<!-- step 2: Add new item to "todo"  list -->  
<%
	// get the todo items from the session 
	List<String> items = (List<String>) session.getAttribute("myTodoList");
	
	//if the to do items doesn't exist,themn create a new one 
	
	if(items == null){
		items = new ArrayList<String>();
		session.setAttribute("myTodoList", items);
	}
	//see if there is form data to add
	String TheItem = request.getParameter("TheItem");
	if(TheItem != null){
	items.add(TheItem);
	}
%>
<!-- step 3: Display all "todo" item from session -->
<hr>
<b>Todo List Items:</b><br/>
<ol>
<%
    for (String temp: items){
	    out.println("<li>"+temp+"</li>");
     }
%>
</ol>
</body>
</html>