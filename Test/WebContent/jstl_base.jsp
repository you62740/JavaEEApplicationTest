 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <html>
 	<head>
 		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 		<title>Test</title>
 	</head>
 	<body>
 		
 		<%-- Exemple d'utilisation pour l'attribut default --%>
		<c:out value="test" /> <%-- Affiche test --%>
		<c:out value="${bean}" /> <%-- Affiche rien --%>
		
		<%-- Exemple d'utilisation pour l'attribut default --%>
		<c:out value="${bean}" default="test" />
		
		<%-- Exemple d'utilisation pour l'attribut escapeXml avec et sans --%>
		<c:out value="<p>Je suis un 'paragraphe'.</p>" escapeXml="false"/>
		<c:out value="<p>Je suis un 'paragraphe'.</p>"/>
		
		<%-- Cette balise met l'expression "Salut les z�ros !" dans l'attribut "message" de la requ�te : --%>
		<c:set var="message" value="Salut les z�ros !" scope="request" />
		<br><br>
		
		<%-- Affiche l'expression contenue dans la variable "message" de la requ�te --%>
		<c:out value="${requestScope.message}" />
		
		<c:set var="locale" scope="session">
   			<c:out value="${param.lang}" default="FR"/>
		</c:set>
		
		<c:out value="${locale}" />
		
	</body> 
 </html> 