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
	Langue : ${paramValues.langue[1]}
	<br />
	Article : ${ param.article }
    </p>
    </body>
</html>