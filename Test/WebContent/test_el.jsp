<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test</title>
    </head>
    <body>
        <p>Ceci est une page générée depuis une JSP.</p>
        <p>
        <!-- Initialisation d'un bean de type Coyote avec une action standard, pour l'exemple : -->
         <jsp:useBean id="coyote" class="com.sdzee.beans.Coyote" />
         <!-- Initialisation de sa propriété 'prénom' : -->
         <jsp:setProperty name="coyote" property="prenom" value="Younes"/>
                  <jsp:setProperty name="coyote" property="nom" value="ElOuahmani"/>
            ${param.auteur}
        </p>
        <p>
            Récupération du bean :
            ${coyote.prenom}
            ${coyote.nom}
        </p>
    </body>
</html>