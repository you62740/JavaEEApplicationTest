<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Formulaire Apprentissage</title>
</head>
<body>

<c:if test="${!empty nom}">
<p><c:out value="Bonjour, ton nom est ${param.nom}"/></p>
</c:if>

	<form method="post" action="toto">
		<label for="name">Nom: </label>
		<input type="text" id="nom" name="nom"/>
		<input type="submit" name="submit"/>
	
	</form>
</body>
</html>