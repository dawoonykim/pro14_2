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
${bean.id }
${bean.pwd }
${bean.name }
${bean.email }
</body>
</html>