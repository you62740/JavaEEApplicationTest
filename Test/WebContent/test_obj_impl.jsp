<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test des objets implicites EL</title>
    </head>
    <body>
    <p>
	<% 
	String paramLangue = request.getParameter("langue");
	out.println( "Langue : " + paramLangue );
	%>
	<br />
	<%
	String paramArticle = request.getParameter("article");
	out.println( "Article : " + paramArticle );
	%>
    </p>
    </body>
</html>