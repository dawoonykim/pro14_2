<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%
request.setCharacterEncoding("utf-8");
/* String id = (String) request.getAttribute("id");
String pwd = (String) request.getAttribute("pwd");
String name = (String) session.getAttribute("name");
String email = (String) application.getAttribute("email"); */
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${bean1.id }
${bean1.pwd }
${bean1.name }
${bean1.email }
<hr>
${bean2.id }
${bean2.pwd }
${bean2.name }
${bean2.email }
<hr>
${list[0].id }
${list[0].pwd }
${list[0].name }
${list[0].email }
<hr>
${list[1].id }
${list[1].pwd }
${list[1].name }
${list[1].email }
</body>
</html>