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
		
		
		<%-- Cr�e un objet de type String --%>
		<c:set scope="session" var="description" value="Je suis une loutre." />
		
		<%-- Cr�e un objet du type du bean ici sp�cifi� dans l'attribut 'value'--%>
		<c:set scope="session" var="tonBean" value="${monBean}" />
		
		
		<!-- ATTENTION BLOQUAGE DEUX HEURES  -->
		<!-- Initialisation d'un bean de type Coyote avec une action standard, pour l'exemple : -->
         <jsp:useBean id="coyote" class="com.sdzee.beans.Coyote" />

		<c:set target="${coyote}" property="nom" value="Younes"/>
		
		
		<%-- Supprime la variable "maVariable" de la session --%>
		<c:remove var="maVariable" scope="session" />
		
		
		<c:if test="${ 12 > 7 }" var="monTest" scope="session">
    	Ce test est vrai.
		</c:if>
		
		
		<c:choose>
		    <c:when test="${ 12 < 7 }">Action ou texte.</c:when>
		    <c:otherwise>Autre action ou texte.</c:otherwise>
		</c:choose>


		<%-- Boucle calculant le cube des entiers de 0 � 7 et les affichant dans un tableau HTML --%>
		<table>
		  <tr>
		    <th>Valeur</th>
		    <th>Cube</th>
		  </tr>
		
		<c:forEach var="i" begin="0" end="7" step="1">
		  <tr>
		    <td><c:out value="${i}"/></td>
		    <td><c:out value="${i * i * i}"/></td>
		  </tr>
		</c:forEach>
		
		</table>

	</body> 
 </html> 