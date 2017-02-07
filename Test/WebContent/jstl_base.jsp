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
		
		<%-- Cette balise met l'expression "Salut les zéros !" dans l'attribut "message" de la requête : --%>
		<c:set var="message" value="Salut les zéros !" scope="request" />
		<br><br>
		
		<%-- Affiche l'expression contenue dans la variable "message" de la requête --%>
		<c:out value="${requestScope.message}" />
		
		<c:set var="locale" scope="session">
   			<c:out value="${param.lang}" default="FR"/>
		</c:set>
		
		<c:out value="${locale}" />
		
		
		<%-- Crée un objet de type String --%>
		<c:set scope="session" var="description" value="Je suis une loutre." />
		
		<%-- Crée un objet du type du bean ici spécifié dans l'attribut 'value'--%>
		<c:set scope="session" var="tonBean" value="${monBean}" />
		
		
		<!-- ATTENTION BLOQUAGE DEUX HEURES  -->
		<!-- Initialisation d'un bean de type Coyote avec une action standard, pour l'exemple : -->
         <jsp:useBean id="coyote" class="com.sdzee.beans.Coyote" />

		<c:set target="${coyote}" property="nom" value="Younes"/>
		
		


	</body> 
 </html> 