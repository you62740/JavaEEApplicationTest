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

<c:if test="${!empty form.resultat}">
<p><c:out value="${form.resultat}"/></p>
</c:if>

	<form method="post" action="toto">
		<p>
		<label for="login">Nom: </label>
		<input type="text" id="login" name="login"/>
		</p>
		
		<p>
		<label for="psswd">Password: </label>
		<input type="password" id="psswd" name="psswd"/>
		</p>
		
		<input type="submit" name="submit"/>
	
	</form>
</body>
</html>