<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,sec01.ex02.MemberBean"%>
<%
request.setCharacterEncoding("utf-8");
List list =new ArrayList();
MemberBean bean1=new MemberBean("lee", "1234","이순신","lee@under.see");
MemberBean bean2=new MemberBean("son", "1234","손흥민","son@test.com");
list.add(bean1);
list.add(bean2);
request.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward1</title>
</head>
<body>
<jsp:forward page="member3.jsp"></jsp:forward>
</body>
</html>