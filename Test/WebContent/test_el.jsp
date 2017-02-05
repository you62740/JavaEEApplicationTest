<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test avec expressions EL</title>
    </head>
    <body>
    <p>
        <!-- Initialisation d'un bean de type Coyote avec une action standard, pour l'exemple : -->
        <jsp:useBean id="coyote" class="com.sdzee.beans.Coyote" />
        <!-- Initialisation de sa propriété 'prénom' : -->
        <jsp:setProperty name="coyote" property="prenom" value="Wile E."/>
        <!-- Et affichage de sa valeur : -->
        ${ coyote.prenom }<br>
        <!-- Comparaison d'égalité entre la propriété prenom et la chaîne "Jean-Paul" -->
		${ coyote.prenom == "Jean-Paul" }<br>
		
		<!-- Vérification si la propriété prenom est vide ou nulle -->
		${ empty coyote.prenom }<br>
		
		<!-- Condition ternaire qui affiche la propriété prénom si elle n'est ni vide ni nulle, et la chaîne "Veuillez préciser un prénom" sinon -->
		${ !empty coyote.prenom ? coyote.prenom : "Veuillez préciser un prénom" }<br>
		        
    </p>
    </body>
</html>