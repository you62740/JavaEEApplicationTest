<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test des expressions EL</title>
    </head>
    <body>
    <p>
        <% 
    	/* Création d'une liste de légumes et insertion de quatre éléments */
    	java.util.List<String> legumes = new java.util.ArrayList<String>();
        legumes.add( "poireau" );
        legumes.add( "haricot" );
        legumes.add( "carotte");
        legumes.add( "pomme de terre" );
        request.setAttribute( "legumes" , legumes );
        %>

        <!-- Les quatre syntaxes suivantes retournent le deuxième élément de la liste de légumes  -->
        ${ legumes.get(1) }<br />
        ${ legumes[1] }<br />
        ${ legumes['1'] }<br />
        ${ legumes["1"] }<br />
    </p>
    </body>
</html>