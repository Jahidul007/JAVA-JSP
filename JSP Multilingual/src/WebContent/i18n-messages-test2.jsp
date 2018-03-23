<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="theLocale"
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale }"
scope = "session"/>

<fmt:setLocale value ="${theLocale}" /> 

<fmt:setBundle basename="tagdemo.jsp.jstl.i18n.resource.myLabels"/>
<html>

<body>
	<a href="i18n-messages-test2.jsp?theLocale=en_US">English (US)</a>
	|
	<a href="i18n-messages-test2.jsp?theLocale=es_ES">Spanish (ES)</a>
	|
	<a href="i18n-messages-test2.jsp?theLocale=de_DE">German (DE)</a>
	<hr>
	<fmt:message key="label.greeting"/> <br/> <br/>
	
	<fmt:message key="label.firstname"/> <i>Jahid</i> <br/>
	
	<fmt:message key="label.lastname"/> <i>Hasan</i><br/><br/>
	
	<fmt:message key="label.welcome"/> <br/><br/>	
</body>
</html>
